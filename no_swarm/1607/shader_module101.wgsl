struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec3<f32>(267f, 1258f, 222f), vec3<i32>(1i, 0i, -11155i), vec2<f32>(292f, -704f), 647f, 38648i), Struct_2(vec3<f32>(-558f, 1103f, 300f), vec3<i32>(39281i, -1i, -1i), vec2<f32>(-921f, -130f), 378f, -20653i), Struct_2(vec3<f32>(925f, 413f, -876f), vec3<i32>(4833i, -19771i, 1i), vec2<f32>(842f, -1291f), 1000f, -33942i), Struct_2(vec3<f32>(327f, 1000f, -1004f), vec3<i32>(-17494i, -18343i, 18613i), vec2<f32>(496f, 1150f), 851f, 0i), Struct_2(vec3<f32>(333f, 563f, -1333f), vec3<i32>(10865i, 0i, -55777i), vec2<f32>(-2492f, -1194f), -192f, 0i), Struct_2(vec3<f32>(-1083f, -1412f, -791f), vec3<i32>(21926i, i32(-2147483648), 25346i), vec2<f32>(-277f, 284f), 1358f, 35871i), Struct_2(vec3<f32>(-557f, -958f, -1000f), vec3<i32>(1i, -1i, 2147483647i), vec2<f32>(2882f, -1482f), -1000f, -1i), Struct_2(vec3<f32>(-670f, 976f, -535f), vec3<i32>(34620i, -38782i, 2147483647i), vec2<f32>(636f, -1225f), 1622f, 2147483647i), Struct_2(vec3<f32>(973f, -1000f, -773f), vec3<i32>(1i, -34505i, i32(-2147483648)), vec2<f32>(552f, 140f), -533f, i32(-2147483648)), Struct_2(vec3<f32>(1403f, 245f, -175f), vec3<i32>(0i, 72457i, 14090i), vec2<f32>(1000f, -214f), 920f, i32(-2147483648)), Struct_2(vec3<f32>(-1000f, -1000f, 938f), vec3<i32>(1i, -35942i, -1i), vec2<f32>(735f, 2310f), 1474f, 27694i), Struct_2(vec3<f32>(625f, 111f, 751f), vec3<i32>(1i, -28250i, -1259i), vec2<f32>(-758f, -366f), 1620f, 3031i), Struct_2(vec3<f32>(-1000f, -1103f, -2831f), vec3<i32>(2147483647i, 2147483647i, -49184i), vec2<f32>(-170f, 332f), 1000f, 1i), Struct_2(vec3<f32>(-672f, 108f, -1596f), vec3<i32>(1i, -1i, -14150i), vec2<f32>(169f, 387f), 599f, -1i), Struct_2(vec3<f32>(-157f, 920f, -2031f), vec3<i32>(2147483647i, 2147483647i, 0i), vec2<f32>(495f, -1355f), -1144f, 0i));

var<private> global1: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(102f, 1074f), vec2<f32>(-756f, 1029f), vec2<f32>(1265f, -323f), vec2<f32>(1365f, 175f), vec2<f32>(548f, -1507f), vec2<f32>(1000f, 844f), vec2<f32>(-165f, -504f), vec2<f32>(1174f, 217f), vec2<f32>(-1000f, 192f), vec2<f32>(966f, -1419f), vec2<f32>(-1685f, -423f), vec2<f32>(301f, 161f), vec2<f32>(-1489f, 368f), vec2<f32>(-162f, -769f), vec2<f32>(1384f, -1122f), vec2<f32>(1068f, 1965f), vec2<f32>(-1241f, -255f), vec2<f32>(1972f, -1506f), vec2<f32>(825f, -964f), vec2<f32>(2467f, 1981f), vec2<f32>(-506f, 539f), vec2<f32>(1183f, -830f), vec2<f32>(-744f, -273f), vec2<f32>(-1158f, -156f), vec2<f32>(-1000f, 498f), vec2<f32>(-298f, 1821f), vec2<f32>(365f, -2072f), vec2<f32>(2272f, -1000f), vec2<f32>(-581f, -395f));

var<private> global2: vec2<f32> = vec2<f32>(-1091f, 1326f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2() -> f32 {
    global1 = array<vec2<f32>, 29>();
    global1 = array<vec2<f32>, 29>();
    global2 = global1[_wgslsmith_index_u32(u_input.a.x, 29u)];
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-669f, -150f, true)) + _wgslsmith_f_op_f32(round(global2.x))) * global2.x) != global2.x, true);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-484f, -687f, -1347f)))), -min(u_input.c.wyw, _wgslsmith_div_vec3_i32(u_input.c.xxy, u_input.c.wyx)), global1[_wgslsmith_index_u32(abs(31109u), 29u)], _wgslsmith_div_f32(global2.x, global2.x), 43359i);
    return 1000f;
}

fn func_1(arg_0: vec3<f32>) -> vec3<f32> {
    let var_0 = true;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-197f, _wgslsmith_f_op_f32(-598f - global2.x), var_0))), _wgslsmith_f_op_f32(-1283f + -564f));
    global1 = array<vec2<f32>, 29>();
    global2 = vec2<f32>(var_1.x, global2.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, global2.x)))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1505f))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(109f, global2.x, global2.x)) + vec3<f32>(global2.x, 911f, -341f)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(vec3<f32>(global2.x, 442f, 1119f)))))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1436f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1748f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-566f)))))));
    var var_1 = var_0.x;
    global1 = array<vec2<f32>, 29>();
    global1 = array<vec2<f32>, 29>();
    let var_2 = _wgslsmith_sub_i32(-60738i, u_input.c.x);
    var var_3 = -vec3<i32>(u_input.c.x, 10567i, 46876i);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(var_2, ~min(1859i, 1i), ~var_3.x, _wgslsmith_div_i32(i32(-1i) * -2958i, u_input.c.x)));
}

