struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(vec3<f32>(-197f, 260f, -1849f)), Struct_4(vec3<f32>(550f, 274f, 1648f)), Struct_4(vec3<f32>(230f, -909f, 294f)), Struct_4(vec3<f32>(440f, 314f, 1006f)), Struct_4(vec3<f32>(163f, 865f, -271f)), Struct_4(vec3<f32>(1551f, -1844f, -1388f)), Struct_4(vec3<f32>(1978f, -487f, 232f)), Struct_4(vec3<f32>(-1887f, 2761f, -1356f)), Struct_4(vec3<f32>(2018f, 736f, -488f)), Struct_4(vec3<f32>(-2137f, 987f, 690f)), Struct_4(vec3<f32>(929f, -545f, 1406f)), Struct_4(vec3<f32>(473f, 744f, 1281f)), Struct_4(vec3<f32>(1004f, 1192f, -250f)), Struct_4(vec3<f32>(-1097f, 457f, -865f)), Struct_4(vec3<f32>(-1622f, -1393f, 1551f)), Struct_4(vec3<f32>(-1701f, -947f, -752f)), Struct_4(vec3<f32>(1061f, 367f, -936f)), Struct_4(vec3<f32>(1332f, -795f, -1195f)), Struct_4(vec3<f32>(1533f, 191f, -2031f)), Struct_4(vec3<f32>(989f, 1007f, -869f)), Struct_4(vec3<f32>(380f, -597f, 680f)), Struct_4(vec3<f32>(-2276f, -1631f, 575f)), Struct_4(vec3<f32>(999f, 1357f, 1123f)), Struct_4(vec3<f32>(-1209f, -426f, 574f)), Struct_4(vec3<f32>(390f, 230f, 1070f)), Struct_4(vec3<f32>(-1807f, -1000f, -1130f)), Struct_4(vec3<f32>(586f, 317f, -1740f)));

var<private> global1: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec3<f32>(780f, -1610f, -1175f)), Struct_4(vec3<f32>(-234f, 1579f, -834f)), Struct_4(vec3<f32>(1000f, 787f, 1000f)), Struct_4(vec3<f32>(338f, 199f, -1817f)), Struct_4(vec3<f32>(1397f, -1555f, -1000f)), Struct_4(vec3<f32>(-1742f, -822f, 174f)), Struct_4(vec3<f32>(2277f, -843f, -465f)), Struct_4(vec3<f32>(-1913f, 515f, 1406f)), Struct_4(vec3<f32>(534f, -453f, 226f)), Struct_4(vec3<f32>(977f, -602f, 134f)), Struct_4(vec3<f32>(747f, -1000f, -1000f)), Struct_4(vec3<f32>(136f, -1010f, 678f)), Struct_4(vec3<f32>(1222f, -479f, -2089f)), Struct_4(vec3<f32>(468f, -663f, 771f)), Struct_4(vec3<f32>(-1383f, 540f, 999f)), Struct_4(vec3<f32>(-995f, -797f, 1389f)), Struct_4(vec3<f32>(594f, 1241f, -581f)), Struct_4(vec3<f32>(-758f, 479f, -544f)));

var<private> global2: array<Struct_3, 26>;

var<private> global3: f32 = 1030f;

var<private> global4: Struct_1 = Struct_1(vec2<u32>(22065u, 0u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> u32 {
    let var_0 = -1977f;
    let var_1 = 20197i;
    let var_2 = ~_wgslsmith_div_u32(0u, ((u_input.a | u_input.a) & ~u_input.a) >> (31471u % 32u));
    global3 = 289f;
    global2 = array<Struct_3, 26>();
    return var_2;
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    global1 = array<Struct_4, 18>();
    var var_0 = ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 307i), vec2<i32>(~(-2147483647i), 0i)));
    let var_1 = !(!any(!select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(true, arg_0.x, false, false), vec4<bool>(true, true, arg_0.x, false))));
    global2 = array<Struct_3, 26>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -180f)), Struct_1(vec2<u32>(abs(global4.a.x), abs(1u))), min(countOneBits(~vec2<u32>(31047u, 1u)), global4.a), Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, max(global4.a.x, 71672u)), ~vec2<u32>(global4.a.x, 28748u))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.a + var_2.a)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 507f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1914f, -1294f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1502f, 1213f) * vec2<f32>(-707f, -982f)))))), vec2<f32>(1f, 1f)));
    global0 = array<Struct_4, 27>();
    let var_1 = true;
    var var_2 = Struct_3(select(vec3<bool>(true, true, var_1), select(vec3<bool>(true, false || var_1, var_1), vec3<bool>(true, true, true), select(vec3<bool>(false, var_1, false), select(vec3<bool>(false, var_1, false), vec3<bool>(var_1, var_1, false), true), var_1)), select(var_1, var_1, !var_1)), select(var_1, var_1, (var_1 || any(vec4<bool>(var_1, var_1, true, true))) & select(false, true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(653f - 1217f) * _wgslsmith_f_op_f32(floor(-307f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -854f, 1000f, -404f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-271f, var_0.x, var_0.x, var_0.x))))))));
    var var_3 = Struct_1(vec2<u32>(72752u, _wgslsmith_clamp_u32(global4.a.x, countOneBits(~9752u), ~(~4294967295u))));
    return 32424u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(func_2(vec3<u32>(global4.a.x, 1u, ~0u), func_1(), -max(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(82209i, -2147483647i)), ~vec4<i32>(0i, 2147483647i, 1i, -1i) >> (vec4<u32>(1u, 96363u, u_input.a, u_input.a) % vec4<u32>(32u))), ~(u_input.a | u_input.a)), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(var_0.d.x + -446f)), (u_input.a <= global4.a.x) & var_0.a.x))), vec3<u32>(~func_2(select(vec3<u32>(0u, 4266u, 55872u), vec3<u32>(4294967295u, 4294967295u, global4.a.x), var_0.a), global4.a.x, ~vec2<i32>(-8092i, 2147483647i), vec4<i32>(-1i, 2147483647i, -2147483647i, -2147483647i)), _wgslsmith_sub_u32(~(global4.a.x >> (39546u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, global4.a.x), ~vec4<u32>(global4.a.x, u_input.a, u_input.a, u_input.a))), max(_wgslsmith_sub_u32(_wgslsmith_add_u32(global4.a.x, u_input.a), u_input.a), ~_wgslsmith_add_u32(57265u, 48314u))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global4.a.x, u_input.a, 102823u), vec3<u32>(u_input.a, 28301u, 1u)), firstLeadingBit(firstTrailingBit(4892u))), func_1()), -1i);
}

