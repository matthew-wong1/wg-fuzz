struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-1075f, 869f, -760f, 256f, -1084f, -405f, -2566f, 1442f, 800f, 470f, 575f, 1000f, -751f, -836f, 688f, 598f, 1239f, -579f, 506f, 163f, -1516f, 680f, 834f, -913f, -573f, 968f);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<f32>(-1000f, -1256f, -482f, 1301f), -1930f, -231f, 25093u), Struct_1(vec4<f32>(-786f, 555f, -471f, -1315f), -466f, 521f, 50988u), Struct_1(vec4<f32>(1000f, -1017f, 1000f, -619f), 529f, -761f, 0u), Struct_1(vec4<f32>(-2393f, 1000f, -546f, 1177f), 809f, -399f, 4294967295u), Struct_1(vec4<f32>(-2077f, 261f, 188f, 429f), -695f, 1568f, 84052u), Struct_1(vec4<f32>(2072f, -2426f, -928f, 113f), 337f, 1138f, 1u), Struct_1(vec4<f32>(121f, -1222f, 1000f, 602f), -854f, -1242f, 1u), Struct_1(vec4<f32>(351f, -1003f, -242f, 696f), 1069f, -2797f, 4294967295u), Struct_1(vec4<f32>(2268f, -154f, 1000f, -1921f), 1010f, 538f, 0u), Struct_1(vec4<f32>(-281f, -1000f, 1454f, -361f), 1377f, -1084f, 0u), Struct_1(vec4<f32>(694f, 1959f, 126f, 839f), -1491f, 1039f, 2785u), Struct_1(vec4<f32>(-251f, 1615f, 1332f, 352f), -1245f, 861f, 25212u), Struct_1(vec4<f32>(1683f, 635f, -1114f, -145f), 679f, 1566f, 0u), Struct_1(vec4<f32>(-273f, -742f, 265f, 443f), -1633f, 828f, 0u), Struct_1(vec4<f32>(1801f, -1338f, -487f, -975f), 281f, 1883f, 4294967295u), Struct_1(vec4<f32>(-1705f, -2412f, 230f, -1106f), 512f, 347f, 24392u), Struct_1(vec4<f32>(-2238f, -128f, -241f, 1058f), -2290f, -1000f, 67743u), Struct_1(vec4<f32>(-1010f, -1398f, -356f, -811f), 1134f, -1912f, 58627u), Struct_1(vec4<f32>(269f, -231f, -1100f, -1577f), 213f, -986f, 0u), Struct_1(vec4<f32>(1816f, -742f, -1205f, -1447f), -1560f, -567f, 4294967295u), Struct_1(vec4<f32>(406f, 1324f, -2196f, -515f), -496f, -227f, 33307u), Struct_1(vec4<f32>(1000f, 754f, -1574f, -746f), -658f, 1731f, 45132u), Struct_1(vec4<f32>(309f, 1159f, -1575f, 650f), -2019f, -736f, 70523u), Struct_1(vec4<f32>(1574f, 102f, 457f, -1072f), -2392f, -739f, 0u), Struct_1(vec4<f32>(-817f, 1967f, -653f, -999f), 981f, 950f, 54309u), Struct_1(vec4<f32>(985f, -986f, 1400f, -1294f), -519f, 312f, 77176u), Struct_1(vec4<f32>(-196f, 1430f, 784f, 1178f), 1000f, 2095f, 99370u), Struct_1(vec4<f32>(-930f, -687f, -106f, 509f), -2094f, -1000f, 109107u), Struct_1(vec4<f32>(-735f, -1562f, -1340f, -310f), -219f, -1242f, 1u));

var<private> global2: Struct_3;

var<private> global3: vec2<u32>;

var<private> global4: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    var var_0 = select(select(vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))), select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, !select(true, true, false)), global4.x >= ~(~global2.a)), any(select(vec3<bool>(true, true, any(vec3<bool>(true, true, false))), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), any(vec3<bool>(false, true, true))))));
    global3 = abs(global4.xw);
    var var_1 = u_input.e;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(10921u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(global3.x, 26u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(493f, global0[_wgslsmith_index_u32(38968u, 26u)], -1993f, 630f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(global4.x, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -151f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-307f, 487f, global0[_wgslsmith_index_u32(var_1.x, 26u)], -372f) * vec4<f32>(global0[_wgslsmith_index_u32(16046u, 26u)], global0[_wgslsmith_index_u32(u_input.c, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)], global0[_wgslsmith_index_u32(global2.a, 26u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1261f, 331f, -557f, global0[_wgslsmith_index_u32(var_1.x, 26u)]) * vec4<f32>(global0[_wgslsmith_index_u32(global3.x, 26u)], -1591f, 1000f, 1000f)))))), global0[_wgslsmith_index_u32(13498u, 26u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~31369u, 26u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(64759u, 26u)] * 393f)), 863f)))), _wgslsmith_div_u32(max(global4.x, reverseBits(~53950u)), countOneBits(~abs(global3.x))));
    var var_3 = Struct_3(u_input.c);
    return var_0.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> u32 {
    let var_0 = !(!vec2<bool>(func_3(), func_3()));
    var var_1 = !func_3();
    global2 = Struct_3(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(u_input.e, firstTrailingBit(u_input.e)), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.d.x, global4.x), vec2<u32>(~global2.a, global3.x))));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(0u, global4.x), ~_wgslsmith_dot_vec2_u32(arg_0, u_input.d), ~22721u), global4.xwz), 51023u);
    var var_3 = -firstLeadingBit(vec4<i32>(~(~11538i), 2147483647i, arg_1, _wgslsmith_mod_i32(arg_1, 60818i) << (4294967295u % 32u)));
    return 1u;
}

fn func_1() -> vec3<bool> {
    global0 = array<f32, 26>();
    global4 = u_input.e;
    let var_0 = Struct_3(~(~global4.x >> (_wgslsmith_clamp_u32(reverseBits(1u), ~1u, 10597u) % 32u)));
    var var_1 = select(select(select(vec2<bool>(all(vec3<bool>(true, true, false)), true), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, true, false, true)), any(vec4<bool>(true, true, false, false)))), select(select(vec2<bool>(true, false), vec2<bool>(true, false), global3.x >= 4294967295u), vec2<bool>(true, true), true), true), vec2<bool>(global0[_wgslsmith_index_u32(~func_2(vec2<u32>(31011u, global2.a), -27645i), 26u)] == -1400f, true), all(select(vec3<bool>(any(vec3<bool>(true, false, true)), true, true), vec3<bool>(true, 4294967295u != global4.x, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))));
    global2 = var_0;
    return !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f - -2541f)) < global0[_wgslsmith_index_u32(82339u, 26u)], true, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(vec4<bool>(all(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, true)), all(vec2<bool>(false, true)) && true)), any(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), func_1(), func_1())));
    global4 = select(vec4<u32>(53086u, countOneBits(firstTrailingBit(4294967295u)), ~global2.a, _wgslsmith_dot_vec4_u32(u_input.e, ~u_input.e)), vec4<u32>(_wgslsmith_clamp_u32(u_input.e.x, 53008u, u_input.c) >> ((global2.a ^ global3.x) % 32u), global3.x, _wgslsmith_div_u32(func_2(vec2<u32>(0u, global2.a), 0i), select(global2.a, 0u, var_0.x)), 75764u), global0[_wgslsmith_index_u32(53914u, 26u)] >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(590u, 26u)]))) & vec4<u32>(reverseBits(global2.a), abs(~countOneBits(global4.x)), u_input.c, global2.a);
    let var_1 = Struct_3(~0u);
    global1 = array<Struct_1, 29>();
    let var_2 = reverseBits(~firstTrailingBit(vec4<i32>(-1i, u_input.b, -1i, u_input.b)) >> ((vec4<u32>(global4.x, 1u, 38860u, 2328u) | (vec4<u32>(1u, 0u, 0u, 47890u) ^ vec4<u32>(global2.a, 1u, global2.a, var_1.a))) % vec4<u32>(32u))) & vec4<i32>(u_input.b, 1i, u_input.b, _wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(u_input.b, u_input.b, 27071i)), -vec3<i32>(2147483647i, 1i, u_input.b)));
    let var_3 = -(~var_2);
    var var_4 = var_1;
    global1 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, firstTrailingBit(~(~(~vec2<u32>(var_1.a, u_input.e.x)))), var_2.zx);
}

