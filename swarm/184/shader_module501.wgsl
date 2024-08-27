struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<f32> {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-836f, -853f) + _wgslsmith_f_op_f32(-616f + -429f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(177f, -116f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(203f, -653f, -966f, -151f), vec4<f32>(429f, -2039f, 177f, -188f), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1867f, 535f, 159f, 1000f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(874f, 181f, -1024f, -199f)))))))), vec2<bool>(true, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true)))));
    let var_1 = Struct_1(var_0.b.wx, var_0.b, var_0.c);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(var_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, 1000f, var_1.b.x, 930f)), select(vec4<bool>(true, true, var_1.c.x, false), vec4<bool>(var_0.c.x, false, false, false), var_0.c.x))), vec4<f32>(-945f, 1085f, 226f, 1f)))), select(vec2<bool>(all(vec3<bool>(true, true, var_0.c.x)), false), select(select(vec2<bool>(var_0.c.x, var_1.c.x), select(vec2<bool>(var_1.c.x, false), vec2<bool>(var_0.c.x, false), var_1.c.x), select(var_0.c, vec2<bool>(false, true), var_1.c.x)), select(!vec2<bool>(var_0.c.x, var_0.c.x), !var_0.c, var_0.c), var_0.c), false));
    var_2 = var_1;
    var var_3 = -10450i;
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.a)));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> f32 {
    global0 = i32(-1i) * -69490i;
    var var_0 = _wgslsmith_div_f32(1315f, -1105f);
    let var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1678f, arg_1.a.x) + vec2<f32>(-133f, var_1.b.x)))) * var_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(1000f + -1785f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-407f, -1000f, true))), arg_1.b.x, 1f)), arg_1.c);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, var_1.a.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1796f);
}

fn func_5(arg_0: f32) -> vec4<f32> {
    global0 = u_input.d.x;
    global0 = ~(-1i | ~firstTrailingBit(u_input.c));
    var var_0 = ~u_input.d.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-324f, _wgslsmith_f_op_f32(max(269f, -751f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, 347f, arg_0, arg_0), vec4<f32>(arg_0, 127f, arg_0, arg_0))))), vec4<f32>(185f, -556f, -1777f, _wgslsmith_div_f32(541f, 234f)), vec4<bool>(true, true, true, true))))), !(!select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))));
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(min(i32(-1i) * -39907i, 47217i), -u_input.c), _wgslsmith_mod_vec2_i32(abs(u_input.d.wx), ~u_input.d.zw));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(abs(778f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0)), var_1.a.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> vec2<f32> {
    let var_0 = countOneBits(28264u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(581f, -1000f), vec2<f32>(1000f, -677f)), vec2<f32>(_wgslsmith_f_op_f32(sign(1209f)), -1105f)))), _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_f32(func_4(var_0, Struct_1(_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(28835i, 0i))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-521f, -315f, 534f, 1042f), vec4<f32>(-278f, 469f, -197f, -936f))), select(arg_1, arg_1, arg_1)))))), select(vec2<bool>(!all(vec4<bool>(false, true, arg_1.x, arg_1.x)), true), arg_1, all(vec2<bool>(arg_1.x, all(vec3<bool>(false, true, true))))));
    var var_2 = _wgslsmith_mod_i32(u_input.c, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-u_input.d, vec4<i32>(0i << (var_0 % 32u), u_input.d.x, 25355i, 27052i)), 2683i));
    global0 = select(1i, _wgslsmith_sub_i32(~(~2147483647i), _wgslsmith_clamp_i32(~u_input.c, abs(reverseBits(-2147483647i)), 16314i)), all(vec3<bool>(true, true, !any(vec3<bool>(arg_1.x, true, arg_1.x)))));
    var var_3 = ~(~min(abs(u_input.d), _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.d.x, u_input.d.x, -20813i), _wgslsmith_sub_vec4_i32(u_input.d, u_input.d))));
    return _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * -296f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))).yx;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> i32 {
    let var_0 = !vec4<bool>(true, !(_wgslsmith_f_op_f32(f32(-1f) * -1128f) >= _wgslsmith_div_f32(-785f, arg_0.b.x)), any(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.c.x, arg_0.c.x, false), false)), true);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -625f));
    global0 = 23055i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_0.b.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-391f)))));
    var var_3 = Struct_1(vec2<f32>(295f, arg_0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_2.x, -1379f, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(-arg_0.b)))), !vec2<bool>(var_0.x, all(!vec3<bool>(arg_0.c.x, false, true))));
    return -87175i;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_sub_vec3_u32(~reverseBits(~vec3<u32>(105493u, 43741u, 2690u)), vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a, 56959u), _wgslsmith_dot_vec3_u32(vec3<u32>(51804u, u_input.a, 1u), vec3<u32>(67656u, 80723u, u_input.b)), u_input.b), vec3<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), 17086u, _wgslsmith_dot_vec4_u32(vec4<u32>(13204u, u_input.a, u_input.a, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, 0u)))), 15783u << (u_input.a % 32u)));
    global0 = -34431i;
    var var_1 = ~abs(firstLeadingBit(select(9434u << (0u % 32u), 4294967295u, false)));
    let var_2 = -7487i <= ~_wgslsmith_mult_i32(u_input.d.x, u_input.d.x & _wgslsmith_mult_i32(-15182i, 50550i));
    global0 = func_6(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec4<u32>(50764u, u_input.b, 4294967295u, 4294967295u), vec2<bool>(false, var_2))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1449f, 593f, -885f, 735f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1992f, 1408f, 586f) - vec4<f32>(1000f, 540f, 1302f, 1133f))), !select(select(vec2<bool>(var_2, false), vec2<bool>(false, true), var_2), vec2<bool>(var_2, var_2), var_2)), -2147483647i >> (0u % 32u), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1293f + -353f) - 719f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f) - 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -247f))) * _wgslsmith_f_op_vec2_f32(func_2(vec4<u32>(u_input.a, u_input.a, 59780u, u_input.b), vec2<bool>(true, true))).x)));
    return i32(-1i) * -44586i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), false, true, false & any(vec2<bool>(false, false))));
    global0 = 1i;
    global0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(~(-vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, u_input.d.x)), vec4<i32>(func_1(), ~(-1i), 12060i, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x))), vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.d, min(u_input.d, vec4<i32>(5123i, 2147483647i, 0i, 2147483647i))), reverseBits(func_6(Struct_1(vec2<f32>(276f, -596f), vec4<f32>(-722f, 1844f, 426f, 663f), vec2<bool>(false, var_0.x)), u_input.c, vec3<f32>(-135f, -1085f, -543f))))));
    var var_1 = u_input.a;
    let var_2 = select(vec2<bool>(any(select(vec4<bool>(var_0.x, false, var_0.x, false), select(var_0, vec4<bool>(var_0.x, true, false, true), vec4<bool>(true, true, var_0.x, var_0.x)), !var_0)), any(!var_0)), !(!vec2<bool>(true | var_0.x, u_input.c < u_input.d.x)), !var_0.zx);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d.xyw, ~u_input.d.ywz), vec3<i32>(51175i, u_input.d.x, 10442i) << ((vec3<u32>(u_input.b, u_input.a, u_input.b) & vec3<u32>(1u, 0u, u_input.a)) % vec3<u32>(32u))), 2090i, firstTrailingBit(_wgslsmith_sub_i32(u_input.c, ~(-22376i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(739f, 335f) * vec2<f32>(-1938f, 1177f)), vec2<f32>(-2768f, 1024f)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(279f, -451f))), vec2<f32>(-105f, 971f))))));
}

