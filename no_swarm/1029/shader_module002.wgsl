struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<u32> = vec2<u32>(0u, 8560u);

var<private> global2: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_2(Struct_1(-558f, 20671i, vec2<f32>(544f, -1376f), 48999u, false), 27744u), vec2<u32>(13905u, 0u)), Struct_4(Struct_2(Struct_1(522f, 20504i, vec2<f32>(-576f, -1108f), 33960u, true), 0u), vec2<u32>(5495u, 29871u)), Struct_4(Struct_2(Struct_1(-1909f, 1i, vec2<f32>(-768f, 669f), 70417u, false), 29271u), vec2<u32>(34596u, 1u)), Struct_4(Struct_2(Struct_1(-1894f, i32(-2147483648), vec2<f32>(-337f, 1543f), 3758u, true), 1u), vec2<u32>(71530u, 1u)), Struct_4(Struct_2(Struct_1(-798f, -21944i, vec2<f32>(-1212f, -1000f), 14718u, true), 7606u), vec2<u32>(18715u, 12071u)), Struct_4(Struct_2(Struct_1(-1232f, -27931i, vec2<f32>(2669f, -759f), 0u, false), 1u), vec2<u32>(34923u, 1u)), Struct_4(Struct_2(Struct_1(1162f, -2201i, vec2<f32>(-386f, -1000f), 4294967295u, true), 33218u), vec2<u32>(24503u, 41450u)), Struct_4(Struct_2(Struct_1(-1182f, -21778i, vec2<f32>(-874f, 147f), 75154u, true), 5184u), vec2<u32>(0u, 10289u)), Struct_4(Struct_2(Struct_1(162f, 12341i, vec2<f32>(609f, -365f), 0u, false), 50038u), vec2<u32>(4294967295u, 68691u)), Struct_4(Struct_2(Struct_1(-335f, -9870i, vec2<f32>(347f, 409f), 4294967295u, true), 101522u), vec2<u32>(31321u, 1u)), Struct_4(Struct_2(Struct_1(-423f, -1i, vec2<f32>(-194f, -1256f), 0u, true), 4294967295u), vec2<u32>(4294967295u, 4294967295u)), Struct_4(Struct_2(Struct_1(508f, -1i, vec2<f32>(-165f, 218f), 0u, false), 12108u), vec2<u32>(78289u, 48462u)), Struct_4(Struct_2(Struct_1(-328f, -35062i, vec2<f32>(609f, 299f), 44401u, true), 33519u), vec2<u32>(6391u, 14773u)), Struct_4(Struct_2(Struct_1(-364f, 0i, vec2<f32>(-1000f, -367f), 0u, true), 16870u), vec2<u32>(55601u, 43122u)), Struct_4(Struct_2(Struct_1(2027f, 65918i, vec2<f32>(1538f, 880f), 25294u, true), 9002u), vec2<u32>(26456u, 112335u)), Struct_4(Struct_2(Struct_1(-145f, 2147483647i, vec2<f32>(1504f, -395f), 4294967295u, false), 1u), vec2<u32>(22976u, 18788u)), Struct_4(Struct_2(Struct_1(-446f, 2147483647i, vec2<f32>(-1814f, 805f), 56012u, true), 64747u), vec2<u32>(55935u, 46060u)), Struct_4(Struct_2(Struct_1(-1439f, -34338i, vec2<f32>(-787f, -377f), 18255u, true), 0u), vec2<u32>(1u, 68015u)), Struct_4(Struct_2(Struct_1(203f, i32(-2147483648), vec2<f32>(1163f, -1051f), 0u, false), 55359u), vec2<u32>(0u, 36298u)), Struct_4(Struct_2(Struct_1(927f, 1i, vec2<f32>(504f, -376f), 29304u, true), 4294967295u), vec2<u32>(0u, 1u)), Struct_4(Struct_2(Struct_1(-953f, i32(-2147483648), vec2<f32>(1303f, -102f), 0u, false), 0u), vec2<u32>(23782u, 1u)), Struct_4(Struct_2(Struct_1(-1352f, -1i, vec2<f32>(-158f, -773f), 4294967295u, false), 1u), vec2<u32>(1695u, 4294967295u)), Struct_4(Struct_2(Struct_1(-284f, 34992i, vec2<f32>(342f, 503f), 4294967295u, true), 43191u), vec2<u32>(31678u, 16507u)), Struct_4(Struct_2(Struct_1(-677f, -27202i, vec2<f32>(-1398f, 788f), 1u, true), 1u), vec2<u32>(14283u, 4294967295u)), Struct_4(Struct_2(Struct_1(-1164f, 4578i, vec2<f32>(-323f, -1206f), 63101u, true), 3587u), vec2<u32>(4294967295u, 1u)), Struct_4(Struct_2(Struct_1(1421f, 0i, vec2<f32>(1730f, 1505f), 16733u, true), 4294967295u), vec2<u32>(6262u, 54410u)), Struct_4(Struct_2(Struct_1(1431f, 0i, vec2<f32>(-610f, 1312f), 86167u, true), 0u), vec2<u32>(1u, 0u)));

var<private> global3: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0.b;
    var var_1 = vec4<bool>(!arg_0.a.e, true, arg_0.a.e, arg_0.a.e);
    let var_2 = arg_0.a.e;
    var var_3 = -2147483647i < u_input.b.x;
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + arg_0.a.a))), -1900f, true));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(341f)))), _wgslsmith_f_op_f32(abs(767f)), true));
}

fn func_2() -> Struct_1 {
    global1 = ~(~(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(9037u, 1u), vec2<u32>(global1.x, 81556u)), ~vec2<u32>(1u, global1.x)) ^ ~(vec2<u32>(global1.x, global1.x) & vec2<u32>(global1.x, global1.x))));
    let var_0 = global1.x;
    global3 = array<vec2<bool>, 5>();
    let var_1 = true;
    let var_2 = reverseBits(vec3<u32>(firstTrailingBit(~global1.x), ~4294967295u, global1.x | global1.x));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-766f, _wgslsmith_f_op_f32(sign(1323f))), 290f))), 4287i, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(327f, 40779i, global0.a, 15840u, var_1), 13992u))))), 679f), _wgslsmith_add_u32(36692u, global1.x), !((global0.a.x == _wgslsmith_f_op_f32(round(1484f))) && true));
}

fn func_1(arg_0: f32, arg_1: i32) -> vec2<i32> {
    let var_0 = global1.x;
    global2 = array<Struct_4, 27>();
    global3 = array<vec2<bool>, 5>();
    var var_1 = func_2();
    global3 = array<vec2<bool>, 5>();
    return vec2<i32>(var_1.b, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_1, -24122i, -39991i), vec3<i32>(30835i, 2147483647i, -32825i), true), vec3<i32>(2147483647i, var_1.b, 2147483647i) >> (vec3<u32>(global1.x, 55547u, 44547u) % vec3<u32>(32u))), var_1.b)) | u_input.b.ww;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global3 = array<vec2<bool>, 5>();
    var var_1 = _wgslsmith_mult_vec2_i32(u_input.b.ww, _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, u_input.a) ^ func_1(203f, u_input.a)), reverseBits(u_input.b.wx | vec2<i32>(u_input.a, u_input.a))));
    let var_2 = func_2();
    let var_3 = !vec4<bool>(true, all(!(!vec4<bool>(var_2.e, false, true, false))), false, any(!select(vec4<bool>(true, var_0, var_2.e, var_0), vec4<bool>(var_2.e, false, var_2.e, false), vec4<bool>(var_0, true, false, var_0))));
    let var_4 = true;
    var var_5 = -1i;
    let var_6 = select(select(select(!select(vec2<bool>(var_0, true), vec2<bool>(false, false), vec2<bool>(true, var_4)), var_3.zz, select(vec2<bool>(var_4, var_4), vec2<bool>(var_4, false), select(vec2<bool>(var_0, var_0), global3[_wgslsmith_index_u32(var_2.d, 5u)], vec2<bool>(true, var_4)))), !select(var_3.xx, !vec2<bool>(false, var_2.e), vec2<bool>(false, var_4)), vec2<bool>(~var_2.d != ~var_2.d, all(var_3.wyw))), select(vec2<bool>(_wgslsmith_f_op_f32(abs(var_2.c.x)) < _wgslsmith_f_op_f32(-var_2.a), var_2.e), select(vec2<bool>(var_3.x, var_3.x), select(var_3.zw, !vec2<bool>(var_0, true), select(true, var_0, var_0)), func_2().e), !select(vec2<bool>(var_4, false), global3[_wgslsmith_index_u32(var_2.d, 5u)], true)), !any(!(!vec4<bool>(var_3.x, var_0, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1049f, 918f), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.b, -u_input.a, -2147483647i, var_1.x), ~(u_input.b & vec4<i32>(545i, 52925i, -2147483647i, var_1.x))), firstTrailingBit(vec3<i32>(min(func_1(var_2.c.x, var_1.x).x, ~var_1.x), u_input.b.x >> (0u % 32u), select(var_1.x << (global1.x % 32u), ~var_1.x, true))));
}

