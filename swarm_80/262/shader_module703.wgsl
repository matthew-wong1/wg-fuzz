struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(Struct_3(-941f, vec3<bool>(false, false, false), Struct_1(76604u), vec4<f32>(663f, 1464f, -706f, -1176f), vec2<u32>(68786u, 44210u)), Struct_1(37651u), -1376f, Struct_3(-101f, vec3<bool>(true, false, false), Struct_1(13643u), vec4<f32>(653f, -984f, -691f, -145f), vec2<u32>(22401u, 0u)), true), Struct_4(Struct_3(429f, vec3<bool>(true, false, true), Struct_1(2384u), vec4<f32>(578f, 950f, 797f, -265f), vec2<u32>(1u, 18952u)), Struct_1(1u), -436f, Struct_3(-246f, vec3<bool>(false, false, false), Struct_1(33992u), vec4<f32>(465f, -228f, 827f, -392f), vec2<u32>(4294967295u, 89u)), false), Struct_4(Struct_3(-1874f, vec3<bool>(true, false, true), Struct_1(3806u), vec4<f32>(167f, -1096f, -100f, -428f), vec2<u32>(17027u, 35939u)), Struct_1(0u), 482f, Struct_3(-951f, vec3<bool>(true, false, false), Struct_1(4294967295u), vec4<f32>(1038f, -411f, -1740f, 1000f), vec2<u32>(1u, 16539u)), false), Struct_4(Struct_3(-198f, vec3<bool>(false, false, true), Struct_1(4294967295u), vec4<f32>(-727f, -347f, 237f, 980f), vec2<u32>(57122u, 20829u)), Struct_1(0u), 1716f, Struct_3(-1395f, vec3<bool>(true, false, true), Struct_1(20234u), vec4<f32>(-235f, 966f, 118f, -230f), vec2<u32>(4294967295u, 0u)), true), Struct_4(Struct_3(1149f, vec3<bool>(false, true, false), Struct_1(4294967295u), vec4<f32>(-703f, 1012f, 682f, -229f), vec2<u32>(0u, 4697u)), Struct_1(1u), -1081f, Struct_3(-237f, vec3<bool>(false, false, true), Struct_1(1u), vec4<f32>(502f, -953f, -803f, -2080f), vec2<u32>(4294967295u, 49484u)), true), Struct_4(Struct_3(-1587f, vec3<bool>(false, true, false), Struct_1(14937u), vec4<f32>(-193f, -2270f, -1208f, 309f), vec2<u32>(4294967295u, 10374u)), Struct_1(4294967295u), 1509f, Struct_3(2233f, vec3<bool>(true, true, false), Struct_1(0u), vec4<f32>(1681f, -202f, -837f, -1000f), vec2<u32>(4294967295u, 1u)), true), Struct_4(Struct_3(999f, vec3<bool>(true, false, false), Struct_1(4294967295u), vec4<f32>(-1341f, 125f, 457f, 1000f), vec2<u32>(0u, 54833u)), Struct_1(4294967295u), -182f, Struct_3(-1000f, vec3<bool>(true, true, false), Struct_1(0u), vec4<f32>(125f, -1695f, 313f, -1072f), vec2<u32>(0u, 25430u)), true));

var<private> global1: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global2: Struct_3 = Struct_3(376f, vec3<bool>(false, true, false), Struct_1(37017u), vec4<f32>(-1779f, 1101f, -1585f, -1074f), vec2<u32>(0u, 56511u));

var<private> global3: array<i32, 6>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_3 {
    global3 = array<i32, 6>();
    var var_0 = ~firstTrailingBit(reverseBits(12848i));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(global2.d.x, _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(111f)))))), _wgslsmith_div_f32(987f, arg_2.a), 2020f, global2.a);
    var var_2 = Struct_5(Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f)), select(vec3<bool>(arg_0.x, false, arg_1.x), vec3<bool>(global2.b.x, true, global2.b.x), select(vec3<bool>(true, true, arg_2.c.x), arg_1.yww, vec3<bool>(arg_1.x, global2.b.x, arg_1.x))), global2.c, _wgslsmith_f_op_vec4_f32(-global2.d), global2.e), global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -869f), _wgslsmith_f_op_f32(f32(-1f) * -1129f)), arg_2.c.www, global2.c, global2.d, global2.e), arg_2.c.x), global2.d.xxz, global2.d);
    var var_3 = global2.d;
    return var_2.a.a;
}

fn func_3(arg_0: Struct_3) -> Struct_5 {
    return Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.c.a, 8008u), vec3<u32>(u_input.c.x, global2.e.x, global2.e.x))), u_input.c.x), 7u)], _wgslsmith_f_op_vec3_f32(-global2.d.wxz), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a, 1663f, -1113f, 2460f))) * arg_0.d), vec4<f32>(global2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x * -324f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1142f))), -549f))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: bool) -> f32 {
    let var_0 = func_3(func_2(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(52041u, 26490u), 19u)], vec4<bool>(false & (arg_2 | arg_2), !(!global2.b.x), true, global2.b.x), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-376f))), abs(-vec4<i32>(29282i, arg_0.x, arg_0.x, u_input.b)), !vec4<bool>(true, true, global2.b.x, global2.b.x), 70446u)));
    global1 = array<vec2<bool>, 19>();
    var var_1 = -377f;
    var var_2 = func_3(var_0.a.a);
    let var_3 = true;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.d.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = true;
    global3 = array<i32, 6>();
    var var_2 = vec3<f32>(569f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(max(896f, global2.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.d.x, -675f)) + global2.a))), global2.a);
    let var_3 = Struct_5(global0[_wgslsmith_index_u32(48212u, 7u)], global2.d.zzw, vec4<f32>(-401f, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -1i), u_input.a), ~vec3<i32>(u_input.a.x, -83168i, -24354i), true))), _wgslsmith_div_f32(func_2(!global2.b.zy, select(vec4<bool>(false, var_0, global2.b.x, false), vec4<bool>(false, global2.b.x, var_0, true), global2.b.x), Struct_2(global2.a, vec4<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], u_input.b, global3[_wgslsmith_index_u32(u_input.c.x, 6u)], 14623i), vec4<bool>(false, false, true, true), 12330u)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-689f)))), 686f));
    global0 = array<Struct_4, 7>();
    let var_4 = global2.b.yy;
    var var_5 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.c.x), -1332f)), vec4<i32>(-global3[_wgslsmith_index_u32(9702u, 6u)], -1i, -_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, -1i), abs(u_input.b)), u_input.a.x), !select(!vec4<bool>(global2.b.x, global2.b.x, var_0, global2.b.x), select(vec4<bool>(var_3.a.d.b.x, false, global2.b.x, var_3.a.a.b.x), vec4<bool>(false, global2.b.x, true, var_3.a.d.b.x), !vec4<bool>(var_0, false, false, false)), select(var_0, select(false, var_0, false), all(vec3<bool>(false, false, var_4.x)))), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_3(var_3.a.a).b.zy) * vec2<f32>(543f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a)))), 1u, var_3.c);
}

