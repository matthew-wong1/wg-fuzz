struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 2>;

var<private> global1: array<bool, 19> = array<bool, 19>(false, false, true, true, false, false, false, false, false, true, true, true, true, true, true, true, true, true, true);

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec2<f32>(335f, -1058f), vec2<u32>(1u, 23683u), vec2<u32>(4294967295u, 37480u)), Struct_2(vec2<f32>(-205f, -220f), vec2<u32>(2102u, 0u), vec2<u32>(16413u, 26142u)), Struct_2(vec2<f32>(725f, 627f), vec2<u32>(4294967295u, 47473u), vec2<u32>(0u, 0u)), Struct_2(vec2<f32>(-1000f, -1000f), vec2<u32>(1u, 106384u), vec2<u32>(1u, 0u)), Struct_2(vec2<f32>(-704f, 411f), vec2<u32>(22376u, 4294967295u), vec2<u32>(0u, 1u)), Struct_2(vec2<f32>(1000f, -992f), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(98948u, 1u)), Struct_2(vec2<f32>(1098f, 1259f), vec2<u32>(11145u, 0u), vec2<u32>(4294967295u, 36003u)), Struct_2(vec2<f32>(-1521f, 426f), vec2<u32>(4294967295u, 19603u), vec2<u32>(4294967295u, 0u)), Struct_2(vec2<f32>(-1183f, 2778f), vec2<u32>(0u, 0u), vec2<u32>(6772u, 45488u)), Struct_2(vec2<f32>(445f, 682f), vec2<u32>(0u, 15814u), vec2<u32>(8126u, 4294967295u)), Struct_2(vec2<f32>(-491f, -1677f), vec2<u32>(4294967295u, 1u), vec2<u32>(23033u, 12451u)), Struct_2(vec2<f32>(757f, -1051f), vec2<u32>(4294967295u, 6473u), vec2<u32>(9905u, 24748u)), Struct_2(vec2<f32>(1000f, 1326f), vec2<u32>(0u, 12636u), vec2<u32>(62340u, 1u)), Struct_2(vec2<f32>(1609f, 1033f), vec2<u32>(66147u, 0u), vec2<u32>(0u, 49550u)), Struct_2(vec2<f32>(525f, -1000f), vec2<u32>(17884u, 18810u), vec2<u32>(41545u, 0u)), Struct_2(vec2<f32>(-209f, -1445f), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<f32>(797f, -249f), vec2<u32>(1u, 0u), vec2<u32>(15982u, 4294967295u)), Struct_2(vec2<f32>(-1163f, -2120f), vec2<u32>(4294967295u, 1u), vec2<u32>(36633u, 0u)), Struct_2(vec2<f32>(-1000f, -2062f), vec2<u32>(4294967295u, 65160u), vec2<u32>(7538u, 4294967295u)), Struct_2(vec2<f32>(-840f, 144f), vec2<u32>(24319u, 66651u), vec2<u32>(75505u, 1u)), Struct_2(vec2<f32>(1240f, -636f), vec2<u32>(51524u, 1u), vec2<u32>(71150u, 1u)), Struct_2(vec2<f32>(-415f, 1234f), vec2<u32>(1u, 1u), vec2<u32>(0u, 1u)), Struct_2(vec2<f32>(-308f, 447f), vec2<u32>(4957u, 0u), vec2<u32>(0u, 77319u)), Struct_2(vec2<f32>(585f, -823f), vec2<u32>(4294967295u, 92299u), vec2<u32>(1u, 21537u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    global0 = array<Struct_5, 2>();
    global0 = array<Struct_5, 2>();
    global2 = array<Struct_2, 24>();
    var var_0 = vec2<bool>(any(!vec3<bool>(all(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.b, 19u)])), true, true)), !global1[_wgslsmith_index_u32(reverseBits(arg_0.c.x), 19u)]);
    let var_1 = global0[_wgslsmith_index_u32(~u_input.d.x, 2u)];
    return select(abs(abs(reverseBits(reverseBits(vec3<i32>(-38436i, var_1.a, var_1.a))))), _wgslsmith_clamp_vec3_i32(-_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-2147483647i, -2147483647i, u_input.a)), vec3<i32>(var_1.a, u_input.a, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a | var_1.a, ~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(25818i, -570i), vec2<i32>(u_input.a, -34508i))), _wgslsmith_sub_vec3_i32(-vec3<i32>(var_1.a, u_input.a, u_input.a), -vec3<i32>(8984i, u_input.a, u_input.a))), vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(9238i, -1i)), 8549i, abs(2147483647i))), false);
}

fn func_2(arg_0: vec4<u32>) -> vec3<i32> {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.x, 2u)];
    global2 = array<Struct_2, 24>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(482f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1000f)), 784f))), -776f));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x)))), _wgslsmith_f_op_f32(-var_1.x));
    global0 = array<Struct_5, 2>();
    return select(reverseBits(-func_3(global2[_wgslsmith_index_u32(u_input.d.x << (4431u % 32u), 24u)])), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.a, u_input.a), abs(-3812i)), u_input.a, 2147483647i | select(2147483647i, 72614i, global1[_wgslsmith_index_u32(1u, 19u)])) & _wgslsmith_add_vec3_i32(vec3<i32>(~var_0.a, 29320i, ~var_0.a), min(~vec3<i32>(1i, -1i, 0i), countOneBits(vec3<i32>(u_input.a, var_0.a, -2147483647i)))), select(var_0.b, var_0.b, (arg_0.x >= _wgslsmith_sub_u32(u_input.b, 31782u)) & var_0.b.x));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_4(!(!select(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 19u)], true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(u_input.d.x, 19u)], false), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(0u, 19u)]), global1[_wgslsmith_index_u32(u_input.d.x, 19u)]), arg_0 == 17170i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2904f, 121f), _wgslsmith_f_op_f32(-1000f + -1251f)))), u_input.d.yx, ~firstTrailingBit(func_2(vec4<u32>(u_input.d.x, 0u, 11018u, 19593u))), firstTrailingBit(i32(-1i) * -25249i)), select(vec4<bool>((-13200i & arg_0) <= func_3(global2[_wgslsmith_index_u32(10091u, 24u)]).x, any(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], true)), any(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(u_input.d.x, 19u)])), global1[_wgslsmith_index_u32(u_input.b, 19u)]), vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)])), false, any(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 19u)])), true), global1[_wgslsmith_index_u32(~u_input.b, 19u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1539f, 773f, -474f, 108f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(135f, 781f, -1003f, 686f), vec4<f32>(-1704f, 1264f, -386f, -1000f), global1[_wgslsmith_index_u32(u_input.b, 19u)])))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 241f, _wgslsmith_f_op_f32(1000f * 212f), -1088f)))));
    var var_1 = global2[_wgslsmith_index_u32(3638u, 24u)];
    var_0 = Struct_4(select(!(!(!vec4<bool>(false, true, var_0.c.x, false))), select(var_0.a, select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(48767u, 19u)], var_0.c.x), var_0.a, select(var_0.c, vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 19u)], false, var_0.a.x), true)), true == all(vec4<bool>(false, var_0.c.x, global1[_wgslsmith_index_u32(var_0.b.b.x, 19u)], true))), !select(var_0.a, var_0.a, vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 19u)], false, false))), var_0.b, select(vec4<bool>(true, true, false, true && any(vec4<bool>(var_0.a.x, true, false, false))), select(!(!var_0.c), !var_0.a, _wgslsmith_f_op_f32(3426f + var_0.b.a) < _wgslsmith_f_op_f32(-var_1.a.x)), all(var_0.a.zyz) == false), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -795f)))), _wgslsmith_f_op_f32(step(var_1.a.x, var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1311f, var_0.d.x)))))));
    global2 = array<Struct_2, 24>();
    let var_2 = var_0.d;
    return (arg_0 >> (select(_wgslsmith_add_u32(1u, 23700u), 12186u | u_input.c, all(vec2<bool>(true, var_0.a.x))) % 32u)) << (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(max(-vec4<i32>(u_input.a, u_input.a, -34197i, u_input.a) << (vec4<u32>(102108u, u_input.c, 1u, u_input.b) % vec4<u32>(32u)), vec4<i32>(func_1(u_input.a, vec2<i32>(-27523i, 2147483647i)), 1i, -71174i, ~u_input.a)) & abs(vec4<i32>(select(u_input.a, u_input.a, true), -8754i, min(15879i, u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1639f * -592f) - _wgslsmith_f_op_f32(-604f - -202f)), -232f)));
}

