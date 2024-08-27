struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
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

var<private> global0: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(Struct_3(vec2<f32>(-292f, 1211f)), vec4<f32>(-440f, -335f, 381f, -1071f)), Struct_5(Struct_3(vec2<f32>(1000f, -1065f)), vec4<f32>(-362f, 1000f, -741f, -409f)), Struct_5(Struct_3(vec2<f32>(1776f, -1498f)), vec4<f32>(-633f, 1919f, -110f, -666f)), Struct_5(Struct_3(vec2<f32>(930f, -1000f)), vec4<f32>(-443f, 897f, 1100f, -487f)), Struct_5(Struct_3(vec2<f32>(657f, -1000f)), vec4<f32>(-383f, 933f, 1775f, -1245f)), Struct_5(Struct_3(vec2<f32>(675f, 1225f)), vec4<f32>(-1000f, -121f, 2442f, 2017f)), Struct_5(Struct_3(vec2<f32>(-594f, 812f)), vec4<f32>(-729f, 1937f, 662f, 462f)), Struct_5(Struct_3(vec2<f32>(2144f, -299f)), vec4<f32>(-1000f, 1392f, 1331f, -1023f)), Struct_5(Struct_3(vec2<f32>(-405f, 143f)), vec4<f32>(-1584f, 660f, 2242f, 964f)), Struct_5(Struct_3(vec2<f32>(-383f, 501f)), vec4<f32>(560f, 1029f, 614f, -714f)), Struct_5(Struct_3(vec2<f32>(1000f, -766f)), vec4<f32>(1140f, 1553f, 860f, -426f)), Struct_5(Struct_3(vec2<f32>(-434f, -166f)), vec4<f32>(-639f, 563f, 902f, -592f)), Struct_5(Struct_3(vec2<f32>(1910f, 1590f)), vec4<f32>(-1183f, 1719f, -1811f, 861f)), Struct_5(Struct_3(vec2<f32>(437f, 738f)), vec4<f32>(-694f, 1000f, -109f, 714f)), Struct_5(Struct_3(vec2<f32>(-1642f, 514f)), vec4<f32>(1312f, -606f, 546f, 1000f)), Struct_5(Struct_3(vec2<f32>(1185f, 833f)), vec4<f32>(-624f, 100f, 1189f, -375f)), Struct_5(Struct_3(vec2<f32>(-743f, -252f)), vec4<f32>(149f, -1000f, -526f, 936f)), Struct_5(Struct_3(vec2<f32>(914f, -1000f)), vec4<f32>(-1387f, -338f, 1003f, -422f)), Struct_5(Struct_3(vec2<f32>(-1374f, -537f)), vec4<f32>(224f, 594f, 701f, -1273f)), Struct_5(Struct_3(vec2<f32>(751f, 473f)), vec4<f32>(537f, -978f, -293f, 1000f)), Struct_5(Struct_3(vec2<f32>(-264f, 1132f)), vec4<f32>(-1782f, -569f, -552f, -1000f)), Struct_5(Struct_3(vec2<f32>(-1030f, -1068f)), vec4<f32>(261f, -148f, -1397f, 823f)), Struct_5(Struct_3(vec2<f32>(-473f, -240f)), vec4<f32>(580f, -137f, -1195f, -127f)), Struct_5(Struct_3(vec2<f32>(3651f, -1742f)), vec4<f32>(-1233f, -1869f, 1067f, 1418f)), Struct_5(Struct_3(vec2<f32>(-1818f, -567f)), vec4<f32>(1000f, -792f, 1410f, 206f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4) -> vec3<f32> {
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.c.a.xy, vec2<f32>(arg_0.c.a.x, arg_0.c.a.x), vec2<bool>(arg_2.a.x, arg_2.a.x))))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1002f, arg_2.c.a.x, arg_0.c.a.x, 1767f), vec4<f32>(arg_0.c.a.x, -475f, arg_2.c.a.x, 1123f), arg_0.a.x)), vec4<f32>(arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x, 1859f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.c.a.x, arg_0.c.a.x, -434f, arg_0.c.a.x), vec4<f32>(998f, 611f, arg_2.c.a.x, 2051f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.a.x, arg_2.c.a.x, arg_2.c.a.x, arg_2.c.a.x) * vec4<f32>(arg_0.c.a.x, arg_2.c.a.x, 1444f, -457f)))))));
    var var_1 = _wgslsmith_add_u32(u_input.c.x, ~abs(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_2.b, arg_0.c.c), arg_0.b)));
    let var_2 = arg_2;
    let var_3 = var_0.a;
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(59936u, _wgslsmith_sub_u32(arg_2.b, ~(_wgslsmith_add_u32(var_2.b, u_input.c.x) | _wgslsmith_sub_u32(31850u, var_2.c.c)))), 25u)];
    return vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_2.c.a.x)), -670f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1538f)), (true & arg_0.a.x) & false)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_2() -> vec4<bool> {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_4(vec4<bool>(true, true, var_0.x, false), abs(u_input.c.x), Struct_1(vec3<f32>(-172f, -445f, -1468f), u_input.a.x, u_input.c.x, u_input.b, vec2<i32>(u_input.b, u_input.a.x)), Struct_2(vec4<u32>(1u, u_input.c.x, 0u, u_input.c.x), vec2<i32>(u_input.b, u_input.b), vec3<i32>(u_input.b, 15498i, -17507i))), 0i & select(u_input.b, -38909i, var_0.x), Struct_4(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), var_0.x), u_input.c.x, Struct_1(vec3<f32>(1161f, -1000f, -161f), 43649i, u_input.c.x, 0i, vec2<i32>(u_input.b, -1i)), Struct_2(vec4<u32>(u_input.c.x, 42004u, 94285u, 8800u), vec2<i32>(0i, u_input.a.x), u_input.a))))), u_input.b, ~u_input.c.x, ~u_input.b, -vec2<i32>(u_input.a.x, -36363i | _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)));
    global0 = array<Struct_5, 25>();
    global0 = array<Struct_5, 25>();
    let var_2 = var_0;
    return vec4<bool>(var_0.x, u_input.a.x > _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, ~0i), ~(~u_input.b)), !var_0.x, any(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(var_2.x, var_2.x, false, false), vec4<bool>(var_2.x, false, true, true)), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, true, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_2.x)), !var_2.x), vec4<bool>(true, true, true, true), !select(true, var_0.x, var_2.x))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: vec3<i32>) -> bool {
    global0 = array<Struct_5, 25>();
    global0 = array<Struct_5, 25>();
    var var_0 = any(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(true, true, false)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), func_2()));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1f, 1432f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -619f))))));
    var var_2 = Struct_2(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(39275u ^ u_input.c.x, select(0u, 1u, true), max(u_input.c.x, 0u), reverseBits(0u))), _wgslsmith_mult_vec4_u32((vec4<u32>(0u, 35094u, u_input.c.x, u_input.c.x) << (vec4<u32>(26131u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) >> (vec4<u32>(u_input.c.x, u_input.c.x, 62663u, 1u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(235u, u_input.c.x, u_input.c.x, 43417u)))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, u_input.b), -vec2<i32>(95799i, -2147483647i)), firstTrailingBit(-u_input.a.x)), reverseBits(-(arg_3 | (vec3<i32>(0i, arg_2, arg_3.x) & arg_3))));
    return all(select(vec4<bool>(_wgslsmith_f_op_f32(floor(var_1.a.x)) <= var_1.a.x, true, false, true), func_2(), vec4<bool>(_wgslsmith_f_op_f32(-1268f - var_1.a.x) != 1214f, false, true, true)));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = arg_2.xz;
    var var_1 = select(!(var_0.x || arg_2.x), true, arg_2.x);
    global0 = array<Struct_5, 25>();
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(i32(-1i) * -34149i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~(u_input.c.xz | vec2<u32>(u_input.c.x, 15670u)), ~vec2<u32>(42091u, u_input.c.x)), u_input.c.x >> (_wgslsmith_mod_u32(~u_input.c.x, u_input.c.x) % 32u)), 25u)], select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), true), any(vec2<bool>(false, true))), !func_1(select(u_input.a.x, u_input.b, false), u_input.a.x, u_input.a.x, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 42313i, -1i), u_input.a))));
    var var_1 = Struct_5(func_4(24608i, Struct_5(func_4(abs(u_input.a.x), Struct_5(Struct_3(vec2<f32>(-292f, var_0.a.x)), vec4<f32>(-1000f, 300f, var_0.a.x, var_0.a.x)), vec4<bool>(false, true, true, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-241f, var_0.a.x, var_0.a.x, 109f), vec4<f32>(var_0.a.x, var_0.a.x, 995f, 1403f), vec4<bool>(false, false, false, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))), vec4<bool>(true != (var_0.a.x >= var_0.a.x), true, true, func_1(_wgslsmith_mod_i32(u_input.a.x, 15810i), u_input.b, abs(u_input.a.x), u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1182f, _wgslsmith_f_op_f32(-405f - var_0.a.x), 344f, _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1068f, var_0.a.x, 716f, -536f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, 2349f, 443f))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1087f, var_0.a.x, -1000f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1348f, 555f, var_0.a.x, 1000f)))))));
    global0 = array<Struct_5, 25>();
    let var_2 = _wgslsmith_f_op_f32(sign(var_1.b.x));
    let var_3 = Struct_4(select(func_2(), vec4<bool>(false, _wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(25204u, 4294967295u)) <= (u_input.c.x | 1u), true, true), vec4<bool>(true, any(vec3<bool>(false, true, true)), true, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(min(firstTrailingBit(0u), u_input.c.x ^ 4294967295u), ~(~78465u), ~u_input.c.x, reverseBits(u_input.c.x)), ~vec4<u32>(u_input.c.x, 28082u, _wgslsmith_add_u32(u_input.c.x, 1u), u_input.c.x ^ u_input.c.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.zxx)), firstLeadingBit(-_wgslsmith_mod_i32(13793i, 1i)), u_input.c.x, abs(u_input.a.x), (select(vec2<i32>(u_input.a.x, u_input.b), vec2<i32>(u_input.a.x, -1i), true) & select(u_input.a.zz, vec2<i32>(45593i, u_input.b), false)) >> (select(vec2<u32>(u_input.c.x, u_input.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 7753u), u_input.c.xx), var_2 != -137f) % vec2<u32>(32u))), Struct_2(~vec4<u32>(firstLeadingBit(u_input.c.x), min(u_input.c.x, u_input.c.x), _wgslsmith_add_u32(u_input.c.x, u_input.c.x), u_input.c.x ^ u_input.c.x), max(u_input.a.yy & max(vec2<i32>(-1i, u_input.a.x), u_input.a.yx), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), u_input.a.xy)), u_input.a));
    global0 = array<Struct_5, 25>();
    var var_4 = global0[_wgslsmith_index_u32(u_input.c.x >> (select(abs(_wgslsmith_div_u32(var_3.c.c, u_input.c.x)), 4168u, true) % 32u), 25u)];
    var_1 = global0[_wgslsmith_index_u32(18022u, 25u)];
    var_4 = global0[_wgslsmith_index_u32(1u, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.a.x - var_1.a.a.x)) * _wgslsmith_f_op_f32(-var_0.a.x)) - _wgslsmith_f_op_f32(round(var_1.a.a.x))));
}

