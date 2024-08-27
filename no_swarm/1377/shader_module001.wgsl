struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
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

var<private> global0: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(1u, 4294967295u), vec2<u32>(63632u, 0u), vec2<u32>(27614u, 1u), vec2<u32>(55044u, 4294967295u), vec2<u32>(0u, 25553u), vec2<u32>(65641u, 81036u), vec2<u32>(53730u, 32594u), vec2<u32>(4294967295u, 32606u), vec2<u32>(12404u, 242u), vec2<u32>(1u, 4294967295u), vec2<u32>(19254u, 34181u), vec2<u32>(0u, 23629u), vec2<u32>(1u, 1596u), vec2<u32>(1u, 1u), vec2<u32>(25484u, 12413u), vec2<u32>(0u, 64051u), vec2<u32>(4294967295u, 45821u), vec2<u32>(4294967295u, 6748u), vec2<u32>(27762u, 82893u), vec2<u32>(24520u, 46665u), vec2<u32>(6295u, 3347u), vec2<u32>(50509u, 5584u), vec2<u32>(24127u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(13446u, 26319u), vec2<u32>(0u, 0u), vec2<u32>(1u, 65126u), vec2<u32>(4294967295u, 1u));

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<u32>(50102u, 6262u), 1u, i32(-2147483648), vec2<f32>(-835f, -2765f), vec4<i32>(-1i, i32(-2147483648), -16646i, -6746i)), Struct_1(vec2<u32>(1u, 16296u), 22946u, -1i, vec2<f32>(246f, 981f), vec4<i32>(5260i, 2147483647i, -28722i, 15876i)), Struct_1(vec2<u32>(1u, 0u), 61604u, -42860i, vec2<f32>(-1513f, -1829f), vec4<i32>(-9915i, -1i, -54074i, -1i)), Struct_1(vec2<u32>(65532u, 0u), 19971u, -25297i, vec2<f32>(-1000f, 232f), vec4<i32>(2147483647i, 1i, -13009i, 1i)), Struct_1(vec2<u32>(48262u, 0u), 1u, 4899i, vec2<f32>(-927f, -807f), vec4<i32>(7574i, -54881i, 0i, 12254i)), Struct_1(vec2<u32>(5058u, 26131u), 4294967295u, -24580i, vec2<f32>(697f, -1074f), vec4<i32>(73908i, 1i, 2147483647i, -15715i)), Struct_1(vec2<u32>(4175u, 4294967295u), 0u, 318i, vec2<f32>(-1556f, 432f), vec4<i32>(2147483647i, 0i, -1i, i32(-2147483648))), Struct_1(vec2<u32>(1u, 5771u), 1u, 0i, vec2<f32>(-1000f, 1000f), vec4<i32>(5586i, 2147483647i, -41093i, 2100i)), Struct_1(vec2<u32>(76735u, 1u), 1u, 1i, vec2<f32>(-967f, 2105f), vec4<i32>(2147483647i, 31655i, i32(-2147483648), i32(-2147483648))), Struct_1(vec2<u32>(38364u, 25117u), 31420u, 1i, vec2<f32>(-510f, -861f), vec4<i32>(2147483647i, -1i, 2147483647i, 1i)), Struct_1(vec2<u32>(4294967295u, 35562u), 46746u, i32(-2147483648), vec2<f32>(-624f, 1209f), vec4<i32>(i32(-2147483648), 1i, 2147483647i, 20069i)), Struct_1(vec2<u32>(4294967295u, 26301u), 79818u, 1i, vec2<f32>(-142f, -246f), vec4<i32>(1i, -11892i, 0i, 1i)));

var<private> global2: array<bool, 5> = array<bool, 5>(false, false, false, true, false);

var<private> global3: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(-463f, Struct_1(vec2<u32>(1u, 63474u), 1u, 1i, vec2<f32>(1495f, 1000f), vec4<i32>(0i, 2147483647i, -57764i, 0i)), 25456i, false), Struct_4(290f, Struct_1(vec2<u32>(3841u, 4294967295u), 31100u, 26239i, vec2<f32>(-744f, 283f), vec4<i32>(-44243i, -7529i, -1i, 16443i)), -1i, true), Struct_4(919f, Struct_1(vec2<u32>(32439u, 35675u), 0u, 3837i, vec2<f32>(-676f, 1000f), vec4<i32>(49041i, 0i, -12778i, 0i)), 21235i, false), Struct_4(1072f, Struct_1(vec2<u32>(38905u, 0u), 4294967295u, -1i, vec2<f32>(346f, -915f), vec4<i32>(6672i, 1i, -1i, 11145i)), 1i, true), Struct_4(374f, Struct_1(vec2<u32>(26871u, 96594u), 10692u, i32(-2147483648), vec2<f32>(-329f, 537f), vec4<i32>(-1i, 2147483647i, 2147483647i, -1i)), -2823i, true), Struct_4(-828f, Struct_1(vec2<u32>(1u, 4294967295u), 4294967295u, i32(-2147483648), vec2<f32>(783f, 636f), vec4<i32>(28315i, 23185i, 2147483647i, 13443i)), 37210i, true), Struct_4(-1898f, Struct_1(vec2<u32>(1u, 1u), 0u, 2147483647i, vec2<f32>(1221f, -925f), vec4<i32>(-23518i, 0i, -1i, -7673i)), 0i, true), Struct_4(1000f, Struct_1(vec2<u32>(65663u, 1u), 29487u, 2147483647i, vec2<f32>(1276f, -1129f), vec4<i32>(0i, i32(-2147483648), -1i, -753i)), -1i, false), Struct_4(-236f, Struct_1(vec2<u32>(4294967295u, 0u), 39325u, 0i, vec2<f32>(-578f, 1420f), vec4<i32>(-26789i, -35481i, 2147483647i, i32(-2147483648))), -63367i, false), Struct_4(1934f, Struct_1(vec2<u32>(1u, 4294967295u), 4294967295u, -15387i, vec2<f32>(-1000f, 196f), vec4<i32>(-27727i, -60877i, 30685i, i32(-2147483648))), 1i, false), Struct_4(-556f, Struct_1(vec2<u32>(4294967295u, 4294967295u), 0u, -52101i, vec2<f32>(-808f, -336f), vec4<i32>(-31399i, -46913i, -1i, 13362i)), 0i, false), Struct_4(-255f, Struct_1(vec2<u32>(9257u, 52033u), 4294967295u, 46390i, vec2<f32>(-127f, -695f), vec4<i32>(-1i, 2147483647i, 0i, 31949i)), -8887i, true), Struct_4(-1456f, Struct_1(vec2<u32>(4294967295u, 35094u), 93914u, 9775i, vec2<f32>(913f, 833f), vec4<i32>(-11675i, i32(-2147483648), 0i, -30536i)), 51003i, true));

var<private> global4: array<f32, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_4) -> vec3<f32> {
    global3 = array<Struct_4, 13>();
    var var_0 = 958f;
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-266f, global4[_wgslsmith_index_u32(15222u, 30u)], -1867f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, arg_0.a, -1584f), vec3<f32>(arg_0.a, 1899f, global4[_wgslsmith_index_u32(arg_0.b.b, 30u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(77847u, 5u)], arg_0.d))))))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    global2 = array<bool, 5>();
    var var_0 = true;
    let var_1 = global3[_wgslsmith_index_u32(u_input.a, 13u)];
    global0 = array<vec2<u32>, 30>();
    var var_2 = vec2<f32>(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a, 30u)])), _wgslsmith_f_op_f32(round(693f)))), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(reverseBits(0u)), var_1.b.b), 30u)]));
    return Struct_3(Struct_2(global1[_wgslsmith_index_u32(u_input.a, 12u)]));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: u32) -> StorageBuffer {
    global1 = array<Struct_1, 12>();
    global1 = array<Struct_1, 12>();
    var var_0 = firstTrailingBit(~vec4<i32>(2147483647i, ~(-2147483647i) & _wgslsmith_div_i32(arg_0.a.a.e.x, arg_0.a.a.e.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0.a.a.e.x, arg_0.a.a.e.x), i32(-1i) * -1235i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), arg_0.a.a.e.xw)));
    global3 = array<Struct_4, 13>();
    let var_1 = arg_1.c.a;
    return StorageBuffer(reverseBits(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(global3[_wgslsmith_index_u32(u_input.a, 13u)]))));
    let var_1 = ~(_wgslsmith_sub_u32(~(12327u & u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(51504u, u_input.a, 4294967295u))) << (1u % 32u));
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(abs(max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), global0[_wgslsmith_index_u32(53794u, 30u)]) << (~var_1 % 32u), u_input.a)), 12u)]);
    let var_3 = global1[_wgslsmith_index_u32(~abs(var_1), 12u)];
    var var_4 = var_2.a.d;
    global0 = array<vec2<u32>, 30>();
    let x = u_input.a;
    s_output = func_3(func_2(!(!select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(var_2.a.b, 5u)]), false))), Struct_5(global4[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_f_op_f32(f32(-1f) * -1624f), var_2), ~var_2.a.b);
}

