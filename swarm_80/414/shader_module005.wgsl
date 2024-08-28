struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(4029i, 29552i, -1i, 0i), vec4<i32>(0i, -73542i, 2147483647i, -41436i), vec4<i32>(1i, i32(-2147483648), 9107i, -1i), vec4<i32>(-1i, 2147483647i, -1i, 0i), vec4<i32>(-9497i, 2181i, -36639i, 2147483647i), vec4<i32>(-1i, 19156i, 23944i, 2147483647i), vec4<i32>(-21337i, 2147483647i, 1i, -1687i), vec4<i32>(-43888i, -34957i, -1i, 543i), vec4<i32>(6230i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-31121i, 2147483647i, 1i, 6568i), vec4<i32>(-9661i, 1i, -76019i, -131i), vec4<i32>(i32(-2147483648), 55728i, 465i, 4412i), vec4<i32>(-1i, 1i, -49814i, 1i), vec4<i32>(33391i, i32(-2147483648), 29946i, i32(-2147483648)));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<u32>(97504u, 1u), vec3<bool>(true, false, false), -407f), vec4<i32>(2147483647i, -593i, 11960i, 27643i), vec3<f32>(-683f, -471f, 1131f));

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec3<bool>(true, false, false), -641f), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -10995i), vec3<f32>(-301f, -939f, -626f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec3<bool>(false, true, false), -1503f), vec4<i32>(0i, -12359i, 21193i, i32(-2147483648)), vec3<f32>(316f, -893f, 1000f)), Struct_2(Struct_1(vec2<u32>(69644u, 34683u), vec3<bool>(false, false, true), 1539f), vec4<i32>(-6532i, 39416i, -54125i, -1i), vec3<f32>(1290f, -225f, -241f)), Struct_2(Struct_1(vec2<u32>(17774u, 13958u), vec3<bool>(true, true, true), -449f), vec4<i32>(0i, 2147483647i, -22581i, 2147483647i), vec3<f32>(-1073f, -857f, -291f)), Struct_2(Struct_1(vec2<u32>(1367u, 1u), vec3<bool>(false, false, false), 754f), vec4<i32>(-1i, 1i, 0i, i32(-2147483648)), vec3<f32>(1251f, -1015f, 1003f)), Struct_2(Struct_1(vec2<u32>(0u, 34403u), vec3<bool>(true, false, false), -1000f), vec4<i32>(-3599i, 0i, 57806i, 1i), vec3<f32>(185f, 899f, -1000f)), Struct_2(Struct_1(vec2<u32>(53640u, 1u), vec3<bool>(false, false, true), 763f), vec4<i32>(22209i, -15694i, 24830i, 43359i), vec3<f32>(-1686f, -1818f, -1000f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 44787u), vec3<bool>(false, false, true), -748f), vec4<i32>(0i, -1i, 2147483647i, 16795i), vec3<f32>(-1000f, 861f, 1170f)), Struct_2(Struct_1(vec2<u32>(59959u, 11458u), vec3<bool>(true, false, false), 1154f), vec4<i32>(-1i, -43033i, 35923i, 0i), vec3<f32>(-616f, -642f, 1887f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec3<bool>(false, false, true), -220f), vec4<i32>(i32(-2147483648), 0i, 53711i, i32(-2147483648)), vec3<f32>(-112f, -1129f, -1708f)), Struct_2(Struct_1(vec2<u32>(13004u, 4294967295u), vec3<bool>(true, false, false), 548f), vec4<i32>(-20562i, -36059i, -59015i, -2340i), vec3<f32>(-801f, 674f, -500f)), Struct_2(Struct_1(vec2<u32>(65989u, 4294967295u), vec3<bool>(true, true, false), 1211f), vec4<i32>(0i, 2147483647i, -31501i, -1i), vec3<f32>(-1318f, 719f, -2069f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec3<bool>(true, false, false), -227f), vec4<i32>(1i, i32(-2147483648), 1i, 37522i), vec3<f32>(1000f, 2356f, -1913f)), Struct_2(Struct_1(vec2<u32>(0u, 76077u), vec3<bool>(true, true, true), -1595f), vec4<i32>(1i, 30160i, -76755i, 5892i), vec3<f32>(1056f, -879f, 596f)), Struct_2(Struct_1(vec2<u32>(1u, 17152u), vec3<bool>(true, false, true), 484f), vec4<i32>(1i, -35624i, i32(-2147483648), 14803i), vec3<f32>(1102f, 165f, 260f)), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec3<bool>(false, true, false), 998f), vec4<i32>(2147483647i, i32(-2147483648), 45721i, -1i), vec3<f32>(1000f, -506f, 727f)), Struct_2(Struct_1(vec2<u32>(47242u, 41445u), vec3<bool>(false, false, false), 1156f), vec4<i32>(-1i, -27842i, -14460i, -12451i), vec3<f32>(1376f, 1603f, -1219f)), Struct_2(Struct_1(vec2<u32>(14765u, 139626u), vec3<bool>(true, true, false), 856f), vec4<i32>(1i, i32(-2147483648), -380i, 0i), vec3<f32>(-889f, 603f, -1175f)), Struct_2(Struct_1(vec2<u32>(20723u, 1u), vec3<bool>(true, false, true), 1077f), vec4<i32>(i32(-2147483648), -16292i, -26072i, 2147483647i), vec3<f32>(340f, -162f, 1000f)), Struct_2(Struct_1(vec2<u32>(44394u, 0u), vec3<bool>(true, true, true), 2292f), vec4<i32>(0i, -355i, -8344i, 5197i), vec3<f32>(-379f, 1029f, 1803f)), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec3<bool>(true, false, true), -1000f), vec4<i32>(8611i, 2147483647i, 28455i, -1i), vec3<f32>(1049f, 1542f, 1273f)), Struct_2(Struct_1(vec2<u32>(10016u, 115084u), vec3<bool>(false, false, true), -2210f), vec4<i32>(60066i, 0i, 2147483647i, -28845i), vec3<f32>(1214f, -1271f, -2285f)));

var<private> global3: array<vec3<u32>, 19>;

var<private> global4: Struct_1 = Struct_1(vec2<u32>(4294967295u, 17075u), vec3<bool>(false, true, true), 557f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    global0 = array<vec4<i32>, 14>();
    let var_0 = global1.a.b.x;
    let var_1 = vec4<u32>(global4.a.x << ((79614u ^ ~(~global4.a.x)) % 32u), select(~(~global4.a.x), 1u, global1.a.b.x), ~(~global1.a.a.x), global4.a.x);
    global3 = array<vec3<u32>, 19>();
    var var_2 = global2[_wgslsmith_index_u32(0u, 22u)];
    return global4.a.x;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = true;
    var var_1 = global2[_wgslsmith_index_u32(global4.a.x | ~74615u, 22u)];
    var_1 = global2[_wgslsmith_index_u32(42424u, 22u)];
    var var_2 = vec4<i32>(1i, global1.b.x, abs(firstTrailingBit(firstTrailingBit(-1i) << (func_3(global1.a.a.x, global0[_wgslsmith_index_u32(4294967295u, 14u)]) % 32u))), _wgslsmith_dot_vec3_i32(global1.b.www, reverseBits(vec3<i32>(-45507i, 38566i, 0i)) | global1.b.zzy));
    let var_3 = Struct_2(var_1.a, ~(~vec4<i32>(var_1.b.x, 0i << (var_1.a.a.x % 32u), -19152i, -2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(-417f - _wgslsmith_f_op_f32(-173f - _wgslsmith_f_op_f32(global4.c + var_1.a.c))), _wgslsmith_f_op_f32(-global1.c.x), var_1.c.x));
    return !all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_3.a.b.x, true, true, global4.b.x), vec4<bool>(global1.a.b.x, true, true, var_0), global1.a.b.x), false), select(vec4<bool>(global4.b.x, global4.b.x, true, var_1.a.b.x), !vec4<bool>(global4.b.x, var_1.a.b.x, var_1.a.b.x, global1.a.b.x), select(vec4<bool>(var_1.a.b.x, var_0, false, false), vec4<bool>(false, true, false, false), vec4<bool>(var_1.a.b.x, var_1.a.b.x, var_3.a.b.x, true))), !(!vec4<bool>(var_3.a.b.x, var_0, var_0, var_3.a.b.x))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(37996i), firstLeadingBit(global1.b.x)), ~firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(45725i, -45248i), vec2<i32>(u_input.a, 33352i)), min(global1.b.yw, vec2<i32>(2147483647i, -57683i)))));
    let var_1 = vec4<f32>(global4.c, 264f, -2284f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -459f) - _wgslsmith_f_op_f32(-global1.c.x)))), _wgslsmith_f_op_f32(1683f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c * 1080f))))));
    global1 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_mult_u32(0u, ~global1.a.a.x), ~(~global1.a.a.x)), vec3<bool>(true, global4.b.x, func_2(global1.b.x) | true), 1858f), vec4<i32>(firstLeadingBit(u_input.a), 1i, -1i, ~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.c, 359f, 355f)), var_1.zzw)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global1.c)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.c, _wgslsmith_f_op_f32(-1622f - 1972f), _wgslsmith_f_op_f32(global1.c.x - global1.c.x)))));
    let var_2 = var_1.x >= 2916f;
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, var_0.x, 2147483647i, u_input.a) | (vec4<i32>(var_0.x, -42568i, -1i, u_input.a) & vec4<i32>(u_input.a, u_input.a, -72677i, -43909i)), ~min(global0[_wgslsmith_index_u32(u_input.e, 14u)], vec4<i32>(-25187i, u_input.a, 25719i, u_input.a))), vec4<i32>(1i ^ u_input.a, ~_wgslsmith_sub_i32(-1i, 4677i), ~global1.b.x, global1.b.x)) != 2147483647i;
    return global2[_wgslsmith_index_u32(~abs(countOneBits(select(countOneBits(1u), 0u, all(vec2<bool>(var_2, true))))), 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(~abs(reverseBits(0u)), global1.a.a.x, 4294967295u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c, 4294967295u), global1.a.a.x));
    let var_1 = vec2<i32>(u_input.a, 0i);
    var var_2 = global1.a;
    let var_3 = func_1();
    global3 = array<vec3<u32>, 19>();
    var var_4 = Struct_3(~(~(~_wgslsmith_div_u32(u_input.e, 0u))), true);
    global1 = func_1();
    var var_5 = Struct_4(Struct_2(Struct_1(abs(vec2<u32>(1u, var_4.a) ^ global4.a), !vec3<bool>(true, true, var_3.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.c) + func_1().c.x)), firstTrailingBit(min(var_3.b, -vec4<i32>(-22132i, 33750i, 26812i, global1.b.x))), vec3<f32>(863f, _wgslsmith_f_op_f32(f32(-1f) * -1211f), func_1().c.x)), var_3.a);
    let var_6 = ~firstTrailingBit(func_1().a.a.x) << (~(~(~(~var_0.x))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(48478u, _wgslsmith_div_u32(13444u, var_0.x), var_5.a.a.a.x >> (var_2.a.x % 32u))), ~countOneBits(~vec3<u32>(1u, var_3.a.a.x, var_4.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_3.c.x, _wgslsmith_f_op_f32(-var_5.b.c))))), -(var_5.a.b.yx ^ var_1), vec3<f32>(-1277f, -241f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(2253f, -1000f), _wgslsmith_f_op_f32(max(var_3.a.c, var_5.a.a.c))) + _wgslsmith_f_op_f32(-var_2.c))));
}

