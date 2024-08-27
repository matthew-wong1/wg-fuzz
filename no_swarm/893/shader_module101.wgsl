struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global1: array<vec3<f32>, 30>;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<i32>(-28362i, 0i, -28694i, i32(-2147483648)), vec4<f32>(726f, 240f, 1254f, -775f), vec2<f32>(-318f, -1047f)), Struct_1(vec4<i32>(12218i, 12522i, 2147483647i, -10174i), vec4<f32>(1079f, 192f, -1104f, 487f), vec2<f32>(1272f, -1344f)), Struct_1(vec4<i32>(73979i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<f32>(273f, 241f, -2083f, -558f), vec2<f32>(229f, -1434f)), Struct_1(vec4<i32>(13400i, 1i, 20978i, -1i), vec4<f32>(1000f, -399f, 1473f, -1000f), vec2<f32>(-462f, -418f)), Struct_1(vec4<i32>(21824i, 19224i, -1i, 37539i), vec4<f32>(1847f, -848f, -2215f, -689f), vec2<f32>(2487f, 752f)), Struct_1(vec4<i32>(1i, -7248i, 23i, -4976i), vec4<f32>(-1000f, 704f, 1847f, 1404f), vec2<f32>(905f, -152f)), Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 1i), vec4<f32>(1000f, -135f, -1152f, -221f), vec2<f32>(1140f, 229f)), Struct_1(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 0i), vec4<f32>(1000f, 2364f, -1657f, 380f), vec2<f32>(1397f, -1705f)), Struct_1(vec4<i32>(-1573i, i32(-2147483648), -1i, 9865i), vec4<f32>(899f, -1141f, 2119f, 707f), vec2<f32>(-140f, 1000f)), Struct_1(vec4<i32>(-43419i, 0i, -4496i, -36489i), vec4<f32>(636f, -1452f, -3148f, -587f), vec2<f32>(-271f, 699f)), Struct_1(vec4<i32>(0i, 1323i, i32(-2147483648), 1i), vec4<f32>(1277f, 336f, 1247f, -285f), vec2<f32>(-1716f, 945f)), Struct_1(vec4<i32>(-11984i, 21583i, 28242i, -1i), vec4<f32>(367f, 526f, 107f, 1000f), vec2<f32>(1663f, -411f)), Struct_1(vec4<i32>(0i, -11089i, 9133i, 0i), vec4<f32>(547f, 152f, 424f, 768f), vec2<f32>(442f, -415f)), Struct_1(vec4<i32>(-25633i, 31727i, 2147483647i, 31405i), vec4<f32>(-490f, -542f, 132f, 444f), vec2<f32>(-470f, -455f)), Struct_1(vec4<i32>(24678i, -56614i, 29624i, 36563i), vec4<f32>(-648f, -1523f, 131f, -652f), vec2<f32>(743f, 647f)), Struct_1(vec4<i32>(-1i, 19377i, 0i, i32(-2147483648)), vec4<f32>(-1035f, 113f, 1092f, 1000f), vec2<f32>(2550f, -1243f)), Struct_1(vec4<i32>(0i, -59610i, 7235i, -18981i), vec4<f32>(262f, 2148f, 1014f, -2004f), vec2<f32>(-1005f, -914f)), Struct_1(vec4<i32>(1i, i32(-2147483648), -6437i, i32(-2147483648)), vec4<f32>(-1031f, -163f, -934f, 841f), vec2<f32>(336f, 1613f)), Struct_1(vec4<i32>(-4109i, -6935i, 16376i, -72377i), vec4<f32>(-1007f, 496f, -399f, -846f), vec2<f32>(1374f, -518f)), Struct_1(vec4<i32>(7443i, 85448i, -7455i, 13980i), vec4<f32>(-1247f, 590f, -994f, -344f), vec2<f32>(969f, 819f)), Struct_1(vec4<i32>(9681i, -58532i, -22148i, 1i), vec4<f32>(-1734f, -1154f, -1558f, 314f), vec2<f32>(195f, 2322f)), Struct_1(vec4<i32>(29172i, 24656i, -41399i, -15554i), vec4<f32>(270f, 1805f, 1000f, 2246f), vec2<f32>(579f, -118f)), Struct_1(vec4<i32>(40860i, 8692i, 6515i, -43247i), vec4<f32>(1000f, -859f, 2409f, -308f), vec2<f32>(-453f, -1431f)), Struct_1(vec4<i32>(-1i, -51121i, 1i, -16643i), vec4<f32>(-496f, -329f, 530f, 394f), vec2<f32>(-768f, -1197f)), Struct_1(vec4<i32>(i32(-2147483648), 1i, -1i, 1i), vec4<f32>(2541f, 661f, 303f, 1587f), vec2<f32>(917f, -1596f)), Struct_1(vec4<i32>(2147483647i, -1i, 1i, -11720i), vec4<f32>(990f, 750f, -2875f, 1000f), vec2<f32>(-236f, -1297f)), Struct_1(vec4<i32>(7065i, 0i, -23622i, -4316i), vec4<f32>(452f, 1290f, -618f, 160f), vec2<f32>(703f, -1919f)), Struct_1(vec4<i32>(1053i, 1124i, 0i, -70171i), vec4<f32>(-1000f, 557f, 499f, -780f), vec2<f32>(-1989f, -626f)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec4<f32> {
    var var_0 = arg_0;
    global1 = array<vec3<f32>, 30>();
    let var_1 = vec2<i32>(-29381i, _wgslsmith_clamp_i32(-2147483647i, 46814i, 81510i));
    global2 = array<Struct_1, 28>();
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-417f))));
    return vec4<f32>(1819f, 752f, _wgslsmith_f_op_f32(step(-257f, _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 341f))))), _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1545f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.b.x, -459f))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = Struct_1(min(_wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, u_input.a.x, arg_2, arg_2), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x, arg_2, 2147483647i), vec4<i32>(-9583i, u_input.a.x, arg_1.a.x, 59224i)))), ~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(max(1u, 99793u), 28u)], arg_0.a.x, ~(~u_input.b))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * 1366f)), arg_0.b.x, arg_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.x * 1709f), _wgslsmith_f_op_f32(-1038f - -385f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.c.x, -178f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c.x, arg_1.c.x), arg_1.b.yy)))), _wgslsmith_f_op_vec2_f32(-arg_1.b.ww)));
    let var_1 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2258f), _wgslsmith_div_f32(-236f, 443f), -469f, 863f) * vec4<f32>(_wgslsmith_div_f32(arg_1.b.x, 1528f), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -578f)))), _wgslsmith_f_op_vec2_f32(max(var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_0.a, vec4<f32>(arg_1.c.x, var_0.c.x, -1291f, var_0.c.x), vec2<f32>(-311f, arg_0.c.x)), arg_1, arg_0.a.x, u_input.b)).xx)))));
    global0 = vec4<bool>(true, global0.x, any(global0.zw), global0.x);
    let var_2 = var_0;
    global0 = !(!(!select(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, false, true, global0.x), global0.x), !vec4<bool>(global0.x, global0.x, false, global0.x), global0.x)));
    return _wgslsmith_f_op_f32(-arg_0.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> bool {
    let var_0 = -19782i;
    var var_1 = global0.x;
    var_1 = global0.x;
    global1 = array<vec3<f32>, 30>();
    let var_2 = ~vec3<u32>(~_wgslsmith_mult_u32(u_input.b, _wgslsmith_add_u32(u_input.b, u_input.b)), _wgslsmith_mod_u32(u_input.b, ~(~u_input.b)), abs(_wgslsmith_mult_u32(47678u, u_input.b) >> (u_input.b % 32u)));
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = vec4<bool>(any(select(select(!vec3<bool>(global0.x, global0.x, global0.x), !global0.zxw, vec3<bool>(true, false, true)), !global0.zwz, global0.x)), false, false, !(global0.x & (true || global0.x)));
    var var_1 = Struct_1(vec4<i32>(81304i, 1i, 2147483647i, ~(-17560i >> (firstTrailingBit(u_input.b) % 32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-111f, _wgslsmith_f_op_f32(f32(-1f) * -321f), _wgslsmith_f_op_f32(f32(-1f) * -871f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))), arg_0.b.zy);
    var var_2 = func_4(Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-529f, arg_2.b.x, _wgslsmith_f_op_f32(func_2(arg_2, Struct_1(arg_0.a, arg_2.b, arg_0.c), -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -631f)))), arg_2.c), -abs(abs(~vec4<i32>(0i, arg_0.a.x, u_input.a.x, -42164i))));
    let var_3 = reverseBits(select(vec4<u32>(u_input.b, select(reverseBits(4294967295u), ~0u, true), ~abs(0u), ~(u_input.b ^ u_input.b)), select(_wgslsmith_div_vec4_u32(select(vec4<u32>(43463u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 39040u, 4294967295u, 36569u), vec4<bool>(global0.x, true, global0.x, true)), ~vec4<u32>(30089u, u_input.b, 1893u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 28367u, 0u) | vec4<u32>(u_input.b, u_input.b, 11680u, 41613u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 44562u, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 64562u, u_input.b), vec4<u32>(4294967295u, 47810u, u_input.b, 0u))), !vec4<bool>(global0.x, true, var_0.x, var_0.x)), !(!var_0.x && all(vec4<bool>(false, false, false, var_0.x)))));
    var var_4 = Struct_1(vec4<i32>(-var_1.a.x, -34687i, -(abs(-1i) & min(-2147483647i, arg_2.a.x)), ~_wgslsmith_sub_i32(55794i, 1i)), arg_0.b, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1074f, -493f), 335f, global0.x)), _wgslsmith_div_f32(var_1.b.x, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(652f))))));
    return select(vec4<bool>(global0.x, true, global0.x, select(global0.x & !global0.x, func_4(Struct_1(var_1.a, arg_2.b, arg_0.b.wz), arg_2.a), !global0.x)), !(!vec4<bool>(global0.x || var_0.x, var_0.x, any(vec4<bool>(var_0.x, global0.x, var_0.x, global0.x)), var_0.x)), true | (func_4(Struct_1(vec4<i32>(-27179i, 0i, -1i, -19096i), vec4<f32>(var_4.b.x, -1000f, arg_1, arg_1), var_4.c), var_1.a) | ((arg_2.a.x & var_4.a.x) < u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 28>();
    let var_0 = global0.x;
    global0 = !select(!func_1(global2[_wgslsmith_index_u32(u_input.b | 1u, 28u)], 145f, Struct_1(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 1i), vec4<f32>(-626f, -121f, 281f, -1380f), vec2<f32>(-590f, 256f))), vec4<bool>(global0.x, select(!global0.x, true, false != global0.x), !global0.x, true), all(select(select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(false, true, true, false), global0.x), !vec4<bool>(true, false, global0.x, false), !vec4<bool>(false, true, global0.x, global0.x))));
    var var_1 = global2[_wgslsmith_index_u32(min(~(~_wgslsmith_mod_u32(u_input.b, u_input.b)), u_input.b), 28u)];
    let var_2 = ~abs(53824u);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(12289u, 28u)], Struct_1(var_1.a, vec4<f32>(-157f, 865f, 1288f, var_1.b.x), vec2<f32>(-956f, var_1.c.x)), -12606i))))))) + -572f);
    let x = u_input.a;
    s_output = StorageBuffer(-(~abs(~u_input.a.www)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1[_wgslsmith_index_u32(47527u, 30u)])) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(43788u, 30u)], vec3<f32>(-1473f, -910f, -908f), vec3<bool>(false, global0.x, global0.x))))))), vec4<f32>(_wgslsmith_f_op_f32(-var_3), var_3, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -178f), var_1.b.x)), -133f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(338f, 494f))))));
}

