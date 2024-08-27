struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_2(vec4<f32>(115f, 1570f, -976f, 1055f), Struct_1(vec3<u32>(112365u, 4294967295u, 1u)))), Struct_3(Struct_2(vec4<f32>(-912f, 268f, 1111f, -887f), Struct_1(vec3<u32>(0u, 1u, 1u)))), Struct_3(Struct_2(vec4<f32>(-338f, 603f, -1757f, -265f), Struct_1(vec3<u32>(50680u, 4294967295u, 0u)))), Struct_3(Struct_2(vec4<f32>(-1234f, 1593f, 566f, -1576f), Struct_1(vec3<u32>(27938u, 0u, 17308u)))), Struct_3(Struct_2(vec4<f32>(-1265f, 1632f, 420f, 319f), Struct_1(vec3<u32>(1u, 4294967295u, 123073u)))), Struct_3(Struct_2(vec4<f32>(-796f, -1496f, 1612f, 1122f), Struct_1(vec3<u32>(0u, 35519u, 1u)))), Struct_3(Struct_2(vec4<f32>(-341f, 452f, -586f, 1000f), Struct_1(vec3<u32>(47890u, 10888u, 33547u)))), Struct_3(Struct_2(vec4<f32>(340f, 1227f, 889f, -490f), Struct_1(vec3<u32>(97748u, 0u, 4294967295u)))), Struct_3(Struct_2(vec4<f32>(324f, 620f, 616f, 2063f), Struct_1(vec3<u32>(21807u, 1u, 11284u)))), Struct_3(Struct_2(vec4<f32>(-614f, 1320f, -586f, 529f), Struct_1(vec3<u32>(5550u, 33093u, 56357u)))), Struct_3(Struct_2(vec4<f32>(109f, -602f, 593f, -1311f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 33918u)))), Struct_3(Struct_2(vec4<f32>(913f, 1809f, -450f, -946f), Struct_1(vec3<u32>(25520u, 1u, 4294967295u)))), Struct_3(Struct_2(vec4<f32>(-781f, 818f, 246f, 343f), Struct_1(vec3<u32>(25877u, 9273u, 34422u)))), Struct_3(Struct_2(vec4<f32>(-1349f, 1052f, -1000f, -1315f), Struct_1(vec3<u32>(57157u, 43918u, 22281u)))), Struct_3(Struct_2(vec4<f32>(683f, -575f, -2266f, 476f), Struct_1(vec3<u32>(4294967295u, 26682u, 0u)))), Struct_3(Struct_2(vec4<f32>(193f, -2866f, -1213f, -2729f), Struct_1(vec3<u32>(0u, 1u, 0u)))), Struct_3(Struct_2(vec4<f32>(919f, 1473f, 1625f, 1034f), Struct_1(vec3<u32>(58259u, 3443u, 47760u)))), Struct_3(Struct_2(vec4<f32>(-2144f, -1010f, -1229f, 333f), Struct_1(vec3<u32>(4294967295u, 0u, 31481u)))), Struct_3(Struct_2(vec4<f32>(-696f, -1530f, 328f, 390f), Struct_1(vec3<u32>(7153u, 26944u, 1u)))), Struct_3(Struct_2(vec4<f32>(-429f, 512f, -2030f, -743f), Struct_1(vec3<u32>(4294967295u, 0u, 0u)))), Struct_3(Struct_2(vec4<f32>(840f, -1419f, 764f, -1000f), Struct_1(vec3<u32>(9650u, 18352u, 0u)))), Struct_3(Struct_2(vec4<f32>(1000f, -280f, 757f, 1000f), Struct_1(vec3<u32>(31967u, 14375u, 25871u)))), Struct_3(Struct_2(vec4<f32>(701f, 657f, -660f, 425f), Struct_1(vec3<u32>(0u, 37674u, 4294967295u)))), Struct_3(Struct_2(vec4<f32>(361f, 997f, 1262f, 1000f), Struct_1(vec3<u32>(56392u, 45542u, 10887u)))), Struct_3(Struct_2(vec4<f32>(-239f, -709f, -880f, 1106f), Struct_1(vec3<u32>(74057u, 1u, 1u)))), Struct_3(Struct_2(vec4<f32>(230f, 505f, 1128f, 188f), Struct_1(vec3<u32>(10795u, 1u, 33280u)))), Struct_3(Struct_2(vec4<f32>(-647f, -420f, -535f, 1205f), Struct_1(vec3<u32>(46324u, 1u, 1u)))), Struct_3(Struct_2(vec4<f32>(250f, 610f, -1023f, -468f), Struct_1(vec3<u32>(0u, 75249u, 8943u)))), Struct_3(Struct_2(vec4<f32>(-272f, -546f, 1758f, -328f), Struct_1(vec3<u32>(0u, 74343u, 1u)))));

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<u32>(73963u, 41243u, 31808u)), Struct_1(vec3<u32>(1u, 19358u, 48192u)), Struct_1(vec3<u32>(34389u, 0u, 1u)), Struct_1(vec3<u32>(0u, 0u, 22757u)));

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec4<f32>(-2877f, 1080f, 1000f, -1250f), Struct_1(vec3<u32>(89553u, 4294967295u, 4294967295u))), Struct_2(vec4<f32>(-1716f, 836f, 750f, 426f), Struct_1(vec3<u32>(1u, 38272u, 5528u))), Struct_2(vec4<f32>(1000f, -967f, -1198f, -1638f), Struct_1(vec3<u32>(65675u, 4294967295u, 0u))), Struct_2(vec4<f32>(692f, -662f, -1400f, 341f), Struct_1(vec3<u32>(4294967295u, 1u, 0u))), Struct_2(vec4<f32>(1011f, -364f, -2350f, -288f), Struct_1(vec3<u32>(4294967295u, 1u, 7598u))), Struct_2(vec4<f32>(-381f, 1138f, -1606f, -1153f), Struct_1(vec3<u32>(4294967295u, 8156u, 1u))), Struct_2(vec4<f32>(799f, 497f, -454f, 1384f), Struct_1(vec3<u32>(1u, 40833u, 0u))));

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<u32>(4294967295u, 8256u, 43768u)), Struct_1(vec3<u32>(13116u, 4294967295u, 1u)), Struct_1(vec3<u32>(3141u, 1u, 72082u)), Struct_1(vec3<u32>(52536u, 0u, 25268u)), Struct_1(vec3<u32>(0u, 16235u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<u32>(44882u, 10957u, 60148u)), Struct_1(vec3<u32>(10055u, 0u, 0u)), Struct_1(vec3<u32>(0u, 313u, 40954u)), Struct_1(vec3<u32>(90254u, 4294967295u, 1u)), Struct_1(vec3<u32>(13374u, 1u, 1u)), Struct_1(vec3<u32>(0u, 4294967295u, 79235u)), Struct_1(vec3<u32>(143673u, 0u, 1u)), Struct_1(vec3<u32>(0u, 87819u, 108014u)), Struct_1(vec3<u32>(52634u, 72514u, 1u)), Struct_1(vec3<u32>(1u, 73330u, 373u)), Struct_1(vec3<u32>(0u, 4294967295u, 9808u)), Struct_1(vec3<u32>(0u, 43154u, 7494u)), Struct_1(vec3<u32>(1u, 4294967295u, 53558u)), Struct_1(vec3<u32>(1u, 109246u, 77544u)), Struct_1(vec3<u32>(64668u, 0u, 0u)), Struct_1(vec3<u32>(50115u, 99105u, 27910u)), Struct_1(vec3<u32>(12064u, 1u, 4294967295u)), Struct_1(vec3<u32>(59565u, 1u, 0u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: bool) -> vec2<f32> {
    global1 = array<Struct_1, 4>();
    global2 = array<Struct_2, 7>();
    global1 = array<Struct_1, 4>();
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -325f), -930f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_1.zz))))));
}

fn func_3() -> vec2<f32> {
    global2 = array<Struct_2, 7>();
    global1 = array<Struct_1, 4>();
    global0 = array<Struct_3, 29>();
    var var_0 = !select(vec2<bool>(any(vec2<bool>(true, true)) == true, any(vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, all(vec3<bool>(false, true, true))), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)), false);
    global3 = array<Struct_1, 24>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_i32(-1i, u_input.a << (4294967295u % 32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -113f, 115f)), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), false)).x, _wgslsmith_f_op_f32(abs(-312f))));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(u_input.a, vec3<f32>(-258f, 1372f, 154f), u_input.b.x, true)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-490f, -610f) + vec2<f32>(343f, -921f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3()))))));
    var var_1 = arg_0.a;
    global3 = array<Struct_1, 24>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-501f, var_0.x, var_0.x, 241f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1089f, var_0.x) - vec4<f32>(-139f, 719f, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1000f, -273f)) * vec4<f32>(-787f, var_0.x, -1452f, -381f)))), global3[_wgslsmith_index_u32(arg_0.a.x >> (~u_input.b.x % 32u), 24u)]);
    var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~(vec3<u32>(arg_0.a.x, 0u, var_2.b.a.x) >> (u_input.b.zxx % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.x, var_2.b.a.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), ~(~u_input.b.wxw), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.a, select(vec3<u32>(1u, 10932u, 66572u), vec3<u32>(1u, var_2.b.a.x, 40955u), true)), countOneBits(_wgslsmith_div_vec3_u32(u_input.b.xwy, arg_0.a)))) << (~vec3<u32>(4294967295u, ~1u, reverseBits(_wgslsmith_mult_u32(var_1.x, 0u))) % vec3<u32>(32u));
    return Struct_3(Struct_2(var_2.a, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.xzz, vec3<u32>(var_1.x, var_2.b.a.x, var_1.x)), var_2.b.a.x) << (32703u % 32u), 24u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 4>();
    let var_0 = func_1(Struct_1(u_input.b.xwz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(2509f)))) * -1000f), var_0.a.a.x), var_0.a.b.a.x, ~var_0.a.b.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1002f, -279f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -865f))) - var_0.a.a.x), _wgslsmith_f_op_f32(min(var_0.a.a.x, _wgslsmith_f_op_f32(round(var_0.a.a.x))))));
}

