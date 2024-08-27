struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(1u, vec4<i32>(-29203i, i32(-2147483648), 2147483647i, -1i), vec3<bool>(false, true, false), Struct_3(vec2<bool>(true, false), Struct_1(2147483647i, vec2<u32>(23077u, 63448u), false, 0u, vec2<f32>(602f, 782f)), true, vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true), Struct_1(1929i, vec2<u32>(0u, 52402u), false, 0u, vec2<f32>(-632f, 1111f)), false, vec2<bool>(true, true))), Struct_4(4294967295u, vec4<i32>(10314i, -26355i, 28158i, 16210i), vec3<bool>(false, true, true), Struct_3(vec2<bool>(false, false), Struct_1(-1i, vec2<u32>(19010u, 4294967295u), false, 1u, vec2<f32>(-1479f, -1335f)), true, vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true), Struct_1(25269i, vec2<u32>(7320u, 84612u), true, 85172u, vec2<f32>(-1266f, -1067f)), true, vec2<bool>(true, false))), Struct_4(3586u, vec4<i32>(2147483647i, i32(-2147483648), 1i, -1i), vec3<bool>(true, false, true), Struct_3(vec2<bool>(true, true), Struct_1(-1i, vec2<u32>(35492u, 27048u), true, 4294967295u, vec2<f32>(336f, -966f)), true, vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true), Struct_1(i32(-2147483648), vec2<u32>(58282u, 36530u), true, 17021u, vec2<f32>(-314f, -127f)), true, vec2<bool>(true, true))), Struct_4(66718u, vec4<i32>(2147483647i, i32(-2147483648), 1i, -21508i), vec3<bool>(true, true, true), Struct_3(vec2<bool>(false, false), Struct_1(-28572i, vec2<u32>(0u, 55289u), false, 23208u, vec2<f32>(-1040f, 1041f)), false, vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true), Struct_1(0i, vec2<u32>(0u, 0u), false, 24534u, vec2<f32>(-903f, 872f)), false, vec2<bool>(true, true))), Struct_4(50620u, vec4<i32>(1i, 20401i, 2147483647i, 18209i), vec3<bool>(false, false, false), Struct_3(vec2<bool>(true, true), Struct_1(22031i, vec2<u32>(1628u, 20437u), false, 1u, vec2<f32>(1000f, 1354f)), true, vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true), Struct_1(1i, vec2<u32>(33889u, 12390u), true, 56215u, vec2<f32>(-343f, 1000f)), true, vec2<bool>(true, true))), Struct_4(1u, vec4<i32>(i32(-2147483648), 29073i, 1i, 18717i), vec3<bool>(true, true, false), Struct_3(vec2<bool>(true, false), Struct_1(65921i, vec2<u32>(56066u, 1u), true, 25240u, vec2<f32>(217f, -1000f)), true, vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true), Struct_1(1i, vec2<u32>(2798u, 1u), true, 4294967295u, vec2<f32>(235f, -253f)), false, vec2<bool>(false, true))), Struct_4(4332u, vec4<i32>(-8966i, 2147483647i, 76962i, 1i), vec3<bool>(true, false, true), Struct_3(vec2<bool>(true, true), Struct_1(-1i, vec2<u32>(19617u, 51685u), true, 0u, vec2<f32>(-1000f, -162f)), false, vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true), Struct_1(i32(-2147483648), vec2<u32>(7661u, 3830u), false, 1u, vec2<f32>(1000f, 2633f)), false, vec2<bool>(true, false))), Struct_4(31077u, vec4<i32>(9499i, i32(-2147483648), 1i, 0i), vec3<bool>(false, true, true), Struct_3(vec2<bool>(false, true), Struct_1(-8274i, vec2<u32>(4294967295u, 49923u), false, 18778u, vec2<f32>(-1603f, -203f)), false, vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true), Struct_1(38342i, vec2<u32>(25905u, 37418u), false, 11349u, vec2<f32>(1740f, -184f)), true, vec2<bool>(false, true))));

var<private> global1: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(1u, vec4<i32>(-36312i, 34242i, 27350i, -27270i), vec3<bool>(false, false, true), Struct_3(vec2<bool>(false, true), Struct_1(2147483647i, vec2<u32>(31550u, 6215u), true, 25590u, vec2<f32>(199f, -630f)), false, vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false), Struct_1(1i, vec2<u32>(4294967295u, 17617u), false, 47634u, vec2<f32>(385f, -130f)), false, vec2<bool>(false, true))), Struct_4(1u, vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 66522i), vec3<bool>(true, true, false), Struct_3(vec2<bool>(true, false), Struct_1(i32(-2147483648), vec2<u32>(1547u, 0u), true, 6717u, vec2<f32>(-1000f, -717f)), true, vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false), Struct_1(37043i, vec2<u32>(83933u, 0u), false, 32064u, vec2<f32>(1193f, 1000f)), false, vec2<bool>(false, true))), Struct_4(0u, vec4<i32>(i32(-2147483648), -1i, -33338i, 1i), vec3<bool>(false, false, false), Struct_3(vec2<bool>(true, false), Struct_1(i32(-2147483648), vec2<u32>(1u, 38598u), true, 0u, vec2<f32>(792f, 688f)), true, vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false), Struct_1(2147483647i, vec2<u32>(4294967295u, 1u), false, 0u, vec2<f32>(-883f, 524f)), false, vec2<bool>(true, false))), Struct_4(0u, vec4<i32>(-1i, 1i, 1i, -20886i), vec3<bool>(false, true, true), Struct_3(vec2<bool>(false, true), Struct_1(2147483647i, vec2<u32>(0u, 11864u), false, 59030u, vec2<f32>(288f, -581f)), false, vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true), Struct_1(-33755i, vec2<u32>(43857u, 40180u), false, 0u, vec2<f32>(1079f, 558f)), false, vec2<bool>(false, false))), Struct_4(4294967295u, vec4<i32>(-73579i, i32(-2147483648), -35576i, -1i), vec3<bool>(false, false, true), Struct_3(vec2<bool>(true, true), Struct_1(33591i, vec2<u32>(4294967295u, 1u), false, 4294967295u, vec2<f32>(-721f, -1269f)), true, vec2<bool>(true, false)), Struct_3(vec2<bool>(false, true), Struct_1(i32(-2147483648), vec2<u32>(1u, 1u), false, 10071u, vec2<f32>(-470f, 1109f)), false, vec2<bool>(false, false))), Struct_4(0u, vec4<i32>(-89454i, i32(-2147483648), 1i, i32(-2147483648)), vec3<bool>(true, false, false), Struct_3(vec2<bool>(true, true), Struct_1(-19987i, vec2<u32>(0u, 0u), true, 1u, vec2<f32>(1432f, 493f)), true, vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false), Struct_1(1i, vec2<u32>(1u, 0u), true, 1u, vec2<f32>(122f, 384f)), false, vec2<bool>(true, true))), Struct_4(4294967295u, vec4<i32>(-20433i, -3898i, 2147483647i, 17439i), vec3<bool>(false, true, false), Struct_3(vec2<bool>(false, true), Struct_1(1i, vec2<u32>(1u, 0u), true, 20569u, vec2<f32>(528f, 1698f)), true, vec2<bool>(false, true)), Struct_3(vec2<bool>(false, true), Struct_1(-118196i, vec2<u32>(14121u, 4215u), false, 1u, vec2<f32>(819f, -512f)), false, vec2<bool>(true, false))), Struct_4(21588u, vec4<i32>(-44986i, 1i, 15879i, 19882i), vec3<bool>(false, false, false), Struct_3(vec2<bool>(true, false), Struct_1(0i, vec2<u32>(1u, 4294967295u), true, 0u, vec2<f32>(-112f, 875f)), true, vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false), Struct_1(-27496i, vec2<u32>(4294967295u, 4294967295u), false, 0u, vec2<f32>(525f, 620f)), false, vec2<bool>(false, false))), Struct_4(26593u, vec4<i32>(i32(-2147483648), 1i, 0i, 2147483647i), vec3<bool>(true, false, false), Struct_3(vec2<bool>(false, false), Struct_1(6346i, vec2<u32>(5639u, 14258u), true, 28570u, vec2<f32>(392f, -190f)), true, vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false), Struct_1(2696i, vec2<u32>(0u, 64380u), false, 1u, vec2<f32>(-1344f, 1719f)), false, vec2<bool>(false, false))), Struct_4(1u, vec4<i32>(2147483647i, 2147483647i, 29887i, -39269i), vec3<bool>(false, true, false), Struct_3(vec2<bool>(false, false), Struct_1(2147483647i, vec2<u32>(4294967295u, 22541u), true, 4294967295u, vec2<f32>(-993f, -1556f)), false, vec2<bool>(true, false)), Struct_3(vec2<bool>(false, true), Struct_1(65554i, vec2<u32>(81169u, 30158u), false, 1u, vec2<f32>(839f, 162f)), true, vec2<bool>(true, true))), Struct_4(104914u, vec4<i32>(32850i, 64990i, 1i, 1i), vec3<bool>(false, true, true), Struct_3(vec2<bool>(false, false), Struct_1(45016i, vec2<u32>(1u, 0u), false, 28852u, vec2<f32>(-1500f, 1838f)), false, vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true), Struct_1(1i, vec2<u32>(4294967295u, 4294967295u), true, 79482u, vec2<f32>(-941f, 226f)), true, vec2<bool>(false, true))), Struct_4(23288u, vec4<i32>(-41175i, 1i, -29717i, i32(-2147483648)), vec3<bool>(false, true, false), Struct_3(vec2<bool>(false, false), Struct_1(2147483647i, vec2<u32>(56141u, 54269u), false, 0u, vec2<f32>(2476f, 436f)), true, vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false), Struct_1(-35167i, vec2<u32>(0u, 0u), true, 0u, vec2<f32>(-138f, -799f)), false, vec2<bool>(true, true))), Struct_4(3361u, vec4<i32>(8648i, 3858i, 2147483647i, -1i), vec3<bool>(true, true, true), Struct_3(vec2<bool>(false, true), Struct_1(-4801i, vec2<u32>(10110u, 4294967295u), false, 0u, vec2<f32>(1015f, 1485f)), false, vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false), Struct_1(2147483647i, vec2<u32>(11316u, 38954u), false, 1u, vec2<f32>(232f, -393f)), false, vec2<bool>(false, false))), Struct_4(45308u, vec4<i32>(23456i, -10151i, 10890i, 0i), vec3<bool>(true, false, false), Struct_3(vec2<bool>(false, true), Struct_1(2147483647i, vec2<u32>(0u, 54183u), true, 4294967295u, vec2<f32>(-636f, -1666f)), false, vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false), Struct_1(0i, vec2<u32>(4130u, 4294967295u), false, 4294967295u, vec2<f32>(1507f, -499f)), false, vec2<bool>(true, false))), Struct_4(74827u, vec4<i32>(3897i, 0i, i32(-2147483648), -1i), vec3<bool>(false, true, true), Struct_3(vec2<bool>(true, false), Struct_1(623i, vec2<u32>(59046u, 23876u), true, 4294967295u, vec2<f32>(-1422f, 578f)), true, vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false), Struct_1(20794i, vec2<u32>(81710u, 24681u), true, 50638u, vec2<f32>(-326f, -2272f)), false, vec2<bool>(true, false))), Struct_4(0u, vec4<i32>(0i, 2147483647i, -20463i, 25609i), vec3<bool>(true, false, true), Struct_3(vec2<bool>(false, false), Struct_1(1i, vec2<u32>(0u, 41368u), false, 117627u, vec2<f32>(-727f, 765f)), false, vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false), Struct_1(1i, vec2<u32>(1u, 12521u), false, 37073u, vec2<f32>(1000f, -686f)), true, vec2<bool>(true, false))), Struct_4(32671u, vec4<i32>(39967i, 1i, 8231i, 14218i), vec3<bool>(false, false, false), Struct_3(vec2<bool>(false, false), Struct_1(-1i, vec2<u32>(92637u, 4294967295u), true, 0u, vec2<f32>(793f, 1203f)), true, vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false), Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 4294967295u), true, 1u, vec2<f32>(787f, -301f)), false, vec2<bool>(false, false))), Struct_4(40569u, vec4<i32>(-5322i, 1i, 1i, 25081i), vec3<bool>(true, true, true), Struct_3(vec2<bool>(true, true), Struct_1(i32(-2147483648), vec2<u32>(23329u, 4294967295u), true, 0u, vec2<f32>(128f, 775f)), true, vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true), Struct_1(i32(-2147483648), vec2<u32>(0u, 0u), true, 7428u, vec2<f32>(234f, -289f)), true, vec2<bool>(true, true))), Struct_4(7162u, vec4<i32>(2147483647i, i32(-2147483648), 1i, -2545i), vec3<bool>(true, true, false), Struct_3(vec2<bool>(false, false), Struct_1(0i, vec2<u32>(42072u, 20973u), true, 15622u, vec2<f32>(595f, 899f)), false, vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false), Struct_1(i32(-2147483648), vec2<u32>(0u, 0u), true, 1u, vec2<f32>(1733f, -1370f)), true, vec2<bool>(false, false))), Struct_4(0u, vec4<i32>(2147483647i, 13805i, -8069i, 22228i), vec3<bool>(true, false, false), Struct_3(vec2<bool>(true, false), Struct_1(0i, vec2<u32>(104993u, 0u), false, 4294967295u, vec2<f32>(-1236f, 198f)), false, vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false), Struct_1(-49877i, vec2<u32>(0u, 396u), true, 9240u, vec2<f32>(-941f, -1271f)), false, vec2<bool>(false, true))));

var<private> global2: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: u32, arg_3: i32) -> i32 {
    global2 = all(vec3<bool>(all(vec3<bool>(false, select(false, false, true), true)), true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    var var_0 = select(vec2<u32>(min(arg_2, ~1u), u_input.a), abs((~vec2<u32>(arg_1, 11814u) | vec2<u32>(arg_1, 1u)) & select(vec2<u32>(55288u, 4294967295u), select(vec2<u32>(44662u, 6379u), vec2<u32>(arg_1, arg_2), vec2<bool>(false, false)), vec2<bool>(true, false))), vec2<bool>(true, !(!any(vec3<bool>(false, false, false)))));
    let var_1 = vec3<i32>(arg_3, 31461i, -2147483647i);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + -1028f))), 491f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-628f - 1728f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(276f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_3 = true;
    return var_1.x;
}

fn func_2() -> Struct_3 {
    let var_0 = func_3(vec4<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(-2147483647i, -2147483647i, 1i, 69290i)), _wgslsmith_mult_vec4_i32(min(vec4<i32>(13306i, 2147483647i, -1i, 10995i), vec4<i32>(1i, 63810i, 59593i, -2147483647i)), vec4<i32>(6120i, 37183i, 11406i, -1i) << (vec4<u32>(u_input.a, u_input.a, 41828u, u_input.a) % vec4<u32>(32u)))), 3868i, -(~abs(-1i)), _wgslsmith_clamp_i32(-1i, 1i, _wgslsmith_mod_i32(-34691i, abs(10743i)))), reverseBits(u_input.a), _wgslsmith_mod_u32(min(~countOneBits(4294967295u), _wgslsmith_sub_u32(countOneBits(u_input.a), 1u << (0u % 32u))), u_input.a), min(~(~(i32(-1i) * -2147483647i)), 41865i));
    let var_1 = Struct_3(vec2<bool>(select(true, any(vec3<bool>(true, true, true)), reverseBits(var_0) < (-1i & var_0)), true), Struct_1(var_0, vec2<u32>(4294967295u, ~u_input.a), any(vec3<bool>(true, true, true)), ~4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-785f, -1673f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-108f, 1000f)))))), true, select(vec2<bool>(false, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), vec2<bool>(true, true), true), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(var_1.b.e.x, 1630f)), 113f, -749f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(274f, _wgslsmith_f_op_f32(max(1353f, _wgslsmith_f_op_f32(abs(1964f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.e.x + var_1.b.e.x), -596f))))), true));
    global2 = true;
    global0 = array<Struct_4, 8>();
    return Struct_3(select(!vec2<bool>(false, var_1.b.c), !var_1.a, vec2<bool>((0u <= u_input.a) && var_1.c, (var_0 == 46179i) & true)), var_1.b, false, var_1.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> i32 {
    global2 = !all(vec2<bool>(true, 326f <= _wgslsmith_f_op_f32(arg_0.b.e.x * -962f)));
    let var_0 = select(select(select(!vec3<bool>(false, arg_0.d.x, true), !select(vec3<bool>(true, arg_0.b.c, arg_0.d.x), vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.c), false), true), select(!select(vec3<bool>(false, false, arg_0.b.c), vec3<bool>(arg_0.a.x, false, false), false), select(select(vec3<bool>(false, arg_0.d.x, false), vec3<bool>(arg_0.d.x, true, arg_0.b.c), vec3<bool>(arg_0.a.x, arg_0.c, arg_0.b.c)), select(vec3<bool>(true, false, true), vec3<bool>(true, arg_0.b.c, arg_0.b.c), true), select(vec3<bool>(false, false, arg_0.c), vec3<bool>(true, true, arg_0.d.x), vec3<bool>(arg_0.b.c, arg_0.c, arg_0.b.c))), arg_0.c), arg_0.c), select(vec3<bool>(arg_0.a.x, !(arg_0.b.b.x > 0u), _wgslsmith_f_op_f32(sign(501f)) > func_2().b.e.x), !select(select(vec3<bool>(true, arg_0.c, arg_0.d.x), vec3<bool>(arg_0.a.x, false, false), arg_0.c), select(vec3<bool>(true, true, arg_0.c), vec3<bool>(arg_0.d.x, false, true), arg_0.b.c), u_input.a <= 0u), any(arg_0.d)), select(false, arg_0.a.x, !all(!vec4<bool>(arg_0.d.x, true, true, true))));
    let var_1 = arg_0;
    global1 = array<Struct_4, 20>();
    global1 = array<Struct_4, 20>();
    return ~(~(-1i));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: f32, arg_3: vec2<f32>) -> i32 {
    var var_0 = abs(_wgslsmith_mult_i32(1i, ~_wgslsmith_div_i32(-2147483647i, -1553i))) | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, func_4(func_2(), ~vec2<i32>(0i, 0i)), 27146i, ~1i), -vec4<i32>(1i, 1i, 1i, 1i));
    global0 = array<Struct_4, 8>();
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(!(!any(vec3<bool>(false, true, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f)), -194f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_f_op_f32(-1308f + -403f), true))), _wgslsmith_f_op_f32(1137f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1210f, -707f)))))), vec2<u32>(u_input.a, 2050u) ^ (~max(vec2<u32>(25924u, 27338u), vec2<u32>(30288u, 20246u)) & vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 25683u), vec3<u32>(1u, 16092u, u_input.a)))), any(func_2().d), func_2().b.b.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(511f, 767f) - 162f) - _wgslsmith_div_f32(-1181f, _wgslsmith_f_op_f32(f32(-1f) * -1734f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 193f) * _wgslsmith_div_f32(728f, -834f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2062f))))));
    global0 = array<Struct_4, 8>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -395f), -114f, _wgslsmith_f_op_f32(select(571f, var_0.e.x, false))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1060f, -1000f, -1000f), vec3<f32>(var_0.e.x, var_0.e.x, 168f), var_0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1264f, -680f, var_0.e.x), vec3<f32>(-379f, var_0.e.x, -1047f), var_0.c)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(462f, var_0.e.x, var_0.e.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(574f, 160f, var_0.e.x)))));
    let var_2 = 88043u;
    let var_3 = -2147483647i;
    global0 = array<Struct_4, 8>();
    let var_4 = vec2<i32>(1i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_2().b.e.x));
}

