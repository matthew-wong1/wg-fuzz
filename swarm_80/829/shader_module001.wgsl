struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(41178u, 0u, 35657u, 1u, 1u, 8002u, 79324u, 50506u, 72958u, 4294967295u, 39489u, 0u, 67775u, 55837u, 61670u, 0u);

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec4<u32>(16654u, 1u, 1u, 1u), true, 0u, vec4<i32>(-38371i, 2147483647i, 1i, 1i)), vec4<f32>(1280f, 231f, -210f, -669f)), Struct_2(Struct_1(vec4<u32>(19288u, 49471u, 65342u, 4600u), false, 61836u, vec4<i32>(-31339i, i32(-2147483648), 0i, -23964i)), vec4<f32>(-607f, 1801f, 1000f, 919f)), Struct_2(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 27512u), false, 0u, vec4<i32>(1i, -22379i, -1i, -26152i)), vec4<f32>(-767f, 642f, 1082f, -321f)), Struct_2(Struct_1(vec4<u32>(5034u, 4294967295u, 1u, 6089u), true, 9938u, vec4<i32>(0i, 77648i, 18214i, i32(-2147483648))), vec4<f32>(609f, -200f, 462f, -1030f)), Struct_2(Struct_1(vec4<u32>(15288u, 4294967295u, 4294967295u, 4294967295u), false, 19291u, vec4<i32>(19700i, 1i, 0i, 2147483647i)), vec4<f32>(771f, 728f, 1000f, -2640f)), Struct_2(Struct_1(vec4<u32>(1u, 14408u, 55409u, 1u), false, 4294967295u, vec4<i32>(41574i, 1i, 38692i, -1i)), vec4<f32>(371f, 180f, 217f, 1643f)), Struct_2(Struct_1(vec4<u32>(51209u, 20027u, 4294967295u, 15805u), false, 4294967295u, vec4<i32>(1i, 2147483647i, 1i, -530i)), vec4<f32>(138f, -1612f, 1498f, -795f)), Struct_2(Struct_1(vec4<u32>(22167u, 0u, 2106u, 0u), true, 12373u, vec4<i32>(-1i, 32349i, 2147483647i, -46725i)), vec4<f32>(-850f, 2184f, 174f, -1233f)), Struct_2(Struct_1(vec4<u32>(17472u, 19386u, 31888u, 1u), true, 71214u, vec4<i32>(-38286i, 0i, -16152i, -1i)), vec4<f32>(-149f, -929f, 1063f, 519f)), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 1u, 0u), true, 0u, vec4<i32>(0i, 6273i, -3163i, -33767i)), vec4<f32>(-1840f, 692f, -1756f, 821f)), Struct_2(Struct_1(vec4<u32>(57007u, 6385u, 13152u, 4294967295u), true, 4294967295u, vec4<i32>(-47753i, -81080i, -1i, 38181i)), vec4<f32>(1383f, 195f, 1010f, -803f)), Struct_2(Struct_1(vec4<u32>(26635u, 0u, 4294967295u, 4294967295u), false, 8576u, vec4<i32>(-12707i, 41881i, 1i, 2147483647i)), vec4<f32>(-893f, 1916f, 388f, 1524f)), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), true, 0u, vec4<i32>(1i, 1i, 28394i, -33623i)), vec4<f32>(-392f, 1734f, 795f, -677f)), Struct_2(Struct_1(vec4<u32>(37212u, 56916u, 13490u, 1u), false, 1u, vec4<i32>(i32(-2147483648), -24430i, 0i, -1i)), vec4<f32>(-640f, -1352f, -858f, -280f)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 45349u, 10953u), true, 4294967295u, vec4<i32>(32230i, 9499i, -28931i, -11122i)), vec4<f32>(1926f, 310f, -1336f, -471f)), Struct_2(Struct_1(vec4<u32>(78690u, 1u, 0u, 11958u), true, 0u, vec4<i32>(0i, 0i, 2147483647i, 8312i)), vec4<f32>(784f, -1240f, 1303f, -699f)), Struct_2(Struct_1(vec4<u32>(3799u, 1u, 4294967295u, 32006u), false, 43847u, vec4<i32>(32180i, -10929i, i32(-2147483648), -1i)), vec4<f32>(-1000f, 1049f, 1221f, -427f)), Struct_2(Struct_1(vec4<u32>(1u, 17872u, 12886u, 4294967295u), true, 62882u, vec4<i32>(0i, -24987i, i32(-2147483648), 2147483647i)), vec4<f32>(201f, 2121f, -810f, 808f)), Struct_2(Struct_1(vec4<u32>(19913u, 0u, 41289u, 57402u), true, 4294967295u, vec4<i32>(-3054i, -1i, 29879i, 2147483647i)), vec4<f32>(1548f, 169f, -224f, 1244f)), Struct_2(Struct_1(vec4<u32>(48961u, 4294967295u, 9978u, 1u), true, 53110u, vec4<i32>(-27765i, 26090i, -44259i, i32(-2147483648))), vec4<f32>(-347f, 718f, 767f, -338f)), Struct_2(Struct_1(vec4<u32>(33153u, 13607u, 4294967295u, 1u), false, 0u, vec4<i32>(i32(-2147483648), 3445i, -1i, 0i)), vec4<f32>(-1401f, -1443f, 567f, 771f)), Struct_2(Struct_1(vec4<u32>(51237u, 4294967295u, 0u, 0u), false, 33544u, vec4<i32>(8243i, 0i, -1i, -64605i)), vec4<f32>(836f, 116f, -177f, 1000f)), Struct_2(Struct_1(vec4<u32>(0u, 25970u, 0u, 4294967295u), true, 1u, vec4<i32>(-1i, i32(-2147483648), -39831i, 20996i)), vec4<f32>(1255f, -634f, 826f, 289f)), Struct_2(Struct_1(vec4<u32>(17327u, 1u, 1u, 49590u), false, 0u, vec4<i32>(-47110i, 43088i, -1i, -1i)), vec4<f32>(-650f, -1922f, 1705f, -1335f)), Struct_2(Struct_1(vec4<u32>(0u, 0u, 57322u, 0u), true, 1u, vec4<i32>(19000i, 0i, -578i, -26239i)), vec4<f32>(-1439f, -974f, 955f, 579f)));

var<private> global2: array<f32, 9>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(0u, 5355u, 9385u, 4294967295u), true, 1u, vec4<i32>(-8193i, -57095i, -1i, -42952i)), vec4<f32>(-421f, -1300f, 523f, 408f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    global1 = array<Struct_2, 25>();
    let var_0 = arg_3.a;
    var var_1 = firstLeadingBit(~arg_3.a.d.wz);
    var var_2 = arg_3;
    global3 = Struct_2(var_0, global3.b);
    return min(var_0.c, 0u) | 50926u;
}

fn func_1(arg_0: vec4<u32>) -> StorageBuffer {
    global2 = array<f32, 9>();
    global0 = array<u32, 16>();
    var var_0 = (50967u | global0[_wgslsmith_index_u32(global3.a.c, 16u)]) | firstLeadingBit(4294967295u);
    global1 = array<Struct_2, 25>();
    let var_1 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(global3.a.a, ~(~vec4<u32>(global0[_wgslsmith_index_u32(22963u, 16u)], 59564u, 127542u, 99314u))), _wgslsmith_sub_u32(reverseBits(global0[_wgslsmith_index_u32(abs(78100u), 16u)]), ~func_2(global0[_wgslsmith_index_u32(0u, 16u)], u_input.b, vec2<i32>(u_input.b, u_input.c), global1[_wgslsmith_index_u32(0u, 25u)])), ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) ^ ~(u_input.a.x | arg_0.x));
    return StorageBuffer(global0[_wgslsmith_index_u32(var_1.x, 16u)], arg_0.ywy, global3.a.d.x, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(67349u, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]) >> (_wgslsmith_mod_u32(5798u, 29220u) % 32u), 9u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a.a;
    global3 = Struct_2(global3.a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.b.x, 962f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.a.a.x, 9u)]), 365f))));
    global3 = Struct_2(global3.a, _wgslsmith_f_op_vec4_f32(global3.b * _wgslsmith_f_op_vec4_f32(-global3.b)));
    let x = u_input.a;
    s_output = func_1(global3.a.a);
}

