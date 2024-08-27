struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 29529u);

var<private> global1: Struct_3;

var<private> global2: array<f32, 23> = array<f32, 23>(685f, -484f, 360f, 1039f, -1568f, 1276f, 457f, -1235f, -351f, 154f, 390f, 860f, -1000f, -1000f, -527f, 769f, -580f, -1281f, 729f, 685f, -1335f, -2259f, 675f);

var<private> global3: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(1463f, -1000f), vec2<f32>(-1000f, 919f), vec2<f32>(245f, 1254f), vec2<f32>(-1000f, 347f), vec2<f32>(-492f, 469f), vec2<f32>(1305f, 1538f), vec2<f32>(-1000f, -996f), vec2<f32>(1000f, -1085f), vec2<f32>(-1239f, -244f), vec2<f32>(-977f, 1805f), vec2<f32>(-1708f, -2059f), vec2<f32>(-1423f, 971f), vec2<f32>(-1075f, 362f), vec2<f32>(579f, -261f), vec2<f32>(757f, 697f), vec2<f32>(-518f, 1018f), vec2<f32>(1665f, 1353f), vec2<f32>(342f, -1141f), vec2<f32>(2022f, -1000f), vec2<f32>(-851f, 538f), vec2<f32>(2390f, -283f), vec2<f32>(555f, -713f), vec2<f32>(-504f, -1000f), vec2<f32>(-1863f, 520f), vec2<f32>(1967f, 1659f), vec2<f32>(-1000f, -1600f));

var<private> global4: array<vec4<u32>, 14>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = arg_0.xx;
    var var_1 = arg_1;
    var_1 = arg_1;
    global3 = array<vec2<f32>, 26>();
    global2 = array<f32, 23>();
    return var_1.b.a;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    let var_0 = 0i;
    let var_1 = true;
    let var_2 = Struct_2(arg_3.b, arg_3.b, arg_3.a, _wgslsmith_f_op_f32(floor(220f)), true);
    global1 = Struct_3(global1.a, min(~(~global0.x), firstLeadingBit(~u_input.c)) << (_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, global1.b), _wgslsmith_add_u32(global0.x, u_input.b)), 1u) % 32u));
    global0 = ~_wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(23457u, arg_2.b), vec2<u32>(8732u, 0u)), vec2<u32>(arg_2.b, 72476u), _wgslsmith_mult_vec2_u32(vec2<u32>(58583u, 0u), vec2<u32>(arg_2.b, 0u))), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, arg_2.b), _wgslsmith_add_vec2_u32(~vec2<u32>(global0.x, 4294967295u), vec2<u32>(0u, 0u))));
    return (u_input.a.x >> (firstLeadingBit(~_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(53565u, 14u)], global4[_wgslsmith_index_u32(23329u, 14u)])) % 32u)) ^ (4005i & var_0);
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> f32 {
    var var_0 = u_input.a;
    var var_1 = global3[_wgslsmith_index_u32(~max(firstTrailingBit(~(~arg_1.b)), u_input.c), 26u)];
    var_1 = global3[_wgslsmith_index_u32(arg_1.b, 26u)];
    var var_2 = ~func_4(true, 37848u < ((1u ^ global1.b) | (global1.b & arg_1.b)), Struct_3(441f, 1u), Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), Struct_1(vec2<bool>(true, true)), Struct_1(func_3(vec3<f32>(-128f, global2[_wgslsmith_index_u32(55623u, 23u)], global1.a), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), arg_1.a, false), Struct_3(var_1.x, 16417u))), arg_1.a, false));
    var var_3 = !(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), func_3(vec3<f32>(global1.a, 207f, global2[_wgslsmith_index_u32(u_input.c, 23u)]), Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), -805f, true), arg_1), true), vec2<bool>(false, var_0.x == var_0.x), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(true, true, true, false)))));
    return -869f;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>) -> vec4<f32> {
    let var_0 = arg_2.x;
    global4 = array<vec4<u32>, 14>();
    let var_1 = arg_0;
    let var_2 = u_input.b;
    var var_3 = select(!select(vec2<bool>(var_1.e, all(vec3<bool>(var_1.c.a.x, arg_1, arg_1))), var_1.c.a, select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_0.e), vec2<bool>(false, arg_0.a.a.x))), var_1.c.a, true);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -1100f, -869f, var_1.d))), vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 23u)] + var_1.d), _wgslsmith_f_op_f32(func_2(u_input.a.x, Struct_3(var_1.d, var_0))), global1.a, global1.a), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, var_1.d, -1465f, global2[_wgslsmith_index_u32(46771u, 23u)]) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d, global1.a, global1.a, 1476f), vec4<f32>(1000f, 1095f, global2[_wgslsmith_index_u32(var_2, 23u)], -702f), vec4<bool>(var_1.e, arg_1, false, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d, var_1.d, global1.a, global2[_wgslsmith_index_u32(global0.x, 23u)]), vec4<f32>(global1.a, var_1.d, var_1.d, global2[_wgslsmith_index_u32(0u, 23u)])) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.d, arg_0.d, var_1.d, 725f)))))))));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = (true || !all(vec4<bool>(true, true, true, true))) && all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)));
    global3 = array<vec2<f32>, 26>();
    var var_1 = Struct_1(vec2<bool>(select(true, true, true), !all(vec2<bool>(false, false))));
    var var_2 = !select(false | all(select(vec4<bool>(false, false, var_1.a.x, var_1.a.x), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, var_1.a.x))), false, false);
    var var_3 = ~reverseBits(~(-vec4<i32>(-50652i, u_input.a.x, 36106i, arg_0))) | (select(reverseBits(~vec4<i32>(arg_0, -2147483647i, -1631i, arg_0)), (vec4<i32>(52415i, 2147483647i, arg_0, 11060i) & vec4<i32>(-31990i, u_input.a.x, 2147483647i, u_input.a.x)) >> (global4[_wgslsmith_index_u32(u_input.b, 14u)] % vec4<u32>(32u)), true) & -vec4<i32>(firstLeadingBit(1i), -23622i, _wgslsmith_mod_i32(17790i, 2147483647i), u_input.a.x));
    return vec2<u32>(select(global0.x, 4294967295u, select(var_1.a.x, var_1.a.x, any(!vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x)))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(187f, _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(u_input.b, 39164u))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 0u), vec2<u32>(global0.x, u_input.c), vec2<u32>(45285u, 38803u)), func_5(u_input.a.x, _wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), global1.a, false), true, vec2<u32>(global0.x, 4294967295u))), Struct_3(global2[_wgslsmith_index_u32(67590u, 23u)], 4331u)))));
    let var_0 = -(~vec3<i32>(1i, i32(-1i) * -1i, -1i)) ^ ~_wgslsmith_mod_vec3_i32(-min(vec3<i32>(14536i, 1i, -1i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, -1i, -2147483647i) | firstTrailingBit(vec3<i32>(-8510i, 7047i, 0i)));
    global2 = array<f32, 23>();
    global0 = ~(~(~vec2<u32>(firstTrailingBit(42798u), 72819u)));
    let var_1 = Struct_1(vec2<bool>(true, true));
    var var_2 = Struct_1(var_1.a);
    let var_3 = ~min(u_input.a.x, u_input.a.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1084f, global2[_wgslsmith_index_u32(0u, 23u)], 665f, -2645f) - vec4<f32>(-902f, -208f, global2[_wgslsmith_index_u32(u_input.c, 23u)], 385f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global2[_wgslsmith_index_u32(u_input.c, 23u)], -229f, -1468f)), select(vec4<bool>(false, var_1.a.x, true, var_1.a.x), vec4<bool>(var_2.a.x, var_2.a.x, true, false), vec4<bool>(false, var_2.a.x, true, var_2.a.x)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(0u, 23u)], global1.a, -422f, global1.a), vec4<f32>(1724f, 444f, global1.a, global2[_wgslsmith_index_u32(36036u, 23u)]))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global2[_wgslsmith_index_u32(4294967295u, 23u)], 1628f, -901f) * vec4<f32>(421f, global2[_wgslsmith_index_u32(4294967295u, 23u)], -1302f, global2[_wgslsmith_index_u32(12857u, 23u)])) - vec4<f32>(global1.a, 133f, global1.a, global1.a))))), vec4<bool>(select(!all(var_2.a), !all(vec2<bool>(true, var_2.a.x)), any(vec2<bool>(true, true))), !(-var_3 > _wgslsmith_add_i32(var_3, 0i)), any(vec2<bool>(true, true)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(709f + -1000f)), 1000f), global1.b, global0.x, 1u);
}

