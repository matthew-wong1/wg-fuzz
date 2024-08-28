struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(327f, 2181f, 316f), vec3<f32>(-216f, 1982f, -830f), vec3<f32>(1401f, 1389f, -524f), vec3<f32>(-1306f, -523f, 1301f), vec3<f32>(370f, 1553f, 603f), vec3<f32>(2005f, -186f, -377f), vec3<f32>(1000f, -828f, -539f), vec3<f32>(835f, -529f, 179f), vec3<f32>(-2246f, -942f, 601f), vec3<f32>(1082f, 571f, -705f), vec3<f32>(1446f, 912f, -379f), vec3<f32>(683f, -336f, 880f), vec3<f32>(-953f, 1157f, 991f), vec3<f32>(-1489f, -220f, 795f), vec3<f32>(981f, -946f, 818f), vec3<f32>(-739f, -587f, -779f), vec3<f32>(-2052f, -437f, -1290f), vec3<f32>(1000f, 411f, -736f), vec3<f32>(392f, 394f, 340f), vec3<f32>(2780f, 485f, -1228f), vec3<f32>(-1024f, 1961f, 908f), vec3<f32>(715f, 906f, -795f), vec3<f32>(-363f, -808f, -1392f), vec3<f32>(1703f, 2266f, -257f), vec3<f32>(-152f, 2152f, 1000f), vec3<f32>(170f, 180f, 170f), vec3<f32>(-1883f, 970f, 1746f), vec3<f32>(1551f, -1254f, -1455f), vec3<f32>(2346f, -1445f, -217f), vec3<f32>(-1396f, 345f, -935f));

var<private> global1: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    global0 = array<vec3<f32>, 30>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -1398f, arg_0.a.x, 1346f)), _wgslsmith_f_op_vec4_f32(select(arg_0.a, arg_0.a, vec4<bool>(true, false, false, false))))))))), _wgslsmith_div_u32(~(~1u), ~50347u), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a.x, arg_0.b, countOneBits(31067u))), vec3<u32>(_wgslsmith_dot_vec3_u32(select(arg_0.c, u_input.a.zyw, true), select(arg_0.c, vec3<u32>(arg_0.c.x, arg_0.b, arg_1), vec3<bool>(true, true, true))), arg_1, ~u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a.x, arg_0.a.x, var_0.a.x)))))) + var_0.a.zxw);
    global0 = array<vec3<f32>, 30>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f) + 1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(611f + arg_0.a.x), var_0.a.x)), _wgslsmith_f_op_f32(min(194f, _wgslsmith_f_op_f32(ceil(796f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.x, -917f))))) * vec4<f32>(arg_0.a.x, var_0.a.x, 341f, var_1.x)), u_input.a.x, vec3<u32>(~abs(u_input.a.x) | u_input.a.x, _wgslsmith_dot_vec3_u32(arg_0.c, _wgslsmith_mod_vec3_u32(u_input.a.wzx, abs(vec3<u32>(u_input.a.x, 22678u, var_0.c.x)))), ~_wgslsmith_dot_vec2_u32(abs(var_0.c.zy), ~arg_0.c.xx)));
    return reverseBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(23242i, -23055i), ~vec2<i32>(2147483647i, -20555i))) < firstLeadingBit(~(-1i));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f)));
    let var_1 = _wgslsmith_div_u32(u_input.a.x, 4294967295u) == _wgslsmith_mod_u32(u_input.a.x, 17665u);
    var var_2 = ~firstTrailingBit(_wgslsmith_add_vec2_u32(u_input.a.wz, u_input.a.yx));
    var var_3 = select(vec3<bool>(true, true, true), !select(vec3<bool>(true, var_1, true), select(!vec3<bool>(var_1, false, var_1), !vec3<bool>(var_1, var_1, true), !vec3<bool>(var_1, var_1, true)), !var_1), select(!vec3<bool>(false, var_1, func_3(Struct_1(vec4<f32>(-1148f, var_0.x, -1462f, -1000f), var_2.x, u_input.a.xwx), 45056u)), vec3<bool>(!(!var_1), var_1, var_1), var_1));
    let var_4 = reverseBits(u_input.a.x);
    return Struct_1(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-916f, -964f) * _wgslsmith_f_op_f32(max(362f, var_0.x)))), var_0.x), _wgslsmith_div_u32(1u, 23528u), vec3<u32>(_wgslsmith_mult_u32(~25052u, 0u) & _wgslsmith_sub_u32(0u, 4294967295u >> (u_input.a.x % 32u)), 45445u, 60757u));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    return vec3<bool>(true, any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), true);
}

fn func_1() -> u32 {
    var var_0 = false;
    var_0 = !all(func_4(func_2(_wgslsmith_mod_i32(19272i, -2147483647i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-302f, _wgslsmith_f_op_f32(select(-201f, _wgslsmith_div_f32(-366f, -148f), true)))));
    let var_2 = vec2<i32>(0i, -_wgslsmith_mod_i32(-(-35239i >> (u_input.a.x % 32u)), i32(-1i) * -2147483647i));
    var var_3 = ~firstLeadingBit(1u);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-473f, -1135f, -418f, 523f), vec4<f32>(-846f, 835f, -124f, 1000f))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 416f, -233f, -2447f), vec4<f32>(-456f, 1735f, 2028f, -1154f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1060f, -593f, -2264f, 310f)))), u_input.a.x, _wgslsmith_clamp_vec3_u32(~vec3<u32>(firstLeadingBit(4294967295u), ~0u, ~u_input.a.x), select(vec3<u32>(func_1(), reverseBits(u_input.a.x), 14296u), ~_wgslsmith_add_vec3_u32(u_input.a.zzw, u_input.a.wyx), _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.yx) >= 26350u), u_input.a.zxz));
    let var_1 = false;
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * -634f) * var_0.a.x))), var_0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x * 1018f)))), abs(reverseBits(~u_input.a.x)) | 4294967295u, max(u_input.a.xww, var_0.c));
    global1 = -1789f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a.x, -1000f)) - var_2.a.x) - -1027f);
    global0 = array<vec3<f32>, 30>();
    let var_3 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(countOneBits(2147483647i)), max(_wgslsmith_dot_vec2_i32(vec2<i32>(-36695i, -1i), vec2<i32>(-24301i, 1i)), -2147483647i)), -25930i), -2147483647i, ~firstTrailingBit(reverseBits(min(-54304i, 5022i))), 29886i);
    var_2 = var_0;
    global0 = array<vec3<f32>, 30>();
    global0 = array<vec3<f32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zxx);
}

