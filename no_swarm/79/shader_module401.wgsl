struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1 = Struct_1(-675f, 1u, vec4<f32>(1000f, 1105f, 1617f, 428f), vec3<f32>(-918f, -249f, 496f));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(658f, 5565u, vec4<f32>(1643f, 698f, 1209f, 802f), vec3<f32>(-1163f, 2293f, 774f)), Struct_1(-1258f, 0u, vec4<f32>(258f, 215f, 1000f, -180f), vec3<f32>(-334f, 594f, -134f)), Struct_1(-1793f, 0u, vec4<f32>(1378f, 1466f, -244f, 331f), vec3<f32>(415f, -303f, -1631f)), Struct_1(-436f, 0u, vec4<f32>(629f, -970f, -117f, -759f), vec3<f32>(308f, 790f, -130f)), Struct_1(1063f, 0u, vec4<f32>(1677f, -233f, 1872f, 323f), vec3<f32>(859f, 1128f, -808f)), Struct_1(-627f, 28238u, vec4<f32>(-1000f, -842f, 780f, 2044f), vec3<f32>(-1000f, -1100f, -1000f)), Struct_1(-315f, 34554u, vec4<f32>(1432f, 641f, -160f, -741f), vec3<f32>(-234f, 877f, -1234f)), Struct_1(-1376f, 23443u, vec4<f32>(439f, 305f, -541f, -481f), vec3<f32>(240f, 138f, -1556f)), Struct_1(1289f, 0u, vec4<f32>(-984f, -374f, 1051f, 615f), vec3<f32>(605f, -149f, -1000f)), Struct_1(-1661f, 1u, vec4<f32>(740f, -782f, -2248f, -473f), vec3<f32>(1735f, -215f, -1207f)), Struct_1(-774f, 1u, vec4<f32>(-1436f, 392f, 2401f, 1021f), vec3<f32>(-1977f, -265f, -223f)), Struct_1(-193f, 93792u, vec4<f32>(-354f, -788f, -1075f, 2358f), vec3<f32>(978f, -1495f, -2376f)), Struct_1(571f, 42460u, vec4<f32>(-574f, 1138f, 564f, -870f), vec3<f32>(-810f, -511f, -279f)), Struct_1(563f, 11673u, vec4<f32>(-393f, 1450f, -234f, -530f), vec3<f32>(873f, -514f, -2506f)), Struct_1(-2152f, 4294967295u, vec4<f32>(1000f, 1000f, 414f, 1719f), vec3<f32>(-1601f, -896f, 1000f)), Struct_1(514f, 4294967295u, vec4<f32>(1000f, 216f, 169f, 506f), vec3<f32>(621f, -1000f, -567f)), Struct_1(-1754f, 37081u, vec4<f32>(-465f, -525f, 1000f, 188f), vec3<f32>(-1800f, -672f, -666f)), Struct_1(226f, 35795u, vec4<f32>(543f, -481f, 789f, 310f), vec3<f32>(-782f, 253f, -268f)), Struct_1(-1548f, 31803u, vec4<f32>(-169f, 245f, -752f, -1000f), vec3<f32>(1000f, 1000f, -733f)), Struct_1(-1060f, 1u, vec4<f32>(556f, 364f, -216f, -1656f), vec3<f32>(1000f, -2634f, 515f)), Struct_1(2012f, 13011u, vec4<f32>(-116f, -129f, 1393f, 2245f), vec3<f32>(1317f, 1030f, -899f)), Struct_1(-659f, 0u, vec4<f32>(339f, -1116f, -1000f, -1000f), vec3<f32>(695f, -149f, -425f)), Struct_1(-845f, 4294967295u, vec4<f32>(549f, -1773f, -182f, 325f), vec3<f32>(1552f, -1536f, -1248f)));

var<private> global3: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> f32 {
    let var_0 = !(!select(select(vec4<bool>(global3.x, false, false, global3.x), select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(global3.x, true, true, false), vec4<bool>(global3.x, false, false, true)), vec4<bool>(global3.x, true, false, true)), !(!vec4<bool>(global3.x, global3.x, true, global3.x)), select(select(vec4<bool>(global3.x, global3.x, false, true), vec4<bool>(global3.x, true, global3.x, true), false), !vec4<bool>(false, true, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x))));
    global2 = array<Struct_1, 23>();
    let var_1 = 4294967295u;
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 23u)];
    var var_3 = true;
    return global1.c.x;
}

fn func_2() -> Struct_1 {
    let var_0 = global0.x;
    var var_1 = !global3.x;
    let var_2 = vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(1757f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(413f, global1.d.x, -2057f), global1.d, vec3<bool>(global3.x, global3.x, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x - 159f))) < _wgslsmith_div_f32(-531f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a, -909f, global3.x)))), global3.x, any(select(!vec3<bool>(global3.x, true, true), vec3<bool>(global3.x | true, true, any(vec3<bool>(global3.x, false, true))), vec3<bool>(false, true, false))));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-410f * global1.c.x)));
    var var_4 = ~global0.x;
    return global2[_wgslsmith_index_u32(abs(1u), 23u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(arg_1.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(704f, global1.c.x, arg_0.x, global1.c.x) * vec4<f32>(global1.c.x, arg_0.x, arg_1.a, global1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(148f, arg_0.x, global1.d.x, arg_0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.c, arg_1.c) - global1.c)))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_1.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1306f), arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-535f + -1047f))))))));
    var var_2 = global1.a;
    var var_3 = global2[_wgslsmith_index_u32(~reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, 1u, u_input.c, u_input.c) | vec4<u32>(arg_1.b, arg_1.b, 1u, 20436u), ~vec4<u32>(4294967295u, global1.b, 62388u, arg_1.b)), 8565u)), 23u)];
    global3 = select(select(select(!vec3<bool>(true, true, global3.x), vec3<bool>(true, true, true), any(!vec4<bool>(true, global3.x, global3.x, true))), select(!select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, global3.x, true), vec3<bool>(global3.x, false, false)), vec3<bool>(true, 25365u == arg_1.b, true), false), vec3<bool>(false | any(vec4<bool>(global3.x, false, false, global3.x)), global3.x, arg_1.b < ~32083u)), vec3<bool>(false, !(!(arg_1.a == global1.d.x)), true && (any(vec3<bool>(true, global3.x, false)) & global3.x)), ~(~firstTrailingBit(-1i)) <= _wgslsmith_mult_i32(3936i, u_input.b));
    return _wgslsmith_f_op_f32(-1f);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(1286f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-724f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(select(global1.c.yx, global1.d.zx, global3.x)), func_2(), arg_0.x)))));
    let var_1 = !(!(!any(select(vec2<bool>(global3.x, false), vec2<bool>(global3.x, global3.x), global3.xy))));
    global2 = array<Struct_1, 23>();
    global3 = vec3<bool>(true, any(select(vec3<bool>(global3.x, any(vec3<bool>(true, global3.x, var_1)), false), vec3<bool>(true, true, true), vec3<bool>(global3.x, global3.x, global3.x))), !(!var_1));
    let var_2 = vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(-global1.d.x));
    return Struct_1(_wgslsmith_div_f32(global1.d.x, -886f), func_2().b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, global1.d.x)) + func_2().a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-219f, -479f))) + _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(277f - var_2.x), true))), 444f, 661f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.c.wwz, vec3<f32>(global1.a, 578f, global1.a), vec3<bool>(global3.x, global3.x, var_1))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, -156f, global1.a) * global1.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(countOneBits(-vec4<i32>(u_input.e.x, -1i, _wgslsmith_sub_i32(u_input.d, 41771i), i32(-1i) * -2566i)));
    var var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 23u)];
    global1 = Struct_1(-1917f, var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.d.x, 638f, -431f, var_0.a))) + _wgslsmith_div_vec4_f32(global1.c, global1.c)) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-707f - -267f), _wgslsmith_div_f32(global1.c.x, -619f)))), vec3<f32>(var_0.d.x, -554f, _wgslsmith_f_op_f32(-var_0.d.x)));
    var var_1 = ~vec3<u32>(1u, max(~_wgslsmith_div_u32(u_input.c, 26974u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b, var_0.b, 0u), vec3<u32>(75858u, u_input.c, u_input.c))), var_0.b);
    var var_2 = ~abs(~vec4<i32>(max(-9899i, -15230i), 753i, global0.x, _wgslsmith_sub_i32(global0.x, 13603i)));
    var var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(global1.b, ~global1.b, _wgslsmith_mult_u32(u_input.c, var_1.x), 4294967295u), var_0.d.x);
}

