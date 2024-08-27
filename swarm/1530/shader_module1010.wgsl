struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8>;

var<private> global1: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(-1i, -21790i));

var<private> global2: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(0i, Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(false, true), 1143f, vec3<u32>(1u, 3878u, 0u), vec2<u32>(4294967295u, 12620u)), vec2<bool>(true, false), 10730i), Struct_4(-1i, Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, false), -1410f, vec3<u32>(39295u, 7581u, 24559u), vec2<u32>(4294967295u, 57466u)), vec2<bool>(false, true), -1i), Struct_4(-41829i, Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(true, false), 589f, vec3<u32>(19489u, 0u, 1u), vec2<u32>(0u, 6146u)), vec2<bool>(false, false), 56284i), Struct_4(0i, Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(false, true), 2159f, vec3<u32>(1u, 1738u, 74324u), vec2<u32>(4294967295u, 1u)), vec2<bool>(true, true), 1i), Struct_4(-1i, Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, true), -395f, vec3<u32>(41192u, 47733u, 51426u), vec2<u32>(37792u, 32700u)), vec2<bool>(false, false), -1i), Struct_4(-36437i, Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, true), -240f, vec3<u32>(10887u, 49814u, 1u), vec2<u32>(1u, 83977u)), vec2<bool>(false, true), -41795i), Struct_4(-41935i, Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, false), 1859f, vec3<u32>(113522u, 22384u, 1u), vec2<u32>(1u, 54244u)), vec2<bool>(true, false), -43217i), Struct_4(-17879i, Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(true, false), 1989f, vec3<u32>(1u, 0u, 4294967295u), vec2<u32>(4294967295u, 2988u)), vec2<bool>(true, false), 0i), Struct_4(-7110i, Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, false), 1222f, vec3<u32>(1u, 0u, 1u), vec2<u32>(1u, 4294967295u)), vec2<bool>(true, false), -75i), Struct_4(2147483647i, Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, false), -1206f, vec3<u32>(0u, 12885u, 1u), vec2<u32>(22579u, 89195u)), vec2<bool>(false, true), -1i), Struct_4(2147483647i, Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(true, false), -712f, vec3<u32>(13949u, 4294967295u, 7961u), vec2<u32>(17508u, 1u)), vec2<bool>(false, false), 0i), Struct_4(i32(-2147483648), Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(true, false), -762f, vec3<u32>(18527u, 21969u, 4294967295u), vec2<u32>(0u, 0u)), vec2<bool>(false, true), i32(-2147483648)), Struct_4(-31593i, Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, true), -415f, vec3<u32>(41221u, 47565u, 0u), vec2<u32>(0u, 26150u)), vec2<bool>(false, false), 0i), Struct_4(18407i, Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(false, true), -654f, vec3<u32>(1u, 51457u, 1u), vec2<u32>(10859u, 4294967295u)), vec2<bool>(false, false), 31840i), Struct_4(-1i, Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, true), 691f, vec3<u32>(19492u, 44223u, 45776u), vec2<u32>(0u, 43314u)), vec2<bool>(true, true), 0i), Struct_4(0i, Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(false, true), 417f, vec3<u32>(0u, 38321u, 79070u), vec2<u32>(14490u, 1u)), vec2<bool>(false, true), 2147483647i), Struct_4(-1i, Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, true), -942f, vec3<u32>(5908u, 72217u, 609u), vec2<u32>(18827u, 0u)), vec2<bool>(false, true), -1i), Struct_4(-7808i, Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, false), 726f, vec3<u32>(14571u, 18795u, 5190u), vec2<u32>(19867u, 4294967295u)), vec2<bool>(false, true), 39923i), Struct_4(-1i, Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, true), -663f, vec3<u32>(0u, 4294967295u, 0u), vec2<u32>(37013u, 4294967295u)), vec2<bool>(false, true), 116345i), Struct_4(42885i, Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, true), -2215f, vec3<u32>(0u, 1u, 1u), vec2<u32>(0u, 0u)), vec2<bool>(true, true), -17376i), Struct_4(30061i, Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, true), 714f, vec3<u32>(1u, 78972u, 11916u), vec2<u32>(0u, 1u)), vec2<bool>(false, false), 1i), Struct_4(7537i, Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, true), 642f, vec3<u32>(28224u, 19689u, 7074u), vec2<u32>(70004u, 2731u)), vec2<bool>(false, false), 7559i), Struct_4(1969i, Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(true, false), -555f, vec3<u32>(4332u, 68330u, 10030u), vec2<u32>(4294967295u, 21882u)), vec2<bool>(false, false), 0i));

var<private> global3: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(0u, 37102u, 4294967295u, 21475u), vec4<u32>(83245u, 1u, 26362u, 63331u), vec4<u32>(0u, 0u, 64127u, 13943u), vec4<u32>(31819u, 7555u, 60021u, 1u), vec4<u32>(45969u, 43507u, 1u, 1u), vec4<u32>(88276u, 4294967295u, 3824u, 1u), vec4<u32>(0u, 38640u, 4294967295u, 1u), vec4<u32>(17412u, 1u, 0u, 40106u), vec4<u32>(4294967295u, 30347u, 4294967295u, 4096u), vec4<u32>(4294967295u, 20695u, 49606u, 1086u), vec4<u32>(1u, 4294967295u, 30468u, 46583u), vec4<u32>(1u, 2086u, 5663u, 98003u), vec4<u32>(56232u, 77435u, 4294967295u, 94852u), vec4<u32>(4294967295u, 0u, 4294967295u, 4400u));

var<private> global4: vec3<f32> = vec3<f32>(1010f, 1168f, -500f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.yzy) + arg_3.wyw);
    var var_0 = 4294967295u;
    global3 = array<vec4<u32>, 14>();
    var var_1 = true;
    global2 = array<Struct_4, 23>();
    return ~u_input.c;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, -607f)) + -542f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) - arg_0.x)) * -1634f) + _wgslsmith_f_op_f32(min(680f, -793f)));
    let var_1 = Struct_4(reverseBits(abs(reverseBits(arg_1.x))), Struct_1(vec4<bool>(true, true, true, any(vec3<bool>(true, false, true)) && all(vec3<bool>(false, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(false, false), vec2<bool>(true, true)), 2368f, countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, u_input.b), vec3<u32>(u_input.c, u_input.b, u_input.b))), u_input.a.wz), select(!vec2<bool>(any(vec3<bool>(true, false, false)), all(vec3<bool>(true, true, false))), select(vec2<bool>(true, false), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), false), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(arg_0.x == global4.x, true), vec2<bool>(true, true))), 34592i);
    global1 = array<vec2<i32>, 1>();
    let var_2 = 36945u;
    var var_3 = var_1.c.x;
    return _wgslsmith_mod_vec3_i32(abs(-u_input.d) >> (firstLeadingBit(vec3<u32>(abs(u_input.b), var_1.b.e.x, 22437u)) % vec3<u32>(32u)), vec3<i32>(-31857i & firstLeadingBit(u_input.d.x), 1i >> (_wgslsmith_mult_u32(30037u, u_input.a.x) % 32u), ~var_1.a));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> vec4<bool> {
    return select(vec4<bool>(true, all(vec3<bool>(all(vec4<bool>(true, true, true, false)), true, false)), select(any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), _wgslsmith_sub_u32(arg_0, arg_0) <= _wgslsmith_div_u32(4410u, arg_0), true), true), !select(vec4<bool>(false, true, any(vec2<bool>(true, false)), any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), (~abs(1i) | (1520i | abs(u_input.d.x))) <= u_input.d.x);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> u32 {
    global3 = array<vec4<u32>, 14>();
    var var_0 = select(arg_0.c.a.zz, vec2<bool>(arg_0.c.a.x, true), true);
    var var_1 = Struct_1(select(func_4(arg_1, func_2(Struct_3(arg_0.c.b.x, 1117f, arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -716f), arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2129f, arg_0.c.c, global4.x, 482f))), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 105f, 813f) * vec3<f32>(arg_0.c.c, -1470f, arg_0.c.c)), u_input.d.zx << (arg_0.c.d.yz % vec2<u32>(32u)), -1i), -2147483647i), arg_0.c.a, arg_0.c.a), !arg_0.c.b, _wgslsmith_f_op_f32(-773f + _wgslsmith_f_op_f32(global4.x * global4.x)), firstLeadingBit(~u_input.a.zxx), vec2<u32>(1u, arg_1));
    let var_2 = u_input.d >> (vec3<u32>(~49095u, 0u, u_input.a.x) % vec3<u32>(32u));
    var_0 = func_4(arg_0.c.d.x, ~var_1.d.x, vec3<i32>(0i, _wgslsmith_sub_i32(0i, arg_0.a), arg_0.a) << ((vec3<u32>(var_1.d.x, u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, 0u), u_input.a.zyz)) << (~vec3<u32>(45879u, arg_0.c.e.x, arg_1) % vec3<u32>(32u))) % vec3<u32>(32u)), var_2.x).zw;
    return 30763u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 8>();
    global2 = array<Struct_4, 23>();
    global4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.x, 757f, global4.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1103f, -423f, global4.x)))))));
    let var_0 = any(vec3<bool>(true, true, true));
    let var_1 = ~4294967295u;
    let var_2 = 1u;
    var var_3 = -_wgslsmith_add_vec4_i32(abs(~min(vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.d.x), vec4<i32>(0i, u_input.d.x, u_input.d.x, 2147483647i))), _wgslsmith_sub_vec4_i32(select(reverseBits(vec4<i32>(-5637i, -2147483647i, u_input.d.x, u_input.d.x)), vec4<i32>(-2147483647i, u_input.d.x, 0i, 2147483647i), u_input.b > 11461u), countOneBits(select(vec4<i32>(1i, 1i, -6633i, 24983i), vec4<i32>(2147483647i, -46498i, -2147483647i, u_input.d.x), true))));
    var var_4 = global2[_wgslsmith_index_u32(1u, 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(~abs(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x), 14u)]), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(7466u, var_1), 1u)], _wgslsmith_add_vec3_u32(vec3<u32>(~func_1(Struct_2(0i, var_0, Struct_1(var_4.b.a, var_4.c, global4.x, u_input.a.zzx, u_input.a.yz), var_4.c.x), 0u), ~_wgslsmith_add_u32(u_input.b, var_1), abs(~var_1)), vec3<u32>(~_wgslsmith_dot_vec3_u32(u_input.a.xyz, vec3<u32>(23371u, u_input.b, 3419u)), select(55082u, var_2, var_0) & ~var_4.b.d.x, abs(~39211u))));
}

