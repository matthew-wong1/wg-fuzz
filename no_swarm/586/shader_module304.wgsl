struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(0i, 6313i, Struct_1(-58317i, vec2<f32>(-1732f, -512f), -1i, -1201f)), Struct_3(-16069i, i32(-2147483648), Struct_1(0i, vec2<f32>(371f, -644f), 1897i, -1136f)), Struct_3(1i, 15739i, Struct_1(-12055i, vec2<f32>(-1000f, -507f), 2147483647i, -807f)), Struct_3(-65187i, 0i, Struct_1(-38152i, vec2<f32>(-311f, 444f), 2147483647i, 1000f)), Struct_3(2304i, 1376i, Struct_1(-1i, vec2<f32>(-669f, -875f), 1i, -1799f)), Struct_3(-1i, i32(-2147483648), Struct_1(1i, vec2<f32>(-352f, 470f), -1i, 983f)), Struct_3(0i, -1i, Struct_1(6478i, vec2<f32>(1304f, 265f), 1i, -354f)), Struct_3(47067i, -1i, Struct_1(-16042i, vec2<f32>(-1000f, -429f), 38549i, 511f)), Struct_3(31905i, -7950i, Struct_1(0i, vec2<f32>(-865f, 148f), i32(-2147483648), -184f)), Struct_3(27163i, 0i, Struct_1(2147483647i, vec2<f32>(355f, -478f), -1i, 330f)), Struct_3(22529i, -1i, Struct_1(33754i, vec2<f32>(-1640f, -933f), i32(-2147483648), -491f)), Struct_3(i32(-2147483648), 1i, Struct_1(2147483647i, vec2<f32>(-607f, -292f), -24095i, -890f)), Struct_3(-1i, 35589i, Struct_1(i32(-2147483648), vec2<f32>(862f, 207f), 47125i, 674f)), Struct_3(1182i, 91127i, Struct_1(0i, vec2<f32>(1000f, 1081f), 1i, 675f)), Struct_3(-1i, 19446i, Struct_1(42948i, vec2<f32>(-1289f, 256f), 2147483647i, 677f)), Struct_3(3906i, 6731i, Struct_1(1998i, vec2<f32>(-2189f, 1122f), 2147483647i, -753f)), Struct_3(27759i, -46504i, Struct_1(2147483647i, vec2<f32>(1370f, -102f), -2106i, 1573f)), Struct_3(-32530i, 37691i, Struct_1(1i, vec2<f32>(-492f, 215f), -13251i, -994f)));

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(31233i, Struct_1(i32(-2147483648), vec2<f32>(615f, -606f), 19432i, -658f)), Struct_2(17239i, Struct_1(-1i, vec2<f32>(1027f, -2154f), 121799i, -538f)), Struct_2(-1i, Struct_1(-18878i, vec2<f32>(1000f, 807f), 2147483647i, -121f)), Struct_2(-9433i, Struct_1(1i, vec2<f32>(-1012f, 723f), 1i, 862f)));

var<private> global2: Struct_2;

var<private> global3: array<i32, 4> = array<i32, 4>(0i, 2147483647i, i32(-2147483648), -23985i);

var<private> global4: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(35098i, i32(-2147483648), 2732i), vec3<i32>(-1i, -19731i, -24482i), vec3<i32>(-37569i, -29429i, 2147483647i), vec3<i32>(-21996i, 26600i, 0i), vec3<i32>(-10778i, 0i, 0i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(~27814u), 4u)];
    global0 = array<Struct_3, 18>();
    var var_1 = -2147483647i >> (0u % 32u);
    var_0 = Struct_2(-_wgslsmith_sub_i32(-reverseBits(0i), i32(-1i) * -2147483647i), var_0.b);
    var var_2 = global0[_wgslsmith_index_u32(~u_input.a.x, 18u)];
    return reverseBits(vec2<u32>(reverseBits(4294967295u), firstTrailingBit(~u_input.e.x)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = vec4<bool>(all(!vec4<bool>(arg_1.x, arg_1.x, true, true)), 1u < min(~(arg_0.x ^ arg_0.x), ~(~arg_0.x)), !(u_input.c > ~(-31612i)), arg_1.x);
    var var_1 = Struct_2(1i, Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(-163f)), global2.b.d))), u_input.c, _wgslsmith_f_op_f32(833f + 478f)));
    global2 = Struct_2(_wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(~vec4<i32>(global3[_wgslsmith_index_u32(10107u, 4u)], 15617i, global2.b.c, global3[_wgslsmith_index_u32(31901u, 4u)]), vec4<i32>(u_input.c, u_input.b.x, 1895i, 2147483647i)), ~_wgslsmith_sub_i32(global2.a, -2463i << (arg_0.x % 32u))), var_1.b);
    var_1 = Struct_2(28004i, global2.b);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, arg_0.x), 4u)];
    return Struct_3(1i, 1i, Struct_1(-_wgslsmith_div_i32(firstLeadingBit(54262i), reverseBits(global3[_wgslsmith_index_u32(4294967295u, 4u)])), vec2<f32>(_wgslsmith_f_op_f32(-1751f + _wgslsmith_f_op_f32(var_1.b.d + var_2.b.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1953f)), _wgslsmith_f_op_f32(var_1.b.b.x + global2.b.b.x))), -var_2.a, var_1.b.b.x));
}

fn func_1() -> Struct_1 {
    global3 = array<i32, 4>();
    let var_0 = func_3(_wgslsmith_mod_vec2_u32(func_2(), ~vec2<u32>(~u_input.d.x, ~3407u)), !select(vec3<bool>(true, global2.b.b.x >= global2.b.b.x, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(~27183u), 4u)];
    let var_2 = -1634f;
    let var_3 = global1[_wgslsmith_index_u32(0u, 4u)];
    return var_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global2.b;
    var var_1 = u_input.b.wyz;
    var var_2 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 31546u), firstTrailingBit(func_2().x)), 4u)], u_input.c, func_1());
    let var_3 = vec4<bool>(false, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), all(vec4<bool>(false, false, false, false))), true)), !(-_wgslsmith_sub_i32(68952i, -29608i) > (max(2147483647i, var_0.a) ^ min(arg_0.a, 2147483647i))), true);
    global0 = array<Struct_3, 18>();
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = func_1();
    let var_1 = global0[_wgslsmith_index_u32(u_input.d.x, 18u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.b.x));
    var_2 = -1248f;
    return Struct_2(func_4(global2.b, global2.b, vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(global4[_wgslsmith_index_u32(u_input.d.x, 5u)]), global4[_wgslsmith_index_u32(~u_input.d.x, 5u)]), var_0.c, global2.a), func_4(Struct_1(arg_2 >> (0u % 32u), vec2<f32>(1159f, -1583f), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.e.x, 4u)], -67408i), global2.b.b.x), global2.b, ~vec3<i32>(-3672i, arg_2, 2147483647i), arg_1)).a, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(1u & _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10907u, u_input.d.x, 16899u, u_input.a.x), u_input.d), ~56438u) >> (~1u % 32u)), 4u)];
    var var_1 = true;
    global2 = func_5(func_4(func_1(), func_1(), -(~vec3<i32>(36658i, global3[_wgslsmith_index_u32(u_input.a.x, 4u)], -24917i)), Struct_1(reverseBits(-2147483647i), global2.b.b, firstTrailingBit(abs(var_0.a)), 826f)), Struct_1(func_4(func_3(u_input.a << (u_input.e.zz % vec2<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))).c, var_0.b, select(u_input.b.zzz, u_input.b.zzw, all(vec4<bool>(true, false, false, false))), global2.b).c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.d, global2.b.b.x) - var_0.b.b) - vec2<f32>(1048f, -585f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.b.d, -825f))), vec2<f32>(global2.b.d, 532f)), vec2<bool>(true, true))), 0i, _wgslsmith_f_op_f32(step(311f, 1000f))), ~(-79640i ^ -max(1i, var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -_wgslsmith_sub_i32(-1i, 4073i)), abs(_wgslsmith_mod_vec2_i32(u_input.b.yy, vec2<i32>(1i, global2.a)) & vec2<i32>(0i, 2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.b.d, var_0.b.b.x, 696f), vec3<f32>(global2.b.b.x, -531f, 1028f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.b.d, 873f, var_0.b.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global2.b.d, var_0.b.b.x) + vec3<f32>(-321f, 828f, -1362f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-114f, global2.b.d, global2.b.b.x)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(-825f)), _wgslsmith_f_op_f32(abs(451f)), -703f))), select(_wgslsmith_div_vec3_i32(-global4[_wgslsmith_index_u32(~u_input.a.x, 5u)], vec3<i32>(var_0.b.a ^ 1i, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.e.x, 4u)], var_0.b.a), func_5(Struct_1(-31659i, global2.b.b, var_0.a, global2.b.b.x), var_0.b, -26547i).a)), -_wgslsmith_div_vec3_i32(u_input.b.ywy, u_input.b.yww) ^ vec3<i32>(_wgslsmith_sub_i32(var_0.b.c, var_0.b.a), _wgslsmith_sub_i32(-8343i, u_input.b.x), -global3[_wgslsmith_index_u32(1u, 4u)]), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), false), false)), firstTrailingBit(firstTrailingBit(0u)));
}

