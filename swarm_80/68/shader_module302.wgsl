struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(Struct_1(vec3<f32>(643f, 1473f, 383f), -633f, vec2<u32>(34808u, 4294967295u), 32882u, vec3<u32>(45588u, 0u, 20545u)), vec3<f32>(-711f, 2975f, 434f)), Struct_3(Struct_1(vec3<f32>(1000f, -658f, -681f), -1000f, vec2<u32>(0u, 47629u), 12548u, vec3<u32>(1u, 47803u, 1u)), vec3<f32>(-456f, 315f, 165f)), Struct_3(Struct_1(vec3<f32>(914f, -1922f, 135f), 944f, vec2<u32>(630u, 101317u), 4294967295u, vec3<u32>(4294967295u, 0u, 0u)), vec3<f32>(-1104f, 779f, 1711f)), Struct_3(Struct_1(vec3<f32>(1424f, 893f, -311f), 1533f, vec2<u32>(11276u, 4294967295u), 31497u, vec3<u32>(0u, 21745u, 3653u)), vec3<f32>(-704f, -1072f, -1000f)), Struct_3(Struct_1(vec3<f32>(1016f, -176f, -1117f), -766f, vec2<u32>(1u, 10679u), 40230u, vec3<u32>(0u, 4294967295u, 1u)), vec3<f32>(-466f, 1910f, 868f)), Struct_3(Struct_1(vec3<f32>(470f, 326f, 276f), 1171f, vec2<u32>(6917u, 4294967295u), 0u, vec3<u32>(1u, 0u, 10214u)), vec3<f32>(147f, -1754f, -763f)), Struct_3(Struct_1(vec3<f32>(-728f, 494f, -1629f), -2674f, vec2<u32>(51460u, 0u), 0u, vec3<u32>(0u, 0u, 27227u)), vec3<f32>(-2095f, -1239f, -203f)), Struct_3(Struct_1(vec3<f32>(-1005f, 2682f, 408f), -799f, vec2<u32>(70942u, 0u), 0u, vec3<u32>(4294967295u, 6949u, 91918u)), vec3<f32>(-1387f, -1000f, 1603f)), Struct_3(Struct_1(vec3<f32>(675f, 1841f, 1171f), -1218f, vec2<u32>(44761u, 13356u), 33104u, vec3<u32>(18879u, 18800u, 0u)), vec3<f32>(1891f, 618f, -1595f)), Struct_3(Struct_1(vec3<f32>(-956f, -1098f, -2647f), 556f, vec2<u32>(0u, 4294967295u), 47690u, vec3<u32>(1u, 4294967295u, 0u)), vec3<f32>(-1000f, -1103f, 2340f)), Struct_3(Struct_1(vec3<f32>(599f, -995f, -466f), -347f, vec2<u32>(19781u, 1u), 1u, vec3<u32>(1u, 4294967295u, 55148u)), vec3<f32>(1012f, -210f, -1187f)), Struct_3(Struct_1(vec3<f32>(505f, -1624f, 576f), 1731f, vec2<u32>(1u, 1u), 54538u, vec3<u32>(30769u, 0u, 4294967295u)), vec3<f32>(666f, -1000f, 688f)), Struct_3(Struct_1(vec3<f32>(-1000f, 390f, -764f), -866f, vec2<u32>(1u, 0u), 14980u, vec3<u32>(4294967295u, 1u, 32226u)), vec3<f32>(1000f, 1524f, -992f)), Struct_3(Struct_1(vec3<f32>(2038f, -1276f, 351f), 195f, vec2<u32>(1u, 29089u), 31328u, vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<f32>(-308f, -1000f, -348f)), Struct_3(Struct_1(vec3<f32>(-737f, 531f, -753f), 512f, vec2<u32>(23726u, 0u), 28383u, vec3<u32>(0u, 35660u, 4294967295u)), vec3<f32>(-620f, 2401f, 1000f)), Struct_3(Struct_1(vec3<f32>(129f, 512f, -1369f), 733f, vec2<u32>(0u, 21826u), 1u, vec3<u32>(1u, 1u, 108098u)), vec3<f32>(995f, 975f, -203f)), Struct_3(Struct_1(vec3<f32>(-205f, 285f, -500f), -1490f, vec2<u32>(4294967295u, 35401u), 1u, vec3<u32>(35653u, 15978u, 4294967295u)), vec3<f32>(-489f, 865f, 592f)), Struct_3(Struct_1(vec3<f32>(1523f, -1210f, -364f), 165f, vec2<u32>(46547u, 109405u), 0u, vec3<u32>(10338u, 39452u, 2864u)), vec3<f32>(515f, -660f, -838f)), Struct_3(Struct_1(vec3<f32>(-467f, 426f, 1000f), 982f, vec2<u32>(4561u, 15358u), 15805u, vec3<u32>(0u, 4294967295u, 0u)), vec3<f32>(-883f, -299f, -1000f)), Struct_3(Struct_1(vec3<f32>(472f, -167f, -1000f), 775f, vec2<u32>(59521u, 16193u), 99359u, vec3<u32>(1u, 93510u, 0u)), vec3<f32>(613f, -1452f, -1326f)), Struct_3(Struct_1(vec3<f32>(-1965f, -844f, -1000f), -387f, vec2<u32>(1u, 40386u), 26895u, vec3<u32>(35437u, 0u, 4294967295u)), vec3<f32>(-708f, 1820f, 738f)), Struct_3(Struct_1(vec3<f32>(1615f, 453f, 980f), 879f, vec2<u32>(4294967295u, 42405u), 1u, vec3<u32>(0u, 33u, 24435u)), vec3<f32>(-1000f, -283f, -1409f)), Struct_3(Struct_1(vec3<f32>(-271f, -636f, -1030f), 636f, vec2<u32>(20602u, 0u), 56670u, vec3<u32>(4294967295u, 1u, 4294967295u)), vec3<f32>(210f, 346f, -538f)), Struct_3(Struct_1(vec3<f32>(-979f, -835f, -288f), -538f, vec2<u32>(1u, 4294967295u), 103227u, vec3<u32>(2275u, 83600u, 4294967295u)), vec3<f32>(-596f, -3248f, -1068f)), Struct_3(Struct_1(vec3<f32>(2592f, -285f, -114f), 1001f, vec2<u32>(1u, 69030u), 28007u, vec3<u32>(0u, 70574u, 4294967295u)), vec3<f32>(784f, -598f, -171f)), Struct_3(Struct_1(vec3<f32>(1148f, -1738f, -316f), 498f, vec2<u32>(23929u, 1u), 16114u, vec3<u32>(13845u, 68161u, 0u)), vec3<f32>(388f, 939f, 185f)));

var<private> global2: array<i32, 1> = array<i32, 1>(i32(-2147483648));

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: array<vec2<u32>, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_2) -> u32 {
    return firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(6985u, 33025u, u_input.b), select(vec3<u32>(0u, 0u, u_input.b), vec3<u32>(u_input.b, 6753u, 4294967295u), true) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.a.x, 1u, u_input.a.x))) & 51382u);
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = u_input.a.x;
    global0 = _wgslsmith_f_op_f32(max(894f, _wgslsmith_f_op_f32(-arg_0.b)));
    global0 = arg_0.a.x;
    let var_1 = global1[_wgslsmith_index_u32(select(u_input.b, ~(~4294967295u), select(!(u_input.a.x > arg_0.c.x), any(vec4<bool>(true, false, global3.x, global3.x)), !global3.x)) ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a, ~arg_0.c | ~vec2<u32>(4294967295u, 4294967295u)), countOneBits(0u)), 26u)];
    let var_2 = !(!(!vec2<bool>(true, true && global3.x)));
    return Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b - _wgslsmith_div_vec3_f32(var_1.a.a, arg_0.a)) - var_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(global3.x, global3.x, global3.x, false | all(select(global3.yz, vec2<bool>(true, global3.x), global3.x))), vec4<bool>(true, true, true, true), !global3.x);
    var var_1 = 44308i;
    let var_2 = func_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(371f, 974f, 1170f) + vec3<f32>(1362f, -1326f, 654f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-384f, 639f, -1000f) * vec3<f32>(372f, 165f, -451f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(2231f)))) * 270f), abs(u_input.a), 4294967295u, firstLeadingBit(vec3<u32>(1u, ~70593u, func_1(Struct_2(vec4<f32>(-426f, -408f, -178f, -1000f), 11391i), u_input.c.zxw, vec4<bool>(global3.x, global3.x, false, false), Struct_2(vec4<f32>(-1120f, 891f, 918f, 685f), global2[_wgslsmith_index_u32(67517u, 1u)]))))));
    global1 = array<Struct_3, 26>();
    var var_3 = vec3<bool>(true, !all(var_0.zxy), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a.x));
}

