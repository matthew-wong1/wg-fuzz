struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<f32>(-1006f, -267f, 1333f), 102111u), Struct_1(vec3<f32>(918f, 658f, -1567f), 30550u), Struct_1(vec3<f32>(-1904f, 352f, -204f), 4294967295u), Struct_1(vec3<f32>(-669f, -1595f, 1000f), 0u), Struct_1(vec3<f32>(2712f, 669f, 976f), 37521u), Struct_1(vec3<f32>(861f, 848f, 1000f), 28307u), Struct_1(vec3<f32>(-157f, 107f, -1143f), 10836u), Struct_1(vec3<f32>(-218f, 1876f, -1396f), 50295u), Struct_1(vec3<f32>(705f, -416f, 396f), 21508u), Struct_1(vec3<f32>(-234f, 1699f, -832f), 4294967295u), Struct_1(vec3<f32>(-764f, 415f, 2915f), 24000u), Struct_1(vec3<f32>(885f, -614f, 312f), 4294967295u), Struct_1(vec3<f32>(151f, -558f, -1352f), 9111u), Struct_1(vec3<f32>(209f, -2408f, 438f), 4294967295u), Struct_1(vec3<f32>(1000f, 1000f, 134f), 1u), Struct_1(vec3<f32>(320f, -1260f, 2030f), 14108u), Struct_1(vec3<f32>(1849f, 280f, 1454f), 24944u), Struct_1(vec3<f32>(-1377f, 1000f, 625f), 6628u), Struct_1(vec3<f32>(874f, 388f, 307f), 0u), Struct_1(vec3<f32>(120f, -1832f, -706f), 10549u), Struct_1(vec3<f32>(1308f, 739f, -870f), 14406u), Struct_1(vec3<f32>(-360f, -265f, -585f), 14767u), Struct_1(vec3<f32>(2761f, 2140f, -551f), 62134u), Struct_1(vec3<f32>(-1190f, 248f, -555f), 19932u), Struct_1(vec3<f32>(2046f, 1000f, -209f), 4294967295u), Struct_1(vec3<f32>(-1363f, 138f, -430f), 33394u), Struct_1(vec3<f32>(953f, 304f, 168f), 4294967295u), Struct_1(vec3<f32>(-940f, 1064f, 573f), 4294967295u), Struct_1(vec3<f32>(-169f, -370f, 1000f), 0u), Struct_1(vec3<f32>(331f, -2270f, -1071f), 4294967295u), Struct_1(vec3<f32>(374f, 775f, -1658f), 25669u));

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, false, false)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: u32) -> vec3<f32> {
    var var_0 = -u_input.d;
    global3 = array<Struct_2, 26>();
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(288f, 136f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(732f, -858f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1181f, 884f)), _wgslsmith_f_op_f32(floor(710f)), countOneBits(0i) != min(arg_2.x, arg_2.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1044f)))))));
    var_0 = ~arg_2.x;
    return vec3<f32>(713f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2394f)), _wgslsmith_f_op_f32(f32(-1f) * -567f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, -1637f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1262f)) + -358f))));
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(876f, 1041f, -1211f) + vec3<f32>(331f, 497f, -1166f)), _wgslsmith_f_op_vec3_f32(func_3(49060u, u_input.b, vec4<i32>(-1i, 2147483647i, u_input.d, u_input.d), global0.x))) - vec3<f32>(576f, -1190f, 1f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-354f, -1487f, -288f) * vec3<f32>(-639f, 848f, 1488f)), vec3<f32>(-1000f, -1000f, -1000f)))))), _wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(min(_wgslsmith_clamp_u32(102948u, global0.x, 0u), u_input.c.x | 7153u), u_input.a)));
    global3 = array<Struct_2, 26>();
    return true;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = !vec4<bool>(arg_0.x, !arg_2.a.x & (_wgslsmith_clamp_u32(global0.x, global0.x, u_input.a) >= 20662u), true, func_2());
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(958f))), 1109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(383f - _wgslsmith_f_op_f32(1000f - -302f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-887f + -510f) - _wgslsmith_f_op_f32(select(1817f, -1013f, arg_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1409f, 259f, -894f, -651f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1451f, 1468f, -1000f, 1620f), vec4<f32>(444f, 1354f, -509f, -315f)))));
    var var_2 = countOneBits(vec4<u32>(4294967295u, 12184u & _wgslsmith_mult_u32(select(global0.x, global0.x, false), global0.x), 798u, ~87556u));
    return arg_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = select(u_input.c.x, max(~_wgslsmith_mod_u32(~arg_3.b, global0.x), ~u_input.b.x), true);
    global2 = array<Struct_1, 31>();
    global2 = array<Struct_1, 31>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 30>();
    var var_0 = Struct_2(vec3<bool>(any(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)), false));
    let var_1 = 0u;
    let var_2 = global0.x;
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-578f)) + _wgslsmith_f_op_f32(-272f + -439f)))), -687f, _wgslsmith_f_op_f32(min(1000f, 1146f))), (func_4(!vec4<bool>(var_0.a.x, true, true, var_0.a.x), func_1(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), u_input.e.yx, global1[_wgslsmith_index_u32(global0.x, 30u)]), Struct_2(vec3<bool>(var_0.a.x, var_0.a.x, true)), global2[_wgslsmith_index_u32(abs(8333u), 31u)]) >> (~_wgslsmith_add_u32(u_input.b.x, var_1) % 32u)) ^ 8986u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(u_input.d)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(var_1), u_input.c.x, 979u), vec3<u32>(var_1, var_3.b, var_1 ^ 0u)), ~u_input.b));
}

