struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true));

var<private> global2: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-1660f, 481f, 1620f), vec3<f32>(2220f, 1494f, 1366f), vec3<f32>(1000f, -290f, -2089f), vec3<f32>(986f, 626f, 1180f), vec3<f32>(-1000f, -583f, 1855f), vec3<f32>(755f, 980f, -1272f), vec3<f32>(514f, 1153f, 336f), vec3<f32>(2443f, 1316f, 456f), vec3<f32>(-685f, -1060f, 1212f), vec3<f32>(522f, -1682f, 387f), vec3<f32>(760f, -336f, -1577f), vec3<f32>(-1000f, 1342f, -747f), vec3<f32>(-1328f, -143f, -531f), vec3<f32>(1326f, -462f, -1000f), vec3<f32>(-1807f, 678f, -1823f), vec3<f32>(-229f, 633f, -264f), vec3<f32>(-223f, -1233f, 1968f), vec3<f32>(-549f, 361f, 939f), vec3<f32>(1183f, 948f, 572f), vec3<f32>(-183f, -435f, 155f), vec3<f32>(119f, 533f, -878f), vec3<f32>(-168f, -679f, -259f), vec3<f32>(1647f, 1312f, 711f), vec3<f32>(1076f, 884f, -712f), vec3<f32>(-1998f, -1746f, 1395f), vec3<f32>(1343f, -1672f, -668f), vec3<f32>(1130f, 187f, 1225f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> bool {
    var var_0 = 4294967295u;
    global0 = (~_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(4294967295u, 48649u), 0u) << (1u % 32u)) == ((~(~0u) & firstTrailingBit(1u)) << (max(~4294967295u, ~(~0u)) % 32u));
    var var_1 = all(vec4<bool>(global1.a.x, false, false, true));
    var var_2 = global1.a;
    global2 = array<vec3<f32>, 27>();
    return all(select(!select(vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x), select(vec4<bool>(global1.a.x, true, true, global1.a.x), vec4<bool>(true, global1.a.x, false, var_2.x), vec4<bool>(true, var_2.x, global1.a.x, false)), arg_1.x > arg_1.x), !(!select(vec4<bool>(true, true, var_2.x, true), vec4<bool>(false, global1.a.x, false, var_2.x), vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x))), vec4<bool>((var_2.x | false) || true, var_2.x, false, any(select(vec4<bool>(false, var_2.x, false, true), vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(true, false, var_2.x, true))))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = u_input.a;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(330f + -310f)), -1114f, _wgslsmith_f_op_f32(f32(-1f) * -1264f), -471f)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1920f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-779f + -824f)))));
    global2 = array<vec3<f32>, 27>();
    global2 = array<vec3<f32>, 27>();
    return var_1;
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_mod_i32(~(-u_input.a), select(min(u_input.a, 15589i), firstLeadingBit(i32(-1i) * -1i), !any(global1.a))) << (_wgslsmith_dot_vec3_u32(max(min(vec3<u32>(0u, 20608u, 41502u), firstTrailingBit(vec3<u32>(4294967295u, 1u, 4294967295u))), ~vec3<u32>(1u, 1u, 1u)), max(vec3<u32>(_wgslsmith_div_u32(21u, 4294967295u), select(0u, 0u, global1.a.x), 1u), vec3<u32>(reverseBits(4294967295u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(71002u, 0u), vec2<u32>(15350u, 14783u))))) % 32u);
    let var_1 = arg_0.a.xy;
    let var_2 = 859f;
    global0 = false;
    let var_3 = select(true, all(select(vec2<bool>(all(vec3<bool>(global1.a.x, global1.a.x, true)), !global1.a.x), select(vec2<bool>(false, global1.a.x), !vec2<bool>(global1.a.x, global1.a.x), global1.a.zz), true)), all(vec2<bool>(global1.a.x, global1.a.x)));
    return !func_1(abs(u_input.a), vec4<f32>(_wgslsmith_f_op_f32(-993f - var_2), _wgslsmith_f_op_f32(round(1566f)), arg_0.a.x, -1828f)) == false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 27>();
    global1 = Struct_1(vec3<bool>(!func_1(1i, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(636f, 127f, 628f, -1134f)))), all(vec2<bool>(true, all(vec2<bool>(true, false)))), true));
    var var_0 = select(!(!select(vec2<bool>(false, false), vec2<bool>(true, global1.a.x), select(global1.a.yx, vec2<bool>(global1.a.x, true), false))), !select(vec2<bool>(true, true), !(!global1.a.xy), func_3(func_2(vec3<u32>(20959u, 1u, 4294967295u)))), false);
    global0 = !all(!select(select(global1.a, global1.a, false), select(global1.a, vec3<bool>(true, false, var_0.x), global1.a), !vec3<bool>(true, true, var_0.x)));
    var_0 = select(global1.a.yy, global1.a.xz, global1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(u_input.b.yx, vec2<i32>(-u_input.b.x, -7906i)) << (~abs(vec2<u32>(0u, 11042u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(2490u, 27u)])))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(900f, 788f, var_0.x))), true)) + -293f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1528f, 1054f)))))));
}

