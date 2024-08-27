struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: u32,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(-1207f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1314f))))));
    let var_1 = Struct_1(0i, -13558i);
    let var_2 = reverseBits(~0u);
    var var_3 = firstTrailingBit(_wgslsmith_mult_i32(max(u_input.a, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, var_1.a), _wgslsmith_dot_vec2_i32(vec2<i32>(4419i, -1i), vec2<i32>(var_1.a, u_input.a)))), u_input.a));
    var_3 = -_wgslsmith_mod_i32(_wgslsmith_mod_i32(firstTrailingBit(-u_input.a), 2147483647i), _wgslsmith_dot_vec4_i32(~(vec4<i32>(-6258i, u_input.a, u_input.a, 0i) | vec4<i32>(0i, u_input.a, -1i, 2147483647i)), countOneBits(vec4<i32>(var_1.a, var_1.b, var_1.b, var_1.a)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(6919i, u_input.a, -2147483647i, var_1.b), vec4<i32>(u_input.a, 2147483647i, 0i, var_1.a))));
    return 1i;
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_i32(arg_0.zz, select(~(-arg_0.yw), arg_0.ww, !vec2<bool>(true, all(vec2<bool>(false, true)))));
    var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.wz, -min(_wgslsmith_clamp_vec2_i32(arg_0.wx, arg_0.yw, vec2<i32>(arg_0.x, var_0.x)), ~arg_0.zy)), abs(vec2<i32>(38970i, 2448i)));
    var var_1 = Struct_4(vec3<bool>(!any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true)), false, true), all(!vec2<bool>(all(vec3<bool>(true, false, false)), all(vec4<bool>(true, false, true, true)))));
    let var_2 = Struct_2(Struct_1(arg_0.x, firstLeadingBit(min(-u_input.a, _wgslsmith_dot_vec3_i32(arg_0.zzy, vec3<i32>(20909i, -55730i, -60061i))))));
    var_0 = min(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_0.x, -2147483647i) << (_wgslsmith_div_u32(0u, 17178u) % 32u), -func_3()), _wgslsmith_add_vec2_i32(vec2<i32>(1i, var_2.a.a), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, var_0.x), arg_0.wy))), reverseBits(arg_0.zy));
    return 399f;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_4) -> vec4<i32> {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = Struct_2(arg_0.e);
    let var_2 = _wgslsmith_f_op_f32(func_2(vec4<i32>(firstTrailingBit(firstLeadingBit(53388i >> (0u % 32u))), 6743i, -firstLeadingBit(u_input.a) | ~var_1.a.a, 6052i)));
    let var_3 = arg_0;
    var var_4 = Struct_1(-53i, 18930i);
    return -firstLeadingBit(-(vec4<i32>(u_input.a, arg_0.e.b, -1i, -11463i) & vec4<i32>(-1i, -2147483647i, arg_0.e.b, u_input.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -311f), !all(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))), 56108u, 1u, Struct_4(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-arg_1)) > _wgslsmith_f_op_f32(-541f - _wgslsmith_f_op_f32(195f + arg_1))));
    let var_1 = _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(var_0.c, 53643u, _wgslsmith_clamp_u32(0u, 1u, 3060u)) | abs(var_0.c >> (var_0.c % 32u)), var_0.d);
    var var_2 = vec2<bool>(var_0.e.b, _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_0.x, -27777i), i32(-1i) * -1i, u_input.a)) >= -13340i);
    var var_3 = _wgslsmith_add_u32(var_1, _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(61888u, var_1, var_1, var_0.c), vec4<u32>(var_1, 87208u, 51966u, 97679u)), 71610u)), abs(~62394u)));
    let var_4 = select(!vec4<bool>(all(select(var_0.e.a.xx, vec2<bool>(var_2.x, var_2.x), var_0.e.b)), select(true, any(var_0.e.a.yy), false), !(!var_2.x), var_0.e.a.x), vec4<bool>(!(!any(vec4<bool>(var_2.x, true, var_0.e.a.x, var_2.x))), all(!vec4<bool>(var_2.x, var_0.e.a.x, true, true)), any(!select(vec2<bool>(true, var_0.e.a.x), vec2<bool>(false, true), var_0.e.b)), var_0.b), var_2.x);
    return ~_wgslsmith_sub_u32(265u, abs(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, reverseBits(~4294967295u)), vec3<u32>(_wgslsmith_clamp_u32(67749u, 48030u, 39814u) ^ ~4294967295u, _wgslsmith_div_u32(0u, ~72860u), 4294967295u), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 14206u), 1u), _wgslsmith_add_u32(_wgslsmith_mult_u32(15880u, 1u), 23918u), func_4(func_1(Struct_3(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), true, -779f, -1721f, Struct_1(-3952i, u_input.a)), vec3<i32>(u_input.a, -2147483647i, -2147483647i), vec3<f32>(211f, -318f, -1000f), Struct_4(vec3<bool>(true, true, true), false)), _wgslsmith_f_op_f32(abs(-1495f)))));
    let var_1 = Struct_1(u_input.a, ~(-2147483647i));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1049f, 798f, 1550f, 108f) - vec4<f32>(-2711f, 159f, -257f, -998f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1154f, 365f, -195f, -280f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1148f, 1728f, -351f, 1004f), vec4<f32>(-1000f, -1381f, 1746f, 633f))))) - vec4<f32>(_wgslsmith_f_op_f32(round(-778f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-839f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-998f * -1099f)))), _wgslsmith_f_op_f32(-950f * _wgslsmith_f_op_f32(f32(-1f) * -1301f))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(-447f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1077f, var_2.x))))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-1569f - -2026f)) - -2144f)));
    let var_3 = min(25854u, ~var_0.x);
    var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_2.x - -1717f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1799f, -822f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(184f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-948f + 663f), -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_f_op_f32(-var_2.x), var_2.x) - vec4<f32>(1f, -163f, var_2.x, -1000f))));
    var var_4 = vec4<i32>(5368i, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(var_1.a), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, 0i, 46736i), vec3<i32>(u_input.a, u_input.a, u_input.a)), countOneBits(-66571i)), ~(-vec3<i32>(2650i, 0i, var_1.a))), _wgslsmith_dot_vec3_i32((vec3<i32>(1i, 2147483647i, var_1.b) >> (var_0 % vec3<u32>(32u))) << (~vec3<u32>(1u, var_0.x, 31522u) % vec3<u32>(32u)), min(func_1(Struct_3(vec4<u32>(var_0.x, var_0.x, var_3, var_3), true, var_2.x, -519f, var_1), vec3<i32>(6693i, 2147483647i, u_input.a), vec3<f32>(var_2.x, -1000f, -890f), Struct_4(vec3<bool>(true, true, false), false)).wyw, select(vec3<i32>(10204i, var_1.a, -1i), vec3<i32>(u_input.a, u_input.a, var_1.b), vec3<bool>(true, false, false)))), 55127i) & _wgslsmith_sub_vec4_i32(~((vec4<i32>(60349i, -1i, 0i, 20324i) & vec4<i32>(var_1.a, 42064i, var_1.a, var_1.a)) ^ abs(vec4<i32>(var_1.b, var_1.a, 1i, 1i))), countOneBits(~reverseBits(vec4<i32>(-21961i, u_input.a, u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_2.wy)) * var_2.yy), var_2.yy))), vec2<u32>(~var_0.x, 1u), _wgslsmith_div_u32(max(var_0.x, ~_wgslsmith_add_u32(var_3, var_3)), reverseBits(_wgslsmith_sub_u32(24185u, _wgslsmith_add_u32(var_0.x, 31075u)))), 42504i, var_0.yz);
}

