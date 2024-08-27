struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = max(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~arg_1.a.a, ~vec2<u32>(4294967295u, 24017u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(83590u, 0u), countOneBits(arg_1.a.a), _wgslsmith_mod_vec2_u32(arg_1.c.a, vec2<u32>(9348u, u_input.d))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.d) ^ vec2<u32>(u_input.a, 3032u), _wgslsmith_add_vec2_u32(arg_1.a.a, arg_1.a.a))) & select(max(max(arg_1.a.a, vec2<u32>(u_input.d, arg_1.c.b)), ~arg_1.a.a), arg_1.a.a, arg_1.c.c.yy), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(~30302u, _wgslsmith_add_u32(48093u, arg_1.a.a.x))), _wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(arg_1.a.a, arg_1.c.a, vec2<u32>(arg_1.a.b, 1u)), vec2<u32>(4294967295u, reverseBits(100033u))), arg_1.a.a));
    var var_1 = Struct_1(vec2<u32>(4294967295u, 50540u), ~6826u, !vec4<bool>(arg_1.a.c.x, select(true, true, true), arg_1.a.c.x, true));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-826f, _wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(-arg_0), arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(abs(-1000f))))))));
    let var_3 = arg_1.a;
    var_1 = var_3;
    return _wgslsmith_f_op_f32(step(var_2.x, var_2.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_add_i32(firstLeadingBit(~u_input.c) | 20476i, 32030i), u_input.c);
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(u_input.c, firstTrailingBit(-u_input.c)), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -74581i), vec2<i32>(var_0, var_0))), 2147483647i, 0i) ^ _wgslsmith_clamp_vec4_i32(~(vec4<i32>(u_input.c, var_0, -7410i, u_input.c) | vec4<i32>(1i, u_input.c, var_0, 1i)) | -vec4<i32>(var_0, var_0, u_input.c, u_input.c), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-48672i, 2147483647i, 0i, -16121i), vec4<i32>(u_input.c, u_input.c, var_0, 0i) & vec4<i32>(-2147483647i, -2147483647i, u_input.c, 1i)), max(select(vec4<i32>(0i, 8333i, 2147483647i, u_input.c), vec4<i32>(var_0, 0i, u_input.c, -2147483647i), false) ^ ~vec4<i32>(var_0, 5703i, 639i, u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0, var_0, -43989i, var_0), vec4<i32>(var_0, 1i, 19481i, -11272i) | vec4<i32>(-67145i, 2147483647i, 2559i, var_0))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-651f, _wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(765f, 1346f)), arg_0.x))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-772f, 1000f, 515f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(559f)) + -599f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-834f)) - _wgslsmith_f_op_f32(abs(260f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1806f)), -1557f))))));
    let var_3 = arg_1;
    var_2 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(-153f, _wgslsmith_f_op_f32(var_2.x * 1757f), true)), Struct_2(arg_1, select(var_1.zz, var_1.wx, arg_1.c.xy), Struct_1(vec2<u32>(0u, u_input.b), 116695u, vec4<bool>(true, arg_0.x, arg_1.c.x, arg_1.c.x)), var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x)))))));
    return arg_1.c.x;
}

fn func_1() -> Struct_3 {
    var var_0 = any(select(vec3<bool>(all(vec2<bool>(true, true)), true, !select(true, true, false)), !vec3<bool>(any(vec3<bool>(false, true, true)), func_2(vec2<bool>(false, false), Struct_1(vec2<u32>(22331u, u_input.a), u_input.d, vec4<bool>(true, false, false, false))), true), true || all(vec2<bool>(true, true))));
    let var_1 = select(select(!select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), true), vec3<bool>(true, true, true), !vec3<bool>(true, false, select(false, true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, u_input.c > u_input.c), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), vec3<bool>(true, any(vec3<bool>(false, true, true)) && true, true), any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), any(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, true)), false), !select(vec2<bool>(false, false), vec2<bool>(false, false), false))));
    var_0 = 49737u >= reverseBits(max(_wgslsmith_sub_u32(countOneBits(u_input.a), 47918u | u_input.a), abs(39314u)));
    var var_2 = vec2<i32>(-29664i, reverseBits(countOneBits(~u_input.c))) | _wgslsmith_mod_vec2_i32(vec2<i32>(-(~u_input.c), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(46375i, u_input.c), u_input.c, u_input.c << (u_input.b % 32u))), abs(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 56241i), vec2<i32>(u_input.c, -3837i), vec2<i32>(2147483647i, -2147483647i)))));
    var var_3 = Struct_1(~firstTrailingBit(countOneBits(vec2<u32>(13444u, 1u))) & vec2<u32>(abs(~u_input.a), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, u_input.d)), vec2<u32>(50876u, 0u) >> (vec2<u32>(37420u, u_input.a) % vec2<u32>(32u)))), min(~u_input.d, ~11597u), select(select(select(!vec4<bool>(true, true, true, var_1.x), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, false, true, false), vec4<bool>(false, var_1.x, false, var_1.x)), vec4<bool>(false, true, var_1.x, true)), vec4<bool>(any(vec2<bool>(var_1.x, var_1.x)), true, all(vec3<bool>(true, var_1.x, var_1.x)), !var_1.x), !vec4<bool>(var_1.x, false, false, false)), !(!select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false, false, var_1.x, var_1.x))), vec4<bool>(true, !var_1.x, !all(vec2<bool>(var_1.x, var_1.x)), 4294967295u <= u_input.a)));
    return Struct_3(var_3.a, var_3.c.x);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    let var_0 = select(~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a.x, 44205u, 4294967295u, 0u), vec4<u32>(42843u, 1u, arg_2.a.x, 26419u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 17286u, 2404u), vec4<u32>(u_input.d, 44097u, 0u, arg_3.a.x))), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, arg_2.a.x, arg_2.a.x) & vec4<u32>(19364u, 16343u, arg_3.a.x, 0u), countOneBits(vec4<u32>(4294967295u, arg_3.a.x, u_input.a, arg_3.a.x)))), !(u_input.c > -1i)) ^ _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, arg_3.a.x, 34374u, 0u)), vec4<u32>(arg_3.a.x, 37360u, arg_3.a.x, arg_3.a.x)) << (abs(abs(vec4<u32>(1u, 110340u, arg_2.a.x, u_input.a))) % vec4<u32>(32u)), reverseBits(~min(vec4<u32>(1u, 50850u, arg_2.a.x, 52681u), vec4<u32>(39947u, 1u, 0u, 1060u))));
    var var_1 = vec3<bool>(arg_0, any(select(select(vec2<bool>(false, true), vec2<bool>(arg_2.b, false), true || arg_0), select(!vec2<bool>(arg_3.b, false), !vec2<bool>(false, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, false))), vec2<bool>(false & arg_3.b, true))), firstLeadingBit(u_input.c) >= 1i);
    let var_2 = 4294967295u;
    var_1 = select(vec3<bool>(var_1.x, !(!var_1.x), any(!select(vec4<bool>(arg_0, false, true, var_1.x), vec4<bool>(arg_2.b, var_1.x, arg_0, false), vec4<bool>(var_1.x, false, false, true)))), !select(vec3<bool>(all(var_1.xz), true, arg_1.x > arg_1.x), select(vec3<bool>(arg_2.b, arg_3.b, true), select(vec3<bool>(arg_3.b, arg_0, arg_0), vec3<bool>(false, arg_3.b, true), vec3<bool>(true, arg_3.b, arg_0)), false), !select(vec3<bool>(arg_2.b, arg_0, true), vec3<bool>(true, false, arg_3.b), arg_3.b)), func_1().b);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(292f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1126f)))), 1916f))) * _wgslsmith_f_op_vec3_f32(floor(arg_1.ywx)));
    return u_input.b << (~75275u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(~(~_wgslsmith_mult_u32(u_input.b, u_input.d)), ~countOneBits(_wgslsmith_sub_u32(1u, u_input.d)));
    var var_1 = countOneBits(countOneBits(~vec4<u32>(1u, 31677u, 1u, 0u)) & (vec4<u32>(~u_input.d, firstLeadingBit(4294967295u), ~25398u, _wgslsmith_add_u32(u_input.b, 4294967295u)) ^ ~(~vec4<u32>(1u, 1u, u_input.d, 4294967295u))));
    var_0 = _wgslsmith_dot_vec3_u32(select(var_1.zyx, vec3<u32>(1u, func_4(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-600f, -703f, -1352f, 119f)), Struct_3(vec2<u32>(var_1.x, var_1.x), true), func_1()), _wgslsmith_mult_u32(var_1.x, ~32530u)), vec3<bool>(true, true, select(false, true, all(vec4<bool>(false, true, true, true))))), max(vec3<u32>(0u, countOneBits(49004u), ~8338u | reverseBits(var_1.x)), _wgslsmith_add_vec3_u32(~firstLeadingBit(var_1.wzx), abs(abs(vec3<u32>(0u, 1u, 4294967295u))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(926f, 1000f, -263f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1117f, 698f, -190f), vec3<f32>(203f, -298f, -218f))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2296f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(1149f + -200f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2508f * 538f) + _wgslsmith_f_op_f32(855f * 228f))), 757f));
    var_0 = ~var_1.x;
    var var_3 = Struct_1(func_1().a, abs(firstTrailingBit(abs(0u))) ^ var_1.x, vec4<bool>((func_1().b | true) || (all(vec4<bool>(true, true, true, false)) || false), !(!any(vec3<bool>(true, true, true))), false, true));
    var_1 = max(max(~vec4<u32>(u_input.d, 32806u, u_input.a, u_input.d) | _wgslsmith_add_vec4_u32(~vec4<u32>(104071u, var_1.x, var_1.x, 0u), vec4<u32>(41260u, var_1.x, var_3.a.x, var_1.x)), ~(~vec4<u32>(94631u, 0u, 9491u, var_1.x))), firstLeadingBit(vec4<u32>(~func_4(true, vec4<f32>(var_2.x, var_2.x, -1835f, -911f), Struct_3(vec2<u32>(4294967295u, var_1.x), true), Struct_3(vec2<u32>(var_1.x, var_3.a.x), true)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 6594u, 4294967295u, u_input.a)), vec4<u32>(var_1.x, var_1.x, 1u, var_3.a.x) >> (vec4<u32>(0u, 42449u, var_1.x, 43473u) % vec4<u32>(32u))), ~(~var_3.b), 49074u)));
    var var_4 = 1204f;
    let var_5 = _wgslsmith_clamp_i32(-62536i, ~_wgslsmith_div_i32(~(~7993i), u_input.c << (4294967295u % 32u)), ~(~1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(454f, 209f, -693f, var_2.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -442f, -1155f, 628f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, -1239f, -2407f, var_2.x), vec4<f32>(-959f, var_2.x, var_2.x, 988f)))), select(var_3.c, var_3.c, !var_3.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, 950f, var_2.x, 968f)))) * vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(floor(2089f)), 117f)))), i32(-1i) * -1i, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(69229u, u_input.a), vec2<u32>(1u, var_3.a.x), false), vec2<u32>(52319u, _wgslsmith_add_u32(u_input.b, 19334u))), ~((var_1.wz << (var_1.yw % vec2<u32>(32u))) | var_3.a), select(~vec2<u32>(u_input.d, var_3.b), vec2<u32>(~4294967295u, _wgslsmith_div_u32(var_1.x, 88607u)), !var_3.c.wx)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1211f, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2205f, -803f, 1035f, 665f) * vec4<f32>(var_2.x, 1820f, -2262f, -380f))), vec4<f32>(_wgslsmith_f_op_f32(802f + 786f), 412f, _wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(ceil(var_2.x))))))), vec3<u32>(var_1.x, var_1.x, firstTrailingBit(u_input.a)));
}

