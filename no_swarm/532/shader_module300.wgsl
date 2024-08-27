struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global0 = select(reverseBits(u_input.d), u_input.d, select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), any(vec4<bool>(true, any(vec3<bool>(false, false, false)), false, true))));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -619f))), Struct_1(1i, true, select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), all(vec4<bool>(true, true, false, true))), vec2<bool>(arg_0.x < 1025f, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), -775f, select(vec4<bool>(true, any(vec3<bool>(true, false, true)), -2147483647i < u_input.a, true), vec4<bool>(arg_0.x > -330f, true, true, any(vec2<bool>(false, false))), true)), select(vec3<bool>(true, true, true), vec3<bool>(!(arg_0.x <= arg_0.x), !all(vec2<bool>(true, false)), true != (global0.x == -2147483647i)), select(vec3<bool>(all(vec3<bool>(true, true, false)), select(false, false, false), arg_0.x <= 813f), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, any(vec2<bool>(false, false)), true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.b.d, -1624f, 898f, arg_3.b.d), vec4<f32>(arg_3.b.d, 1133f, arg_3.b.d, -1158f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0, arg_0, arg_0) - vec4<f32>(-851f, -1000f, arg_0, arg_3.a))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(228f, -520f, arg_0, 1704f), vec4<f32>(-1202f, arg_3.a, -340f, arg_0)), vec4<f32>(164f, arg_3.b.d, -1732f, arg_0)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-617f, arg_3.a)), 128f)) + -570f), arg_0));
    var_0 = -1060f;
    global0 = max(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c.x, 0i), reverseBits(u_input.c.x)), _wgslsmith_mod_i32(-u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -1i), global0.wyx)), -2147483647i, abs(-global0.x)) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(arg_2.x, arg_2.x, 8925u, 14950u)), min(vec4<u32>(arg_2.x, arg_2.x, 32425u, arg_2.x), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_2.x, 4294967295u, 1432u), vec4<u32>(1u, arg_2.x, arg_2.x, 0u))), vec4<u32>(arg_2.x, 42018u, 1u, 1u)) % vec4<u32>(32u)), firstLeadingBit(u_input.b));
    var var_1 = arg_3.b;
    var_1 = arg_3.b;
    return Struct_1(_wgslsmith_clamp_i32(abs(-(u_input.c.x << (4294967295u % 32u))), ~global0.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(select(vec2<i32>(var_1.a, -2147483647i), vec2<i32>(global0.x, arg_3.b.a), var_1.e.xy)), u_input.c)), any(vec3<bool>(true, true, false)) | false, vec2<bool>(false, false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(min(arg_3.b.d, -1763f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1645f)))))), var_1.e);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    var var_0 = arg_0;
    var var_1 = arg_0.d;
    var_0 = Struct_1(select(-50525i | _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0.a, -1i) | global0.xxx, firstLeadingBit(global0.zyw)), u_input.b.x, false), true, !(!var_0.e.yy), arg_0.d, select(vec4<bool>(all(arg_0.e.yyw), true, select(arg_0.c.x || var_0.e.x, var_0.b | var_0.c.x, var_0.b), false), !(!(!vec4<bool>(true, arg_0.c.x, true, true))), all(select(func_2(arg_0.d, var_0.e.xw, vec3<u32>(0u, arg_1.x, arg_1.x), Struct_2(var_0.d, arg_0, vec3<bool>(var_0.b, arg_0.e.x, arg_0.c.x))).c, select(vec2<bool>(var_0.e.x, true), vec2<bool>(true, true), arg_0.e.wx), !var_0.c.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)) >= -1142f;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1171f, 606f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d - 870f)))));
    return _wgslsmith_f_op_f32(max(arg_0.d, _wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2007f * 1035f), var_0.d)))))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    global0 = vec4<i32>(firstLeadingBit(~1i), -2147483647i, u_input.a, reverseBits(_wgslsmith_add_i32(1i, arg_0.a))) & abs(select(-(u_input.d | u_input.d), select(u_input.d, u_input.b, !arg_0.e), !arg_0.e));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(max(arg_0.d, arg_0.d)), func_2(arg_1, arg_0.e.ww, ~(~max(vec3<u32>(12728u, 4294967295u, 1u), vec3<u32>(16530u, 1u, 4294967295u))), Struct_2(-125f, Struct_1(-32680i, any(vec2<bool>(false, true)), arg_0.c, 915f, arg_0.e), !arg_0.e.xwz)), arg_0.e.zxx);
    let var_1 = select(u_input.b, vec4<i32>(-39859i, select(-(~2147483647i), ~_wgslsmith_mult_i32(-1i, arg_0.a), !var_0.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.a, u_input.c.x, global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2810i), vec2<i32>(2147483647i, var_0.b.a))), vec4<i32>(i32(-1i) * -2147483647i, var_0.b.a, -51079i, ~arg_0.a)), firstTrailingBit((i32(-1i) * -2355i) >> (1u % 32u))), var_0.b.e);
    let var_2 = var_0.b.e;
    global0 = vec4<i32>(-_wgslsmith_clamp_i32(abs(-1i), ~var_1.x, abs(72512i)), -2147483647i, arg_0.a, var_0.b.a) | min(vec4<i32>(~(~var_1.x), -21277i, min(var_0.b.a, select(var_0.b.a, -2147483647i, var_2.x)), _wgslsmith_mod_i32(global0.x >> (1u % 32u), _wgslsmith_add_i32(arg_0.a, global0.x))), abs(~(vec4<i32>(-1i, arg_0.a, global0.x, arg_0.a) ^ var_1)));
    return func_2(var_0.b.d, vec2<bool>(true || (var_0.b.d != -1245f), all(var_2.wyz)), ~select(~select(vec3<u32>(4294967295u, 15234u, 4294967295u), vec3<u32>(0u, 6925u, 14206u), arg_0.e.xxy), _wgslsmith_mod_vec3_u32(~vec3<u32>(61157u, 4294967295u, 15065u), vec3<u32>(16334u, 1u, 19597u)), !(!var_0.c)), var_0);
}

fn func_1() -> Struct_2 {
    global0 = ~vec4<i32>(-2147483647i, -u_input.c.x, -7203i, -22445i);
    let var_0 = Struct_2(_wgslsmith_f_op_f32(598f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-428f, 1637f, true)))))), func_5(Struct_1(1i, all(vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1054f, -683f)), _wgslsmith_f_op_f32(-1934f + -1595f)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(func_4(func_2(-879f, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec3<u32>(9859u, 1u, 31859u), Struct_2(-581f, Struct_1(global0.x, true, vec2<bool>(false, true), 1000f, vec4<bool>(true, true, false, true)), vec3<bool>(false, false, false))), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(7708u, 1u), vec2<u32>(1u, 120685u))))), true), vec3<bool>(_wgslsmith_dot_vec2_i32(-vec2<i32>(global0.x, global0.x), u_input.c) < u_input.a, true == any(vec4<bool>(true, true, false, true)), -1i < max(1i, -u_input.d.x)));
    var var_1 = func_5(func_5(func_5(func_2(_wgslsmith_f_op_f32(ceil(176f)), vec2<bool>(var_0.b.b, var_0.c.x), vec3<u32>(0u, 4294967295u, 4294967295u), var_0), var_0.a, func_2(var_0.b.d, var_0.c.xy, vec3<u32>(6476u, 60804u, 26350u), var_0).e.x && !var_0.b.b), var_0.a, !(!all(var_0.b.e.zy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.d, var_0.b.d, 1430f, var_0.a)))))), var_0.b.c.x);
    var var_2 = var_0;
    var_1 = var_2.b;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, global0.x, 42041i), vec3<i32>(u_input.c.x, -29977i, -21182i)), (_wgslsmith_div_i32(1385i, u_input.b.x) & (i32(-1i) * -34191i)) & max(abs(global0.x), u_input.b.x), reverseBits(-22320i)), vec3<i32>(reverseBits(firstLeadingBit(-global0.x)), 6298i, ~global0.x));
    let var_1 = func_1();
    global0 = vec4<i32>(i32(-1i) * -_wgslsmith_sub_i32(-22581i, _wgslsmith_add_i32(-1i, var_1.b.a)), -29489i, max(u_input.c.x, i32(-1i) * -_wgslsmith_add_i32(var_0.x, u_input.b.x)), ~(-33652i));
    var var_2 = func_1();
    let var_3 = select(var_1.c.x, var_2.b.b, all(func_2(-1091f, !var_1.b.c, vec3<u32>(1u, 1u, 1u), Struct_2(_wgslsmith_f_op_f32(trunc(-614f)), func_5(var_2.b, -1427f, true), !var_1.b.e.www)).e.zyy));
    let var_4 = Struct_1(-_wgslsmith_div_i32(~_wgslsmith_sub_i32(var_0.x, 1i), _wgslsmith_sub_i32(global0.x, var_1.b.a)), false, !(!(!(!var_2.b.c))), func_1().b.d, var_2.b.e);
    var var_5 = 0u;
    let var_6 = vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(43459u, 0u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u))) | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(firstLeadingBit(1474u), _wgslsmith_clamp_u32(11233u, 1u, 1u), 13309u)), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(1u, 82442u), vec4<i32>(~10902i, reverseBits(max(3141i, -38048i)), i32(-1i) * -29032i, 0i), vec3<f32>(var_2.b.d, _wgslsmith_f_op_f32(trunc(var_2.b.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + 403f)), 66017i, countOneBits(u_input.c.x | _wgslsmith_div_i32(-41682i, -2147483647i)));
}

