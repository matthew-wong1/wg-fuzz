struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    var var_0 = Struct_1(~reverseBits(~vec4<u32>(44750u, 0u, arg_0, arg_0)), true, global0.x, countOneBits(vec3<u32>(~15432u, 14864u, 1u)));
    global0 = !select(!select(!vec4<bool>(var_0.c, false, global0.x, true), !vec4<bool>(var_0.b, var_0.c, false, var_0.c), !vec4<bool>(global0.x, global0.x, var_0.b, true)), !vec4<bool>(!global0.x, select(global0.x, false, var_0.c), all(global0.zz), global0.x && true), true);
    let var_1 = Struct_1(vec4<u32>(select(abs(_wgslsmith_mult_u32(1u, 25857u)), max(_wgslsmith_mult_u32(arg_0, 15305u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 79085u), vec2<u32>(50078u, var_0.a.x))), true), max(firstLeadingBit(arg_0), reverseBits(var_0.d.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(25946u, 0u), var_0.a.wz), ~vec2<u32>(9873u, 6939u)), var_0.a.xx), ~(~22627u)), false, true, vec3<u32>(106537u, arg_0, _wgslsmith_dot_vec2_u32(~var_0.d.zy | firstLeadingBit(var_0.d.zx), abs(_wgslsmith_div_vec2_u32(var_0.a.wz, var_0.d.yx)))));
    let var_2 = select(!(!vec4<bool>(global0.x, true, true, false)), vec4<bool>(all(!(!global0.yyx)), !(countOneBits(0i) > u_input.a), !var_1.b, any(vec4<bool>(true, false, !var_0.c, global0.x & var_1.b))), any(!global0.xx));
    var var_3 = var_1.a.zwx;
    return firstTrailingBit(var_0.a);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(func_3(~select(abs(0u), _wgslsmith_div_u32(74396u, 33272u), true)), false, false, select(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 4867u), min(vec3<u32>(49265u, 46064u, 10535u), vec3<u32>(75359u, 11029u, 36595u)), ~vec3<u32>(4294967295u, 4294967295u, 6163u)), ~abs(vec3<u32>(1u, 37764u, 0u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u), false));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1018f)), _wgslsmith_f_op_f32(sign(-685f)), _wgslsmith_f_op_f32(round(-1055f)), _wgslsmith_f_op_f32(-1000f - 1000f))))));
    global0 = !select(vec4<bool>(true, false, var_0.b, true), select(vec4<bool>(!global0.x, true, true, false), vec4<bool>(true, true, true, var_0.c), true), true);
    let var_2 = Struct_1(~(~var_0.a), all(!(!select(vec4<bool>(false, false, true, var_0.c), vec4<bool>(var_0.b, true, true, true), vec4<bool>(global0.x, global0.x, var_0.c, var_0.c)))), global0.x, func_3(~_wgslsmith_sub_u32(~var_0.d.x, var_0.a.x)).zyz);
    global0 = select(!vec4<bool>(true, any(vec4<bool>(var_2.c, false, var_2.b, var_0.c)) && var_0.c, !(!global0.x), false), !(!vec4<bool>(var_2.b && true, global0.x, !var_0.c, true)), vec4<bool>(false, true, any(vec4<bool>(true, all(vec2<bool>(var_2.c, global0.x)), var_0.b, true)), ~_wgslsmith_clamp_i32(-2147483647i, -1i, u_input.a) == -59708i));
    return ~firstLeadingBit(var_0.d.x);
}

fn func_1() -> u32 {
    let var_0 = countOneBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(~36440u, _wgslsmith_dot_vec3_u32(vec3<u32>(39947u, 1u, 2088u), vec3<u32>(4294967295u, 83422u, 0u))), vec2<u32>(func_2(), 59452u)));
    let var_1 = firstLeadingBit(firstTrailingBit(u_input.b.yy));
    let var_2 = Struct_3(min(vec4<i32>(i32(-1i) * -u_input.a, ~(i32(-1i) * -13529i), -var_1.x | -var_1.x, ~(~(-27174i))), select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, 2147483647i), -vec4<i32>(u_input.a, 7778i, 7824i, -1i)), reverseBits(~vec4<i32>(7862i, -41785i, u_input.a, u_input.b.x)), !select(vec4<bool>(false, global0.x, false, true), vec4<bool>(false, global0.x, false, global0.x), true))), u_input.b, firstTrailingBit(~select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 44197u, var_0.x), vec3<u32>(2152u, 35640u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(45216u, 44974u, 4294967295u), vec3<u32>(var_0.x, var_0.x, var_0.x)), global0.yyx)), Struct_1(vec4<u32>(~var_0.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 109572u, 0u, var_0.x), vec4<u32>(var_0.x, var_0.x, 2879u, 23828u)), _wgslsmith_add_u32(~13726u, 1u), var_0.x, ~4294967295u), global0.x, false, ~select(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, 40835u, var_0.x)), vec3<u32>(var_0.x, var_0.x, 4294967295u), select(global0.zwy, global0.www, global0.wyw))), var_1);
    return var_2.d.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(true, !all(vec2<bool>(false, true)), (~func_1() < _wgslsmith_div_u32(1u, 1u)) | select(global0.x, true, any(global0.wyz) && true), true);
    let var_0 = Struct_4(global0.x, true);
    let var_1 = Struct_1(~(~vec4<u32>(0u, firstTrailingBit(1u), _wgslsmith_mult_u32(46290u, 0u), 46472u)), !(!global0.x), global0.x, select(~(~vec3<u32>(1u, 1u, 1u)), min(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(22887u, 65103u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), all(select(vec4<bool>(var_0.b, false, var_0.b, false), !vec4<bool>(var_0.b, false, var_0.a, global0.x), true))));
    let var_2 = Struct_4(any(!select(vec3<bool>(true, var_1.b, var_1.c), select(vec3<bool>(var_0.a, global0.x, true), vec3<bool>(false, false, false), global0.www), var_0.a)), true);
    global0 = vec4<bool>(var_0.b, select(true, false, any(!global0.wz)), var_0.a, all(vec2<bool>(var_1.b, var_0.a)));
    var var_3 = _wgslsmith_mod_i32(-firstLeadingBit(0i), u_input.a);
    let var_4 = firstTrailingBit(~0u >> (~var_1.d.x % 32u)) != max(39926u, reverseBits(var_1.d.x));
    let var_5 = reverseBits(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(3698i, -1i, 2147483647i, -38317i), vec4<i32>(u_input.b.x, -2147483647i, u_input.a, -421i), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, 50642i), vec4<i32>(981i, u_input.a, 0i, 0i)))));
    let var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-776f, -448f, -1063f) * vec3<f32>(-391f, -584f, 495f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(703f, 517f, -1220f))))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-336f, 137f, 2684f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2001f, -1180f, 870f) * vec3<f32>(-273f, 121f, -401f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(282f, -448f, 1100f), vec3<f32>(472f, -1343f, -726f)))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(791f, -2175f, 170f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(575f, 965f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1992f, 131f, 686f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-1i), vec2<u32>((var_1.a.x ^ _wgslsmith_dot_vec2_u32(var_1.d.yz, vec2<u32>(var_1.d.x, 49032u))) & var_1.a.x, ~var_1.d.x ^ var_1.d.x), max(var_5, -abs(var_5) >> (~var_1.a % vec4<u32>(32u))));
}

