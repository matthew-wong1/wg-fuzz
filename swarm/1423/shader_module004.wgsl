struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: array<i32, 3>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<f32>(-584f, 1541f, 1142f, -2147f), vec3<bool>(true, false, false), false, vec3<u32>(0u, 37664u, 4294967295u)), Struct_1(vec4<f32>(-1874f, -1110f, -429f, -1348f), vec3<bool>(false, true, true), true, vec3<u32>(29154u, 0u, 7499u)), Struct_1(vec4<f32>(-339f, 1095f, 1000f, -578f), vec3<bool>(true, true, false), true, vec3<u32>(2163u, 4294967295u, 0u)), Struct_1(vec4<f32>(269f, 1017f, 683f, 1133f), vec3<bool>(false, false, false), false, vec3<u32>(4294967295u, 1u, 31429u)), Struct_1(vec4<f32>(-492f, -1104f, 1352f, 462f), vec3<bool>(false, false, true), true, vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec4<f32>(1000f, 397f, 750f, 1000f), vec3<bool>(false, false, false), false, vec3<u32>(26096u, 31517u, 6083u)), Struct_1(vec4<f32>(1207f, -310f, -516f, -818f), vec3<bool>(true, true, true), false, vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec4<f32>(1844f, 160f, -1377f, 1016f), vec3<bool>(true, true, true), true, vec3<u32>(1u, 44940u, 1u)), Struct_1(vec4<f32>(-560f, 956f, 1036f, 761f), vec3<bool>(true, false, false), false, vec3<u32>(4294967295u, 2634u, 62683u)), Struct_1(vec4<f32>(480f, -840f, 370f, 537f), vec3<bool>(false, true, false), true, vec3<u32>(4294967295u, 47417u, 1u)), Struct_1(vec4<f32>(-193f, 322f, 246f, 975f), vec3<bool>(true, true, false), false, vec3<u32>(36918u, 56083u, 1u)), Struct_1(vec4<f32>(1344f, -305f, -1606f, 962f), vec3<bool>(true, true, false), true, vec3<u32>(1u, 0u, 0u)), Struct_1(vec4<f32>(-175f, -1202f, -780f, 411f), vec3<bool>(false, false, true), true, vec3<u32>(45220u, 0u, 120236u)), Struct_1(vec4<f32>(-459f, 1000f, -1298f, -916f), vec3<bool>(true, true, false), true, vec3<u32>(4294967295u, 4294967295u, 8821u)), Struct_1(vec4<f32>(-155f, 1000f, -1446f, 466f), vec3<bool>(true, false, false), true, vec3<u32>(22499u, 115u, 24961u)), Struct_1(vec4<f32>(518f, 384f, -1403f, -892f), vec3<bool>(false, false, true), true, vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec4<f32>(-1000f, 896f, -411f, -884f), vec3<bool>(true, true, true), false, vec3<u32>(98313u, 1u, 6042u)), Struct_1(vec4<f32>(-972f, -229f, 1116f, -1000f), vec3<bool>(true, false, false), true, vec3<u32>(37922u, 49645u, 74471u)), Struct_1(vec4<f32>(1054f, 942f, -302f, 2086f), vec3<bool>(false, true, false), true, vec3<u32>(0u, 1u, 33412u)), Struct_1(vec4<f32>(-1685f, -1630f, -2851f, 1403f), vec3<bool>(true, true, false), false, vec3<u32>(47644u, 10627u, 1u)), Struct_1(vec4<f32>(-727f, -371f, -1479f, 1195f), vec3<bool>(false, false, false), true, vec3<u32>(1u, 36816u, 0u)), Struct_1(vec4<f32>(702f, 480f, 1000f, -879f), vec3<bool>(true, true, true), true, vec3<u32>(4294967295u, 78682u, 4294967295u)), Struct_1(vec4<f32>(934f, -963f, 1680f, -1744f), vec3<bool>(true, true, true), false, vec3<u32>(14652u, 5129u, 0u)), Struct_1(vec4<f32>(-558f, 1195f, -1809f, 1253f), vec3<bool>(false, false, false), true, vec3<u32>(44291u, 61909u, 1155u)), Struct_1(vec4<f32>(2209f, 572f, -364f, 1000f), vec3<bool>(false, true, true), true, vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(vec4<f32>(-680f, -571f, -380f, 779f), vec3<bool>(false, true, false), false, vec3<u32>(0u, 6686u, 91632u)), Struct_1(vec4<f32>(-433f, 843f, -544f, 552f), vec3<bool>(false, true, false), true, vec3<u32>(4294967295u, 35965u, 57751u)), Struct_1(vec4<f32>(-817f, 1000f, 1000f, 1310f), vec3<bool>(true, false, true), true, vec3<u32>(0u, 53974u, 15963u)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(938f + -1091f), 328f, _wgslsmith_f_op_f32(-674f * -352f), _wgslsmith_f_op_f32(-798f * -1770f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(753f, 267f, -842f, -1400f) - vec4<f32>(-1000f, -1000f, -1000f, 1557f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(532f, -834f, -1600f, -1282f), vec4<f32>(-1357f, 1558f, -196f, 883f))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1288f, 1352f)), _wgslsmith_f_op_f32(round(-598f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(414f)) - _wgslsmith_f_op_f32(f32(-1f) * -177f)), -299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(719f + -297f) + _wgslsmith_f_op_f32(floor(203f))))));
    var var_1 = -1974f;
    global0 = array<i32, 3>();
    var var_2 = false;
    global0 = array<i32, 3>();
    return vec3<bool>(false, false, true);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a.xy;
    let var_1 = arg_0;
    let var_2 = arg_0.c;
    var var_3 = arg_0;
    var var_4 = ~(~firstLeadingBit(~76982u));
    return Struct_1(arg_0.a, func_3(!vec3<bool>(true, var_3.c, var_3.b.x & var_2)), any(vec4<bool>(!(var_3.a.x == -672f), (u_input.c.x > arg_0.d.x) && true, false, true)), min(~var_3.d, _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, 29185u, u_input.c.x), ~select(arg_0.d, u_input.c.xww, arg_0.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = func_2(arg_0);
    let var_1 = any(vec2<bool>(false == all(vec4<bool>(true, true, true, var_0.c)), !(true && func_3(var_0.b).x)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(473f, arg_2.a.x)), 396f, _wgslsmith_div_f32(arg_3, var_0.a.x));
    global1 = var_0.c;
    global1 = true;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.a.x, arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~1u & _wgslsmith_mod_u32(~u_input.c.x, ~_wgslsmith_dot_vec2_u32(~u_input.c.yz, vec2<u32>(47295u, 24922u) >> (u_input.c.zy % vec2<u32>(32u)))), 3u)];
    let var_1 = global2[_wgslsmith_index_u32(7818u, 28u)];
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(u_input.c.x, 28u)], vec4<f32>(var_1.a.x, -3437f, var_1.a.x, -552f), global2[_wgslsmith_index_u32(49809u, 28u)], 1757f)))), 900f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(778f, var_1.a.x) * _wgslsmith_f_op_f32(798f - 1364f)))), -144f), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1338f + 2144f))), 2029f)), -558f, var_1.a.x, -599f));
    global1 = !(!(15579u == var_1.d.x));
    var_0 = -select(abs(~firstLeadingBit(u_input.b)), ~abs(47331i | global0[_wgslsmith_index_u32(36996u, 3u)]), true);
    let x = u_input.a;
    s_output = StorageBuffer(752f);
}

