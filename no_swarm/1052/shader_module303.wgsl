struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: vec2<i32> = vec2<i32>(39309i, -39442i);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<f32>(-268f, -475f, -1573f, -1000f), -1i), Struct_1(vec4<f32>(-1021f, -1152f, 654f, 273f), 1i), Struct_1(vec4<f32>(1000f, 203f, 295f, 1862f), -1i), Struct_1(vec4<f32>(1994f, -2623f, 2595f, 943f), 0i), Struct_1(vec4<f32>(-1034f, -1000f, 1011f, 1000f), 1i), Struct_1(vec4<f32>(1893f, 2180f, -1120f, 1000f), -48828i), Struct_1(vec4<f32>(331f, 1033f, 597f, -113f), -1i), Struct_1(vec4<f32>(1454f, -783f, 572f, -561f), -19844i), Struct_1(vec4<f32>(1757f, -745f, -710f, -155f), 17521i), Struct_1(vec4<f32>(1000f, 128f, 364f, -582f), -11353i), Struct_1(vec4<f32>(-483f, 2148f, -895f, 1230f), -1i), Struct_1(vec4<f32>(533f, 1221f, 155f, -582f), 26126i), Struct_1(vec4<f32>(725f, 778f, -1000f, 567f), 0i), Struct_1(vec4<f32>(829f, 143f, 1024f, 1338f), -14771i), Struct_1(vec4<f32>(-1000f, 1641f, -479f, -1369f), 2147483647i), Struct_1(vec4<f32>(-658f, 1105f, 1556f, 1495f), 2147483647i), Struct_1(vec4<f32>(1418f, -857f, 413f, -473f), -36694i), Struct_1(vec4<f32>(-1000f, 190f, -1758f, -1223f), 741i), Struct_1(vec4<f32>(129f, 225f, 2681f, 705f), -1i), Struct_1(vec4<f32>(652f, -1749f, -1712f, -1000f), 35385i), Struct_1(vec4<f32>(-140f, -466f, -777f, -1102f), i32(-2147483648)), Struct_1(vec4<f32>(1356f, 1909f, 593f, -721f), 2147483647i), Struct_1(vec4<f32>(1158f, 1293f, 1455f, -230f), i32(-2147483648)), Struct_1(vec4<f32>(-1000f, 1028f, -575f, -1185f), 0i), Struct_1(vec4<f32>(-992f, 522f, -1161f, -775f), 40002i), Struct_1(vec4<f32>(986f, 834f, -689f, 167f), 0i), Struct_1(vec4<f32>(1253f, 1075f, -337f, 340f), 33937i), Struct_1(vec4<f32>(-156f, -466f, -643f, 1177f), 9145i), Struct_1(vec4<f32>(738f, -2336f, 102f, -241f), 1i), Struct_1(vec4<f32>(-313f, -799f, 1136f, -154f), -23551i));

var<private> global3: vec3<u32> = vec3<u32>(17788u, 2616u, 313u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec3<i32>) -> bool {
    var var_0 = global0.x;
    global1 = ~(-vec2<i32>(-u_input.a.x, reverseBits(abs(-23057i))));
    global0 = vec2<bool>(!(!global0.x), false);
    let var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(70937u, 4294967295u, u_input.b.x, 33734u), select(vec4<u32>(global3.x, 1u, 4294967295u, 18514u), vec4<u32>(79119u, 0u, global3.x, global3.x), global0.x), vec4<u32>(18191u, 4294967295u, 1u, 53034u) ^ vec4<u32>(1u, 39153u, 40433u, global3.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b.x, 1u, 0u, 3447u), select(vec4<u32>(4294967295u, 13270u, 6075u, u_input.b.x), vec4<u32>(4294967295u, global3.x, global3.x, u_input.b.x), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, true), global0.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global3.x, 61637u, u_input.b.x), vec4<u32>(15630u, 146u, 4294967295u, 1u))), abs(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global3.x, global3.x, 4294967295u, global3.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, global3.x)), select(vec4<u32>(4294967295u, 4294967295u, 1601u, 150495u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, global3.x), global0.x)))), firstTrailingBit(abs(reverseBits(max(vec4<u32>(u_input.b.x, 51248u, 1u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u))))));
    global1 = _wgslsmith_clamp_vec2_i32(arg_1, vec2<i32>((_wgslsmith_dot_vec2_i32(arg_3.zz, vec2<i32>(-6178i, arg_2.x)) | _wgslsmith_add_i32(arg_0.b, arg_0.b)) & arg_2.x, ~u_input.a.x), vec2<i32>(firstLeadingBit(arg_1.x), _wgslsmith_add_i32(_wgslsmith_div_i32(~global1.x, 2147483647i), _wgslsmith_add_i32(u_input.a.x & 18860i, -global1.x))));
    return global0.x;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    global1 = -u_input.a.zx;
    var var_0 = _wgslsmith_f_op_vec4_f32(min(arg_0.a, _wgslsmith_f_op_vec4_f32(-arg_0.a)));
    let var_1 = select(!vec2<bool>(true, -2929i >= _wgslsmith_add_i32(arg_0.b, 4063i)), vec2<bool>(55453u <= _wgslsmith_mult_u32(_wgslsmith_clamp_u32(7657u, u_input.b.x, 0u), global3.x), global0.x), !(!select(select(vec2<bool>(global0.x, false), vec2<bool>(true, global0.x), vec2<bool>(global0.x, false)), vec2<bool>(global0.x, true), !global0.x)));
    return Struct_2(false, arg_0.a.wz, Struct_1(_wgslsmith_f_op_vec4_f32(floor(arg_0.a)), -(~max(global1.x, u_input.a.x))), arg_0, func_3(global2[_wgslsmith_index_u32(~u_input.b.x, 30u)], _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 23928i), vec2<i32>(~(-30300i), global1.x)), ~max(u_input.a, _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 51792i, 53221i), u_input.a)), u_input.a));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> bool {
    global1 = vec2<i32>(~u_input.a.x, _wgslsmith_add_i32(~31618i, global1.x));
    var var_0 = func_2(global2[_wgslsmith_index_u32(global3.x, 30u)]);
    var var_1 = var_0.c.a.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c.a.x, var_0.d.a.x, var_0.d.a.x, var_0.b.x)))), var_0.c.a)))), -(i32(-1i) * -_wgslsmith_div_i32(0i, var_0.c.b)));
    var var_3 = _wgslsmith_add_vec2_u32(arg_0.zw, select(max(select(u_input.b.zy, global3.yz, arg_1) & global3.xy, ~vec2<u32>(global3.x, global3.x)), vec2<u32>(0u, _wgslsmith_add_u32(~global3.x, ~38038u)), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.x, var_0.c.a.x, var_0.c.a.x, var_0.c.a.x), var_2.a, vec4<bool>(global0.x, arg_1, false, arg_1))), i32(-1i) * -38619i), u_input.a.zx, _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global1.x, 1i, 17660i), vec3<i32>(global1.x, var_0.c.b, -2147483647i)), abs(vec3<i32>(-25258i, global1.x, u_input.a.x))), ~(-u_input.a))));
    return arg_0.x < global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(func_1(~(vec4<u32>(15473u, u_input.b.x, 2612u, 4294967295u) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), global0.x), global0.x || true), vec2<bool>(true, select(!select(false, global0.x, false), all(!vec3<bool>(global0.x, true, true)), global0.x)), !(!select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), vec2<bool>(false, global0.x)), vec2<bool>(false, global0.x), false)));
    let var_0 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(530f, 1512f, -219f, 1264f))), -_wgslsmith_div_i32(-2409i, 1i))).c);
    let var_1 = vec2<u32>(48278u, _wgslsmith_sub_u32(~(~global3.x), u_input.b.x) | reverseBits(0u));
    var var_2 = func_2(Struct_1(var_0.c.a, u_input.a.x)).c;
    let var_3 = Struct_1(var_2.a, select(u_input.a.x, _wgslsmith_mod_i32(56599i, _wgslsmith_clamp_i32(firstLeadingBit(var_0.d.b), global1.x, -1i)), false));
    var var_4 = var_0;
    let var_5 = vec4<bool>(any(select(!vec3<bool>(var_4.e, var_0.e, var_4.a), select(!vec3<bool>(false, false, global0.x), !vec3<bool>(global0.x, var_0.e, var_4.a), select(vec3<bool>(var_4.e, false, false), vec3<bool>(global0.x, false, true), global0.x)), select(!vec3<bool>(true, var_4.a, true), select(vec3<bool>(var_4.a, global0.x, global0.x), vec3<bool>(var_0.a, var_4.a, true), vec3<bool>(var_4.a, global0.x, false)), true))), !any(vec3<bool>(true, func_2(Struct_1(var_4.c.a, u_input.a.x)).a, global0.x)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, var_1.x, u_input.b.x, 53263u)), max(vec4<u32>(u_input.b.x, global3.x, var_1.x, var_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 91439u, u_input.b.x, global3.x), vec4<u32>(u_input.b.x, var_1.x, 36381u, global3.x)))) != select(firstLeadingBit(4294967295u), _wgslsmith_clamp_u32(45675u, 2505u, var_1.x) ^ global3.x, var_0.e), -var_3.b < select(func_2(var_0.c).d.b, ~u_input.a.x, true & (var_0.e | false)));
    var var_6 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_0.d.a.x + var_3.a.x), 1579f, _wgslsmith_div_f32(var_4.d.a.x, 350f), -985f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.a) + vec4<f32>(var_4.c.a.x, var_2.a.x, var_4.d.a.x, var_4.b.x)))))), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(select(2147483647i, var_4.c.b, !(!(!var_0.e))), abs(~_wgslsmith_add_u32(var_1.x, 0u)) & ~_wgslsmith_dot_vec3_u32(~u_input.b, u_input.b), 1i);
}

