struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<f32>(-134f, 1000f, -650f, 1026f), vec2<i32>(8387i, 1i)), Struct_1(vec4<f32>(348f, -1504f, -1252f, -914f), vec2<i32>(1i, -1883i)), Struct_1(vec4<f32>(-397f, 1000f, 853f, -768f), vec2<i32>(1i, -11092i)), Struct_1(vec4<f32>(-293f, 1172f, 1599f, 721f), vec2<i32>(14778i, 2147483647i)), Struct_1(vec4<f32>(579f, 710f, -1200f, -871f), vec2<i32>(-1i, 46928i)), Struct_1(vec4<f32>(-1000f, 1173f, 293f, -1390f), vec2<i32>(1i, -1i)), Struct_1(vec4<f32>(471f, 269f, -1165f, -1662f), vec2<i32>(10953i, 44974i)), Struct_1(vec4<f32>(484f, -187f, 1583f, 121f), vec2<i32>(1i, -6494i)), Struct_1(vec4<f32>(-1000f, 1000f, -436f, 576f), vec2<i32>(1i, -21078i)), Struct_1(vec4<f32>(1085f, 1164f, -1139f, 523f), vec2<i32>(i32(-2147483648), -26683i)), Struct_1(vec4<f32>(1035f, -1941f, 847f, 693f), vec2<i32>(0i, -21049i)), Struct_1(vec4<f32>(-334f, -236f, -240f, 2271f), vec2<i32>(i32(-2147483648), 7367i)), Struct_1(vec4<f32>(1270f, 1935f, -1793f, -1862f), vec2<i32>(6120i, -1i)), Struct_1(vec4<f32>(1055f, 1136f, -625f, -1073f), vec2<i32>(-1i, -39957i)), Struct_1(vec4<f32>(925f, -338f, -929f, 302f), vec2<i32>(7401i, 1i)), Struct_1(vec4<f32>(277f, -290f, 394f, 597f), vec2<i32>(22939i, i32(-2147483648))), Struct_1(vec4<f32>(152f, -932f, -826f, -1691f), vec2<i32>(267i, 1i)), Struct_1(vec4<f32>(144f, 817f, -1000f, 1000f), vec2<i32>(0i, 0i)), Struct_1(vec4<f32>(-103f, 1144f, 288f, 1286f), vec2<i32>(-1i, -1i)), Struct_1(vec4<f32>(-717f, 1960f, 851f, 132f), vec2<i32>(2147483647i, -30195i)), Struct_1(vec4<f32>(-1193f, -290f, -102f, 670f), vec2<i32>(3447i, 2147483647i)), Struct_1(vec4<f32>(468f, -527f, 1719f, 1180f), vec2<i32>(-41336i, 26011i)), Struct_1(vec4<f32>(1142f, 1074f, 1158f, -998f), vec2<i32>(-30466i, i32(-2147483648))), Struct_1(vec4<f32>(-752f, -113f, -1369f, 150f), vec2<i32>(1i, -2997i)), Struct_1(vec4<f32>(108f, -2067f, -826f, 685f), vec2<i32>(-44287i, 67670i)), Struct_1(vec4<f32>(-517f, 101f, 1635f, -921f), vec2<i32>(-133i, 2147483647i)), Struct_1(vec4<f32>(-305f, 1754f, -886f, 457f), vec2<i32>(-69968i, i32(-2147483648))), Struct_1(vec4<f32>(-816f, 216f, 294f, 1383f), vec2<i32>(i32(-2147483648), -26872i)), Struct_1(vec4<f32>(1821f, 2167f, 1000f, 2039f), vec2<i32>(1i, 987i)));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(581f, 1435f, -1296f, 1341f), vec2<i32>(23677i, -1i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    global0 = array<Struct_1, 29>();
    var var_0 = !(!select(vec4<bool>(u_input.b.x <= 0u, true, true, true), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true), true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), true)));
    var var_1 = ~0u;
    return global1.a;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    return !select(!select(!vec4<bool>(arg_1, arg_1, false, arg_1), !vec4<bool>(arg_1, false, true, arg_1), u_input.e.x == u_input.e.x), vec4<bool>(~0i < ~arg_0.b.x, true, false, _wgslsmith_div_f32(-659f, arg_0.a.x) == arg_0.a.x), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> vec2<bool> {
    var var_0 = true || !arg_2.a.x;
    var var_1 = global1.b.x;
    var var_2 = ~abs(_wgslsmith_mod_u32(select(u_input.e.x, 23091u, arg_2.a.x || arg_2.a.x), 4294967295u));
    var_1 = firstLeadingBit(global1.b.x);
    global1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global1.a.x, arg_1)), global1.a.x, -467f, _wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_f_op_vec4_f32(global1.a * global1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, arg_1, arg_1, global1.a.x), _wgslsmith_f_op_vec4_f32(min(global1.a, global1.a)))))), firstTrailingBit((~global1.b ^ (global1.b << (vec2<u32>(arg_3, arg_3) % vec2<u32>(32u)))) << (~u_input.e.yx % vec2<u32>(32u))));
    return vec2<bool>(arg_0.x, false);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = true;
    var var_1 = Struct_2(!func_4(func_3(Struct_1(vec4<f32>(global1.a.x, arg_1.a.x, -618f, arg_1.a.x), vec2<i32>(12746i, -61071i)), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-global1.a.x))), arg_0, max(4294967295u, 1u ^ u_input.b.x)));
    let var_2 = arg_0;
    var_0 = false | !var_2.a.x;
    global0 = array<Struct_1, 29>();
    return select(select(select(vec4<bool>(true, true, true, var_2.a.x), select(select(vec4<bool>(true, arg_0.a.x, false, arg_0.a.x), vec4<bool>(false, false, false, var_2.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false)), select(vec4<bool>(false, var_2.a.x, arg_0.a.x, var_2.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, true, true), vec4<bool>(true, var_1.a.x, arg_0.a.x, false)), false), select(select(vec4<bool>(false, var_2.a.x, true, true), vec4<bool>(var_1.a.x, var_2.a.x, true, var_1.a.x), arg_0.a.x), !vec4<bool>(var_1.a.x, false, true, true), !vec4<bool>(arg_0.a.x, var_1.a.x, false, var_2.a.x))), vec4<bool>(true | all(vec3<bool>(arg_0.a.x, true, var_1.a.x)), true, all(var_2.a), false), !func_3(Struct_1(global1.a, vec2<i32>(u_input.a.x, u_input.a.x)), u_input.e.x <= 1u)), vec4<bool>(all(!func_3(Struct_1(arg_1.a, vec2<i32>(1i, 1i)), true)), true, var_2.a.x, true), select(!(!(!vec4<bool>(false, var_1.a.x, var_2.a.x, true))), vec4<bool>(false, any(vec3<bool>(var_2.a.x, true, arg_0.a.x)), var_1.a.x, _wgslsmith_f_op_f32(min(arg_1.a.x, -669f)) <= _wgslsmith_f_op_f32(global1.a.x - -1000f)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.x, 0i), global1.b), -vec2<i32>(-11918i, -1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global1.a)))), select(!func_2(Struct_2(vec2<bool>(false, true)), Struct_1(global1.a, u_input.a.zy)), vec4<bool>(false, any(vec3<bool>(false, false, false)), all(vec4<bool>(false, false, false, false)), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false)))), -u_input.a.wz >> (~(~(~u_input.e.yw)) % vec2<u32>(32u)));
    var var_0 = Struct_2(func_3(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true).wy);
    var var_1 = select(select(select(func_3(Struct_1(vec4<f32>(global1.a.x, global1.a.x, 579f, 108f), vec2<i32>(-22394i, u_input.a.x)), var_0.a.x || false).yzy, vec3<bool>(func_2(Struct_2(vec2<bool>(var_0.a.x, var_0.a.x)), Struct_1(global1.a, vec2<i32>(u_input.d.x, 2147483647i))).x, !var_0.a.x, global1.b.x > 1i), var_0.a.x), !(!func_2(Struct_2(vec2<bool>(var_0.a.x, var_0.a.x)), global0[_wgslsmith_index_u32(45217u, 29u)]).ywz), !(!vec3<bool>(false, var_0.a.x, var_0.a.x))), vec3<bool>(!((var_0.a.x & false) || all(vec3<bool>(var_0.a.x, true, false))), ~1u == ~u_input.b.x, all(!select(vec4<bool>(true, true, true, var_0.a.x), vec4<bool>(true, false, var_0.a.x, true), true))), true);
    var_1 = !vec3<bool>(false, var_0.a.x, var_1.x);
    let var_2 = vec2<i32>(i32(-1i) * -firstLeadingBit(~(-32402i)), reverseBits(-32126i));
    let var_3 = global0[_wgslsmith_index_u32(40339u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global1.a.x, -684f, 447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.a.x)))), ~vec2<i32>(-1i, min(-28735i, max(u_input.d.x, global1.b.x))));
}

