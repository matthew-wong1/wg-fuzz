struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec4<bool>(true, true, true, true), Struct_1(4294967295u, -11321i, 1230f, 797u, vec2<u32>(18234u, 21718u)), vec2<u32>(32601u, 35744u), false, Struct_1(36898u, 65047i, -242f, 1u, vec2<u32>(33765u, 68761u))), Struct_2(vec4<bool>(false, false, false, true), Struct_1(57598u, 11239i, 514f, 1u, vec2<u32>(0u, 4294967295u)), vec2<u32>(4294967295u, 0u), false, Struct_1(1u, i32(-2147483648), -604f, 4294967295u, vec2<u32>(4294967295u, 5201u))), Struct_2(vec4<bool>(true, true, false, true), Struct_1(4294967295u, 1i, -788f, 33797u, vec2<u32>(1u, 24718u)), vec2<u32>(10004u, 41958u), false, Struct_1(51998u, -28100i, 500f, 0u, vec2<u32>(4294967295u, 4294967295u))), Struct_2(vec4<bool>(false, true, true, true), Struct_1(35473u, i32(-2147483648), -224f, 25311u, vec2<u32>(1u, 0u)), vec2<u32>(1u, 4294967295u), true, Struct_1(17118u, 2147483647i, 1350f, 39957u, vec2<u32>(0u, 15461u))), Struct_2(vec4<bool>(true, false, false, true), Struct_1(13630u, 11386i, -523f, 1u, vec2<u32>(32983u, 4294967295u)), vec2<u32>(0u, 49489u), false, Struct_1(32049u, 0i, 1000f, 49921u, vec2<u32>(4294967295u, 34060u))), Struct_2(vec4<bool>(true, false, true, false), Struct_1(64264u, -17562i, 1584f, 1u, vec2<u32>(1u, 12884u)), vec2<u32>(4294967295u, 34238u), false, Struct_1(17554u, -50103i, -2130f, 8121u, vec2<u32>(4294967295u, 0u))), Struct_2(vec4<bool>(true, false, true, false), Struct_1(9500u, -27353i, -635f, 57183u, vec2<u32>(1u, 1u)), vec2<u32>(1u, 11501u), false, Struct_1(4294967295u, -73531i, 296f, 1u, vec2<u32>(1u, 4294967295u))), Struct_2(vec4<bool>(false, true, false, true), Struct_1(1u, 2147483647i, 173f, 2517u, vec2<u32>(0u, 30601u)), vec2<u32>(55419u, 76608u), false, Struct_1(0u, 1i, 1000f, 63338u, vec2<u32>(0u, 23536u))), Struct_2(vec4<bool>(true, false, true, false), Struct_1(65219u, -1i, -1000f, 0u, vec2<u32>(8867u, 1u)), vec2<u32>(59764u, 1u), false, Struct_1(7312u, 2147483647i, -1195f, 13025u, vec2<u32>(97968u, 22214u))), Struct_2(vec4<bool>(true, true, false, false), Struct_1(4294967295u, -1i, -1000f, 0u, vec2<u32>(1u, 38146u)), vec2<u32>(4294967295u, 11903u), true, Struct_1(11009u, -14360i, -1288f, 11335u, vec2<u32>(1u, 55516u))), Struct_2(vec4<bool>(false, true, false, true), Struct_1(0u, 12237i, 520f, 21947u, vec2<u32>(15853u, 4294967295u)), vec2<u32>(61412u, 40126u), true, Struct_1(22622u, 28841i, 312f, 12055u, vec2<u32>(65923u, 27137u))), Struct_2(vec4<bool>(false, true, false, false), Struct_1(1u, 1i, 2023f, 17726u, vec2<u32>(0u, 4294967295u)), vec2<u32>(0u, 7561u), true, Struct_1(0u, 2147483647i, -824f, 41305u, vec2<u32>(1528u, 4294967295u))), Struct_2(vec4<bool>(true, true, true, false), Struct_1(0u, 1i, -294f, 0u, vec2<u32>(0u, 8395u)), vec2<u32>(16317u, 14538u), true, Struct_1(25376u, -6743i, -638f, 0u, vec2<u32>(64708u, 4294967295u))), Struct_2(vec4<bool>(true, true, false, false), Struct_1(4294967295u, i32(-2147483648), 1016f, 0u, vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(125234u, 4294967295u), true, Struct_1(50055u, -45557i, 579f, 0u, vec2<u32>(4294967295u, 1u))), Struct_2(vec4<bool>(false, true, true, false), Struct_1(1u, 2147483647i, -1207f, 30469u, vec2<u32>(23373u, 34337u)), vec2<u32>(4294967295u, 22912u), true, Struct_1(1u, 1i, 356f, 1u, vec2<u32>(0u, 22087u))), Struct_2(vec4<bool>(false, false, false, true), Struct_1(43412u, -1i, 1728f, 1u, vec2<u32>(4294967295u, 0u)), vec2<u32>(0u, 19422u), true, Struct_1(0u, 2147483647i, -973f, 1u, vec2<u32>(25038u, 27839u))), Struct_2(vec4<bool>(true, false, true, true), Struct_1(65884u, 58698i, -584f, 8527u, vec2<u32>(5169u, 1u)), vec2<u32>(61547u, 12993u), false, Struct_1(4294967295u, -1i, 236f, 4294967295u, vec2<u32>(3138u, 11594u))), Struct_2(vec4<bool>(false, true, true, false), Struct_1(1u, 2147483647i, -1951f, 1u, vec2<u32>(1u, 0u)), vec2<u32>(42656u, 4294967295u), false, Struct_1(1u, -1i, -606f, 0u, vec2<u32>(4294967295u, 75499u))), Struct_2(vec4<bool>(false, true, false, true), Struct_1(98329u, 2147483647i, 538f, 1u, vec2<u32>(89095u, 4294967295u)), vec2<u32>(30357u, 1u), true, Struct_1(0u, i32(-2147483648), 812f, 23386u, vec2<u32>(4294967295u, 0u))), Struct_2(vec4<bool>(true, true, false, false), Struct_1(21997u, -19908i, -420f, 0u, vec2<u32>(4294967295u, 1u)), vec2<u32>(0u, 28041u), true, Struct_1(0u, 21081i, -360f, 130295u, vec2<u32>(65849u, 1u))), Struct_2(vec4<bool>(false, true, false, true), Struct_1(1u, -9423i, -1135f, 15540u, vec2<u32>(40892u, 14702u)), vec2<u32>(33821u, 1u), true, Struct_1(13893u, 21948i, -1000f, 41858u, vec2<u32>(0u, 4294967295u))), Struct_2(vec4<bool>(false, false, true, true), Struct_1(48432u, -11864i, 1003f, 0u, vec2<u32>(0u, 1u)), vec2<u32>(31294u, 38732u), false, Struct_1(68775u, -8691i, 576f, 1u, vec2<u32>(4294967295u, 21561u))), Struct_2(vec4<bool>(true, true, true, false), Struct_1(10204u, 46347i, -1227f, 1u, vec2<u32>(0u, 7596u)), vec2<u32>(1u, 0u), false, Struct_1(4294967295u, 40617i, 525f, 0u, vec2<u32>(1u, 3387u))), Struct_2(vec4<bool>(true, false, false, false), Struct_1(29708u, 10787i, 371f, 110650u, vec2<u32>(1u, 27120u)), vec2<u32>(1u, 23549u), true, Struct_1(25654u, 2147483647i, -1569f, 4294967295u, vec2<u32>(4294967295u, 8453u))), Struct_2(vec4<bool>(false, false, true, true), Struct_1(4294967295u, -48427i, 1048f, 1u, vec2<u32>(41097u, 4294967295u)), vec2<u32>(53043u, 1u), true, Struct_1(4294967295u, -14156i, 172f, 26598u, vec2<u32>(0u, 23064u))));

var<private> global1: array<u32, 11> = array<u32, 11>(25393u, 17419u, 0u, 4294967295u, 1u, 15432u, 4294967295u, 1u, 0u, 0u, 66541u);

var<private> global2: Struct_4 = Struct_4(Struct_1(122335u, 1i, -770f, 0u, vec2<u32>(0u, 35805u)), vec2<u32>(1u, 4294967295u), 654f);

var<private> global3: array<u32, 19>;

var<private> global4: array<vec4<bool>, 11>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> vec3<f32> {
    var var_0 = arg_1;
    var_0 = Struct_5(select(~(-arg_0) >= -abs(arg_0), !(global2.a.c >= _wgslsmith_f_op_f32(-1305f - -294f)), any(select(!vec2<bool>(true, var_0.a), !vec2<bool>(arg_1.a, true), !arg_1.a))), arg_1.b);
    global3 = array<u32, 19>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.b.zz)) + arg_1.b.yz);
    var var_2 = vec4<i32>(global2.a.b, _wgslsmith_add_i32(select(-global2.a.b, arg_0, arg_1.a), arg_0), arg_0 | 2147483647i, 1i);
    return arg_1.b;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(1u, 11u)], -global2.a.b, _wgslsmith_f_op_f32(-global2.c), _wgslsmith_sub_u32(~countOneBits(1u), ~63601u), ~(~vec2<u32>(0u, global2.a.e.x)) | vec2<u32>(abs(~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.a.a, 19u)], 11u)]), ~(~global2.b.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(7554i, Struct_5(false, vec3<f32>(global2.c, -1000f, 769f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.c, -214f, 1000f))))), true)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_add_vec2_u32(~vec2<u32>(global2.b.x, 15046u), vec2<u32>(1u, 1u))), min(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), firstLeadingBit(global2.b)), ~vec2<u32>(global3[_wgslsmith_index_u32(var_0.d, 19u)], 0u) ^ ~global2.a.e) & select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(67537u, var_0.d)), ~min(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], 0u), global2.a.e), vec2<bool>(true, true))), 25u)];
    var var_3 = i32(-1i) * -1i;
    var var_4 = Struct_3(_wgslsmith_sub_vec4_u32(~select(vec4<u32>(52011u, 5194u, global3[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(63012u, 19u)], 11u)]), vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(62267u, 19u)], 19u)], global1[_wgslsmith_index_u32(var_2.c.x, 11u)], 4294967295u), var_2.a) & (min(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], 4294967295u, global3[_wgslsmith_index_u32(var_0.a, 19u)], 502u), vec4<u32>(global3[_wgslsmith_index_u32(12857u, 19u)], var_2.e.a, 82435u, 4294967295u)) >> (max(vec4<u32>(var_0.d, var_0.d, global1[_wgslsmith_index_u32(1u, 11u)], global2.b.x), vec4<u32>(global1[_wgslsmith_index_u32(var_2.b.e.x, 11u)], 1u, global2.a.e.x, global1[_wgslsmith_index_u32(var_0.a, 11u)])) % vec4<u32>(32u))), vec4<u32>(~var_2.e.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(26985u, var_0.e.x, 66912u), vec3<u32>(4294967295u, 1u, u_input.a)) % 32u), _wgslsmith_div_u32(34608u, 3684u) & _wgslsmith_add_u32(var_0.d, 0u), 71134u, 28299u)), var_1.x, global2.a.b == 41952i);
    return var_2.a.yyy;
}

fn func_1() -> Struct_4 {
    var var_0 = vec2<f32>(935f, _wgslsmith_f_op_f32(-1293f * global2.a.c));
    var var_1 = any(select(vec2<bool>(_wgslsmith_add_i32(1i, global2.a.b) < -30837i, all(func_2())), vec2<bool>(false, false), false));
    let var_2 = false;
    let var_3 = vec2<u32>(u_input.a, u_input.a);
    let var_4 = select(_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_3.x, ~1u), 1u), true & !var_2);
    return Struct_4(Struct_1(~(~_wgslsmith_add_u32(19710u, u_input.a)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, global2.a.b | global2.a.b), global2.a.b), var_0.x, ~(~82263u), _wgslsmith_add_vec2_u32(var_3, (var_3 ^ global2.b) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(62671u, global3[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<u32>(1u, 0u)))), ~firstLeadingBit(var_3), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.a.c * global2.a.c))) * _wgslsmith_f_op_vec3_f32(func_3(global2.a.b, Struct_5(true, vec3<f32>(-595f, 922f, global2.c)))).x))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: bool, arg_3: Struct_5) -> Struct_5 {
    var var_0 = vec4<bool>(arg_2, !(0u != arg_0), any(!vec4<bool>(false, true, arg_3.a, any(vec2<bool>(false, arg_2)))), false);
    global3 = array<u32, 19>();
    let var_1 = vec2<bool>(all(select(vec4<bool>(arg_3.a || false, true, all(vec4<bool>(false, true, false, var_0.x)), any(vec3<bool>(arg_2, false, arg_2))), !vec4<bool>(arg_3.a, true, true, false), arg_3.a | any(var_0.wz))), var_0.x);
    global2 = arg_1;
    let var_2 = var_0.xz;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.c;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.a.c, _wgslsmith_f_op_f32(select(262f, global2.c, false)))) + -148f))), global2.a.c, global2.c);
    let var_2 = func_4(_wgslsmith_sub_u32(~u_input.a, 4294967295u), func_1(), true, Struct_5(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -1018f, 168f), vec3<f32>(global2.a.c, var_1.x, global2.a.c), vec3<bool>(false, false, false))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2082f, var_1.x, -1621f) + vec3<f32>(2093f, 1076f, var_1.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b));
    var var_3 = -10290i;
    global4 = array<vec4<bool>, 11>();
    global4 = array<vec4<bool>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(countOneBits(vec3<i32>(20209i, -28973i, 2147483647i))) ^ ~_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(21254i, 0i, global2.a.b), vec3<i32>(global2.a.b, -2474i, global2.a.b)), abs(vec3<i32>(-9273i, global2.a.b, 53401i))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a.c)) * var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a.c)) - var_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.c)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-400f, global2.c, 631f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2.b, vec3<f32>(177f, 673f, -731f))) * var_2.b)))), vec4<f32>(1420f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-2659f))))), 697f, global2.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1317f, global2.c, func_1().c, _wgslsmith_f_op_f32(floor(var_2.b.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(1270f, 1707f, var_2.b.x, var_2.b.x), vec4<f32>(global2.a.c, var_2.b.x, global2.c, 283f)))));
}

