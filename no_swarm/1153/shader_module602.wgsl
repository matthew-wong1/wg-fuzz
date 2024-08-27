struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-625f, 283f, -1642f, 1262f), 1u, vec4<bool>(false, false, true, false), 43606u);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<f32>(869f, 1331f, -243f, -1640f), 1u, vec4<bool>(false, false, false, true), 4294967295u), Struct_1(vec4<f32>(656f, -827f, 704f, -623f), 21192u, vec4<bool>(false, false, true, true), 4294967295u), Struct_1(vec4<f32>(745f, 433f, -1362f, -794f), 4294967295u, vec4<bool>(true, false, true, false), 32736u), Struct_1(vec4<f32>(665f, -1000f, 973f, 980f), 100230u, vec4<bool>(false, true, false, true), 9474u), Struct_1(vec4<f32>(499f, 549f, 221f, -1000f), 0u, vec4<bool>(true, true, false, true), 1276u), Struct_1(vec4<f32>(-680f, -216f, -534f, 1471f), 59515u, vec4<bool>(true, true, true, false), 1u), Struct_1(vec4<f32>(-1637f, 2427f, 288f, -1228f), 4294967295u, vec4<bool>(false, false, false, false), 72611u), Struct_1(vec4<f32>(-1010f, 185f, 311f, -1000f), 0u, vec4<bool>(true, true, false, true), 1u), Struct_1(vec4<f32>(2499f, -1238f, 1341f, 697f), 81026u, vec4<bool>(true, true, false, true), 4294967295u), Struct_1(vec4<f32>(-1177f, 519f, 1612f, -325f), 13425u, vec4<bool>(true, true, true, false), 60139u), Struct_1(vec4<f32>(-701f, -221f, 928f, 1235f), 0u, vec4<bool>(false, true, true, true), 1u), Struct_1(vec4<f32>(-1162f, -137f, -665f, 781f), 4294967295u, vec4<bool>(true, false, true, false), 1u), Struct_1(vec4<f32>(445f, 966f, 530f, 410f), 0u, vec4<bool>(false, true, true, true), 1u), Struct_1(vec4<f32>(694f, 1028f, -1228f, 1670f), 4294967295u, vec4<bool>(false, true, true, false), 0u), Struct_1(vec4<f32>(-1442f, 246f, -633f, 752f), 29517u, vec4<bool>(true, true, false, true), 34434u), Struct_1(vec4<f32>(1771f, 1659f, 812f, -755f), 86758u, vec4<bool>(false, true, true, false), 27313u), Struct_1(vec4<f32>(-1635f, -1430f, 1304f, -166f), 52328u, vec4<bool>(false, true, false, false), 1u));

var<private> global2: array<u32, 15>;

var<private> global3: array<f32, 29> = array<f32, 29>(-1612f, -124f, 657f, 1070f, -589f, -221f, 427f, 1157f, -246f, -3047f, 228f, 110f, -357f, 983f, -867f, 2119f, 556f, -521f, -1654f, -965f, 735f, -320f, -816f, -2481f, -100f, 680f, 739f, -527f, -409f);

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    var var_0 = vec3<bool>(any(!select(vec2<bool>(true, false), !global0.c.xw, global0.c.xx)), false, true);
    global4 = global0.c.xy;
    global1 = array<Struct_1, 17>();
    let var_1 = -(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 18833i), max(vec2<i32>(-16983i, 0i), vec2<i32>(25942i, -1i))));
    let var_2 = 4508u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(step(-978f, global3[_wgslsmith_index_u32(~var_2, 29u)])));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(abs(arg_0.a.x));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<u32>) -> u32 {
    var var_0 = vec2<i32>(2147483647i, -31536i);
    let var_1 = var_0.x;
    let var_2 = -51929i;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-414f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(14374u, 4294967295u, 55219u, arg_3.x), vec4<u32>(4294967295u, 23993u, 51945u, arg_3.x)), 29u)] - _wgslsmith_div_f32(1706f, global0.a.x))), _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global0.a.x)), 764f)), global0.a.x);
    global2 = array<u32, 15>();
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<u32> {
    let var_0 = arg_1;
    global4 = select(vec2<bool>(true, all(vec2<bool>(true, true))), !select(global0.c.yy, !vec2<bool>(global4.x, arg_2.c.x), any(select(vec4<bool>(true, false, true, global0.c.x), arg_2.c, false))), true);
    global1 = array<Struct_1, 17>();
    return max(~vec4<u32>(2414u, ~global0.b, firstTrailingBit(arg_0.d), global2[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(58606u, 83898u, 9179u, 26506u), vec4<u32>(30680u, 53882u, 4294967295u, 33517u) | vec4<u32>(0u, 5818u, 0u, global0.d)), ~(~vec4<u32>(69350u, global2[_wgslsmith_index_u32(4294967295u, 15u)], 0u, u_input.b))) >> ((((vec4<u32>(arg_3.x, 30964u, 70335u, 22348u) | vec4<u32>(37650u, arg_0.d, arg_2.d, 34028u)) ^ vec4<u32>(global2[_wgslsmith_index_u32(0u, 15u)], 30284u, arg_2.b, 56536u)) << (abs(vec4<u32>(51961u, 0u, arg_2.d, 1u) >> (vec4<u32>(14389u, 4294967295u, u_input.b, global2[_wgslsmith_index_u32(arg_3.x, 15u)]) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec2<bool>) -> Struct_1 {
    global3 = array<f32, 29>();
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_2.x, select(_wgslsmith_clamp_i32(-arg_2.x, 1i, i32(-1i) * -28500i), ~min(-19048i, -63815i), arg_0.c.x), -1i), abs(_wgslsmith_mod_vec4_i32(select(~vec4<i32>(15625i, arg_2.x, -2147483647i, arg_2.x), arg_2 >> (vec4<u32>(arg_0.d, 35411u, global2[_wgslsmith_index_u32(arg_0.b, 15u)], arg_0.d) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), vec4<i32>(~48231i, _wgslsmith_mult_i32(arg_2.x, -2147483647i), max(26215i, arg_2.x), -arg_2.x))));
    global4 = global0.c.yx;
    global3 = array<f32, 29>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1287f, 1f, global0.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-988f + global3[_wgslsmith_index_u32(arg_1.x, 29u)]), -338f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(117963u, 29u)])))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.c.yxz)));
    let var_1 = func_5(global1[_wgslsmith_index_u32(0u, 17u)], func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(2644f - 1957f), _wgslsmith_f_op_f32(-global0.a.x), -392f, _wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(global0.a.x, global3[_wgslsmith_index_u32(62602u, 29u)], -668f, global0.a.x), global0.b, vec4<bool>(true, false, global4.x, false), 6057u), vec3<i32>(0i, -26855i, -97287i), Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], 1020f, -486f, -1081f), global2[_wgslsmith_index_u32(u_input.a, 15u)], vec4<bool>(false, global0.c.x, global4.x, global4.x), u_input.a)))), ~(~1u), select(global0.c, !global0.c, all(global0.c.zx)), 68715u), ~_wgslsmith_mult_i32(-8309i, _wgslsmith_mult_i32(0i, -15158i)), global1[_wgslsmith_index_u32(min(func_3(Struct_1(vec4<f32>(1242f, global3[_wgslsmith_index_u32(4294967295u, 29u)], global0.a.x, -293f), global2[_wgslsmith_index_u32(u_input.a, 15u)], vec4<bool>(false, global0.c.x, global0.c.x, true), global0.b), Struct_1(global0.a, 10172u, global0.c, global2[_wgslsmith_index_u32(2553u, 15u)]), !vec4<bool>(true, false, global4.x, global4.x), ~vec3<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 15u)])), 0u), 17u)], vec2<u32>(u_input.b, u_input.b)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(2147483647i, ~24396i, -56012i, min(2147483647i, 2147483647i))), vec4<i32>(1i, 1i, 1i, 1i) << (vec4<u32>(~0u, 31715u, global0.d & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.d, 15u)], 15u)], ~global0.b) % vec4<u32>(32u))), select(!select(select(vec2<bool>(global4.x, false), vec2<bool>(global0.c.x, true), global0.c.ww), select(vec2<bool>(false, false), vec2<bool>(true, global0.c.x), true), true), vec2<bool>(any(vec3<bool>(true, global4.x, true)), !global4.x), true));
    var var_2 = 62661u;
    let var_3 = vec4<u32>(~_wgslsmith_sub_u32(~(~global2[_wgslsmith_index_u32(global0.d, 15u)]), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(global0.d), _wgslsmith_add_u32(global0.b, 4294967295u), ~global2[_wgslsmith_index_u32(7517u, 15u)]), 15u)]), firstTrailingBit(min(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(38753u, 15u)]), 51495u), 32353u)), 10602u, 31119u);
    global2 = array<u32, 15>();
    global1 = array<Struct_1, 17>();
    let var_4 = abs(~(~(-34017i)));
    var var_5 = true;
    let var_6 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~var_3.xz) << (reverseBits(vec2<u32>(var_1.d, 16449u)) % vec2<u32>(32u))), _wgslsmith_mod_i32(1i << (~var_1.d % 32u), 6691i), var_3.wxx);
}

