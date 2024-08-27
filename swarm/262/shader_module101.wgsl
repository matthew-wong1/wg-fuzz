struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(0i, vec3<u32>(4294967295u, 22520u, 1u), -622f), Struct_1(i32(-2147483648), vec3<u32>(24672u, 18404u, 37508u), -1573f), Struct_1(-5602i, vec3<u32>(1u, 7337u, 0u), -490f), Struct_1(i32(-2147483648), vec3<u32>(53516u, 4294967295u, 1u), -1033f), Struct_1(1i, vec3<u32>(45772u, 56089u, 34443u), 1864f), Struct_1(-39382i, vec3<u32>(4294967295u, 4294967295u, 1225u), -485f), Struct_1(0i, vec3<u32>(1u, 1u, 4294967295u), 384f), Struct_1(-58188i, vec3<u32>(0u, 4294967295u, 1u), -1812f), Struct_1(-56426i, vec3<u32>(1u, 45760u, 63240u), 535f), Struct_1(-1i, vec3<u32>(8333u, 14316u, 123442u), -1170f), Struct_1(i32(-2147483648), vec3<u32>(25673u, 50559u, 4294967295u), -1263f), Struct_1(i32(-2147483648), vec3<u32>(0u, 25320u, 61736u), -1706f), Struct_1(i32(-2147483648), vec3<u32>(46534u, 0u, 38676u), -923f), Struct_1(-1i, vec3<u32>(4294967295u, 4294967295u, 19018u), -328f), Struct_1(i32(-2147483648), vec3<u32>(86603u, 11502u, 14645u), -844f), Struct_1(1i, vec3<u32>(1u, 0u, 46270u), -1539f), Struct_1(7312i, vec3<u32>(4294967295u, 1u, 4294967295u), -1677f), Struct_1(-25500i, vec3<u32>(1u, 4294967295u, 88635u), 310f), Struct_1(-39878i, vec3<u32>(6296u, 0u, 54601u), -254f), Struct_1(i32(-2147483648), vec3<u32>(10069u, 66957u, 4294967295u), 1684f), Struct_1(0i, vec3<u32>(4294967295u, 61163u, 0u), -1000f), Struct_1(-19418i, vec3<u32>(1u, 45235u, 42829u), -494f), Struct_1(60220i, vec3<u32>(1u, 4294967295u, 0u), 1014f), Struct_1(77584i, vec3<u32>(121388u, 1u, 1u), 806f), Struct_1(-5098i, vec3<u32>(36494u, 102213u, 1u), -1486f), Struct_1(-30985i, vec3<u32>(4607u, 1406u, 4294967295u), 288f), Struct_1(2147483647i, vec3<u32>(39943u, 72864u, 8169u), 192f), Struct_1(-54274i, vec3<u32>(16587u, 0u, 0u), 273f), Struct_1(-27659i, vec3<u32>(5227u, 11883u, 1303u), -758f), Struct_1(26138i, vec3<u32>(4294967295u, 3141u, 7393u), 1225f));

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: array<u32, 31>;

var<private> global4: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-1000f, 1297f, 337f), vec3<f32>(1415f, 1007f, -917f), vec3<f32>(-1124f, -1016f, -2125f), vec3<f32>(-1111f, -230f, -719f), vec3<f32>(-1125f, 1000f, -1415f), vec3<f32>(1408f, -492f, 805f), vec3<f32>(130f, -732f, 1111f), vec3<f32>(498f, -822f, -628f), vec3<f32>(987f, 1046f, 545f), vec3<f32>(200f, -1000f, 171f), vec3<f32>(-1566f, -1604f, -771f), vec3<f32>(-302f, -1337f, -1401f), vec3<f32>(-763f, 191f, 692f), vec3<f32>(949f, 1727f, -728f), vec3<f32>(-590f, -223f, -1131f), vec3<f32>(-1561f, -702f, 251f), vec3<f32>(-260f, -401f, -333f), vec3<f32>(-370f, 278f, -1392f), vec3<f32>(1585f, -1540f, 1330f), vec3<f32>(-599f, -183f, -565f), vec3<f32>(-1455f, -787f, -238f), vec3<f32>(437f, 932f, 656f), vec3<f32>(870f, 741f, 563f), vec3<f32>(1269f, -1140f, -126f), vec3<f32>(-964f, 1341f, 1000f), vec3<f32>(-689f, -164f, -571f), vec3<f32>(-1000f, 1294f, -1283f), vec3<f32>(-490f, -1000f, 1021f));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_3) -> bool {
    global1 = Struct_1(global1.a, u_input.c.wyw, _wgslsmith_f_op_f32(abs(231f)));
    let var_0 = true;
    var var_1 = -(~(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x) ^ vec4<i32>(arg_0.a.a, u_input.d.x, 34680i, 19216i)) | firstTrailingBit(-vec4<i32>(0i, global1.a, u_input.d.x, arg_0.a.a))) & (_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, 0i, -2147483647i, u_input.d.x), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.a, u_input.d.x, global1.a, -1i), vec4<i32>(arg_0.a.a, u_input.d.x, global1.a, u_input.d.x)) << (~vec4<u32>(u_input.c.x, u_input.a.x, global3[_wgslsmith_index_u32(global1.b.x, 31u)], 0u) % vec4<u32>(32u))) >> (~u_input.c % vec4<u32>(32u)));
    var var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(619f, 1004f) + vec2<f32>(arg_0.a.c, -493f)))))))));
    return any(!select(select(!vec3<bool>(var_0, var_0, true), !vec3<bool>(true, var_0, false), false), vec3<bool>(var_0, true, !var_0), vec3<bool>(all(vec4<bool>(var_0, var_0, true, true)), var_0 && true, var_0)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global3 = array<u32, 31>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - arg_0.c);
    let var_1 = arg_0.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1953f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1100f))))));
    var var_3 = arg_0;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-163f + 363f))));
    global2 = ~(~71378u);
    global1 = arg_2.b;
    global4 = array<vec3<f32>, 28>();
    let var_1 = ~arg_0.a;
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(~19187u, _wgslsmith_dot_vec3_u32(global1.b, ~vec3<u32>(1u, global3[_wgslsmith_index_u32(global1.b.x, 31u)], arg_2.b.b.x)), 24403u, global1.b.x), ~(~u_input.c));
}

fn func_1() -> u32 {
    var var_0 = select(u_input.c.x, ~u_input.a.x, !(!all(vec3<bool>(false, true, false))));
    var_0 = abs(0u);
    global1 = global0[_wgslsmith_index_u32(19574u, 30u)];
    var var_1 = !vec4<bool>(any(vec3<bool>(global1.c != global1.c, true, true)), false, all(vec4<bool>(true, false, true, false)) & select(true, true, true), true);
    var_1 = !select(!(!vec4<bool>(true, var_1.x, var_1.x, true)), select(vec4<bool>(true, var_1.x & var_1.x, var_1.x, any(vec4<bool>(var_1.x, false, true, var_1.x))), vec4<bool>(true, true, true || var_1.x, true), vec4<bool>(var_1.x, false, false, func_2(Struct_3(global0[_wgslsmith_index_u32(u_input.b, 30u)])))), !any(!vec4<bool>(false, var_1.x, true, true)));
    return global3[_wgslsmith_index_u32(global1.b.x >> (func_4(global0[_wgslsmith_index_u32(~(~countOneBits(global1.b.x)), 30u)], func_3(global0[_wgslsmith_index_u32(~(~4294967295u), 30u)]), Struct_2(-1456f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(u_input.c.x, 2283u), u_input.a.x), 31u)], 30u)]), !(!(!vec4<bool>(true, true, true, var_1.x)))) % 32u), 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec4<u32>(u_input.a.x, 1741u, 4294967295u, func_1()));
    let var_1 = true;
    var var_2 = firstTrailingBit(-u_input.d.yx << (firstTrailingBit(abs(vec2<u32>(0u, global3[_wgslsmith_index_u32(var_0.x, 31u)]) << (var_0.xw % vec2<u32>(32u)))) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.c, global1.c), vec2<f32>(483f, global1.c), var_1)) - vec2<f32>(global1.c, -1382f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-195f, -584f) * vec2<f32>(global1.c, 237f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.c, 668f), vec2<f32>(180f, global1.c))), _wgslsmith_div_vec2_f32(vec2<f32>(global1.c, -1122f), vec2<f32>(623f, 1192f)), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, false))))), all(vec3<bool>(var_1, var_1 | false, var_1)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1044f, global1.c)), vec2<f32>(802f, -527f), select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), var_1))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-760f, global1.c), vec2<f32>(-506f, global1.c), true)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-362f, global1.c)))))), !vec2<bool>(u_input.b <= 0u, !var_1))));
    let var_4 = all(!(!select(!vec4<bool>(false, var_1, var_1, true), vec4<bool>(var_1, true, true, var_1), u_input.d.x < -8108i)));
    global4 = array<vec3<f32>, 28>();
    global3 = array<u32, 31>();
    global4 = array<vec3<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.x)))))), global3[_wgslsmith_index_u32(1u << (abs(_wgslsmith_div_u32(u_input.b, 0u)) % 32u), 31u)] << (global3[_wgslsmith_index_u32(~(~(global3[_wgslsmith_index_u32(5804u, 31u)] & 6354u)), 31u)] % 32u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(355f + 325f), _wgslsmith_f_op_f32(max(global1.c, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1.c)))))));
}

