struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<u32>(25746u, 72637u, 0u, 11763u), vec4<f32>(1619f, 429f, 284f, -1345f), i32(-2147483648), false, 4294967295u), Struct_1(vec4<u32>(4294967295u, 52266u, 2770u, 22794u), vec4<f32>(-1276f, 354f, 680f, -1000f), -27739i, false, 6784u), Struct_1(vec4<u32>(4294967295u, 34267u, 0u, 67361u), vec4<f32>(-749f, 738f, 736f, -554f), i32(-2147483648), true, 0u), Struct_1(vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<f32>(766f, 894f, -1000f, 774f), 29990i, true, 4294967295u), Struct_1(vec4<u32>(4294967295u, 27741u, 4294967295u, 4294967295u), vec4<f32>(-1162f, 1466f, -307f, -422f), -42791i, false, 3792u), Struct_1(vec4<u32>(1u, 46787u, 4294967295u, 0u), vec4<f32>(224f, 236f, -824f, 1000f), 4890i, false, 1u), Struct_1(vec4<u32>(4664u, 8192u, 19175u, 0u), vec4<f32>(-105f, 135f, 928f, -605f), 1i, true, 1u), Struct_1(vec4<u32>(1u, 70010u, 0u, 0u), vec4<f32>(-1000f, -959f, 1484f, -1770f), -47641i, true, 3268u), Struct_1(vec4<u32>(0u, 0u, 132759u, 17993u), vec4<f32>(265f, 421f, -495f, -1085f), -68162i, true, 103705u), Struct_1(vec4<u32>(13679u, 39598u, 4294967295u, 49674u), vec4<f32>(209f, -2022f, -1000f, 779f), i32(-2147483648), false, 53223u), Struct_1(vec4<u32>(12237u, 86191u, 68683u, 1u), vec4<f32>(-624f, -954f, 1460f, -611f), -1i, false, 1u), Struct_1(vec4<u32>(6677u, 0u, 4294967295u, 31946u), vec4<f32>(-1157f, -881f, 385f, -1146f), 26563i, true, 3639u), Struct_1(vec4<u32>(0u, 54939u, 4294967295u, 0u), vec4<f32>(-358f, -211f, -317f, -1099f), -5191i, false, 0u), Struct_1(vec4<u32>(25262u, 54660u, 1u, 0u), vec4<f32>(315f, 127f, -1242f, -847f), -12387i, true, 21807u), Struct_1(vec4<u32>(72543u, 123938u, 4294967295u, 0u), vec4<f32>(558f, 1546f, 1234f, 478f), 1i, true, 101147u), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 31955u), vec4<f32>(1000f, 515f, -1331f, 955f), 0i, true, 0u), Struct_1(vec4<u32>(234u, 1u, 0u, 0u), vec4<f32>(579f, -1000f, 1871f, 265f), i32(-2147483648), true, 43681u), Struct_1(vec4<u32>(75898u, 4294967295u, 4294967295u, 19263u), vec4<f32>(885f, 1002f, -462f, 1110f), 47306i, false, 1u), Struct_1(vec4<u32>(0u, 36392u, 69114u, 102681u), vec4<f32>(-1000f, -1740f, -2111f, -226f), 4715i, true, 1745u), Struct_1(vec4<u32>(1u, 49538u, 41177u, 15548u), vec4<f32>(-741f, -377f, 301f, 136f), 0i, true, 4294967295u), Struct_1(vec4<u32>(45204u, 4294967295u, 4294967295u, 1u), vec4<f32>(807f, -839f, -1000f, 1072f), -1i, false, 59874u), Struct_1(vec4<u32>(68841u, 7426u, 1u, 44037u), vec4<f32>(-1324f, 181f, -189f, -322f), 0i, true, 1u), Struct_1(vec4<u32>(10418u, 48800u, 72453u, 76909u), vec4<f32>(1126f, -1000f, -172f, -823f), 0i, true, 49075u), Struct_1(vec4<u32>(21466u, 0u, 4772u, 0u), vec4<f32>(-340f, 1475f, 1200f, 431f), i32(-2147483648), false, 0u), Struct_1(vec4<u32>(0u, 8516u, 0u, 26851u), vec4<f32>(-882f, 1000f, 495f, 781f), i32(-2147483648), true, 19655u), Struct_1(vec4<u32>(51749u, 744u, 82430u, 19864u), vec4<f32>(-390f, -1049f, 918f, 409f), 2147483647i, true, 4294967295u), Struct_1(vec4<u32>(81885u, 87021u, 23343u, 8583u), vec4<f32>(-519f, -952f, -581f, -502f), 9946i, true, 11579u), Struct_1(vec4<u32>(4619u, 119965u, 18426u, 29834u), vec4<f32>(234f, 2262f, 1349f, 1424f), -1i, false, 1u), Struct_1(vec4<u32>(16828u, 4294967295u, 1u, 1u), vec4<f32>(-208f, 400f, -378f, -1740f), -771i, true, 10136u), Struct_1(vec4<u32>(4294967295u, 0u, 89498u, 1u), vec4<f32>(-1612f, 354f, 1383f, -1000f), 1i, true, 65378u), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 26068u), vec4<f32>(-1328f, -223f, 1502f, 511f), -8821i, true, 23485u));

var<private> global1: f32 = -1823f;

var<private> global2: vec4<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> vec2<u32> {
    global0 = array<Struct_1, 31>();
    global1 = -1502f;
    global2 = select(vec4<i32>(min(max(7950i, -5227i), _wgslsmith_sub_i32(max(arg_2, 2147483647i), arg_0.c ^ arg_2)), arg_0.c, _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(global2.yx, arg_1.xy), firstTrailingBit(min(-2147483647i, 1i))), arg_1.x), ~abs(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.yy, vec2<i32>(arg_0.c, arg_1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(2854i, arg_2), arg_1.xz), u_input.a, u_input.a)), true);
    var var_0 = arg_0.d;
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(40856u, 31u)], _wgslsmith_mod_vec4_i32(firstTrailingBit((vec4<i32>(1i, -2147483647i, 20396i, arg_0.c) >> (vec4<u32>(4294967295u, arg_0.a.x, 4294967295u, 0u) % vec4<u32>(32u))) & ~vec4<i32>(-57962i, arg_0.c, -16511i, arg_0.c)), min(firstTrailingBit(vec4<i32>(arg_2, 0i, global2.x, global2.x)), -vec4<i32>(-2147483647i, 2972i, global2.x, u_input.a))), arg_0.a.x);
    return var_1.a.a.yz;
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-463f))) * 1315f)) - 423f);
    let var_0 = vec2<f32>(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(ceil(262f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-880f, -1367f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1174f - arg_0.b.x), _wgslsmith_f_op_f32(round(arg_0.b.x)))))));
    let var_1 = arg_0.d;
    let var_2 = Struct_3(~(~global2.x), true, max(global2.xx << (func_3(global0[_wgslsmith_index_u32(arg_0.e, 31u)], global2.xzy, -1i) % vec2<u32>(32u)), global2.yw) << (vec2<u32>(_wgslsmith_mod_u32(arg_0.e, 4294967295u) & _wgslsmith_mult_u32(1u, arg_0.a.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0.a.x, 0u), arg_0.a.x, countOneBits(arg_0.a.x))) % vec2<u32>(32u)), Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(arg_0.a & arg_0.a, arg_0.a), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -901f), -149f, _wgslsmith_f_op_f32(-var_0.x)), u_input.a, false || arg_0.d, abs(firstLeadingBit(4294967295u))), countOneBits(_wgslsmith_div_vec4_i32(-vec4<i32>(global2.x, 13449i, global2.x, 1i), firstTrailingBit(vec4<i32>(-2147483647i, global2.x, arg_0.c, u_input.a)))), firstLeadingBit(0u)));
    var var_3 = !(!var_2.d.a.d != (_wgslsmith_dot_vec4_u32(~var_2.d.a.a, var_2.d.a.a) != _wgslsmith_div_u32(35125u, arg_0.a.x ^ arg_0.a.x)));
    return reverseBits(arg_0.a.zyz);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(1u, arg_1.a.e), _wgslsmith_dot_vec3_u32(min(func_2(arg_1.a), ~arg_1.a.a.zyw), _wgslsmith_div_vec3_u32(~arg_1.a.a.zwz, vec3<u32>(arg_1.a.e, arg_1.a.a.x, arg_1.c) & arg_1.a.a.zxw))), abs(~vec2<u32>(arg_1.a.a.x << (7052u % 32u), arg_1.a.a.x)));
    global2 = vec4<i32>(max(-39916i, -_wgslsmith_add_i32(u_input.a, u_input.a)) << (17967u % 32u), countOneBits(-47116i), -18433i, _wgslsmith_mult_i32(arg_1.a.c, (i32(-1i) * -2147483647i) << (arg_1.c % 32u)) << (16583u % 32u));
    var var_1 = Struct_3(1i, all(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(arg_1.a.d, arg_0), arg_0), arg_1.a.d), select(vec2<bool>(true, true), select(vec2<bool>(arg_0, true), vec2<bool>(arg_1.a.d, false), arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(arg_1.a.d, arg_0), arg_0)), false)), _wgslsmith_sub_vec2_i32(vec2<i32>(select(-11828i, -u_input.a, all(vec3<bool>(arg_0, arg_1.a.d, arg_0))), -(global2.x ^ 19657i)), max(arg_1.b.zz, global2.xy)), arg_1);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-940f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1906f)))) * _wgslsmith_f_op_f32(f32(-1f) * -461f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(728f + 1388f));
    global2 = -arg_1.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_1.d.a.b.x)), 444f, !var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(0u, ~_wgslsmith_clamp_u32(51248u, 1u, 63430u), 10731u, abs(1u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-643f - _wgslsmith_f_op_f32(-1000f * 794f)), _wgslsmith_div_f32(-491f, _wgslsmith_f_op_f32(-861f + 342f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(663f, 1380f), _wgslsmith_f_op_f32(step(741f, 415f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, Struct_2(Struct_1(vec4<u32>(0u, 36740u, 85894u, 4294967295u), vec4<f32>(-1000f, -987f, 961f, 1975f), u_input.a, false, 6338u), vec4<i32>(-17802i, global2.x, global2.x, -1i), 34656u))) + _wgslsmith_f_op_f32(-1000f * -1140f))))), countOneBits(_wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.a, -34878i, u_input.a) ^ global2.wyx), max(-global2.xzx, _wgslsmith_add_vec3_i32(vec3<i32>(45496i, global2.x, -32747i), vec3<i32>(u_input.a, -1i, -15073i))))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, u_input.a <= global2.x), true)), ~(_wgslsmith_div_u32(1u, func_2(Struct_1(vec4<u32>(4294967295u, 13733u, 4294967295u, 20519u), vec4<f32>(1737f, -1171f, 1248f, 506f), global2.x, false, 32130u)).x) | 1u));
    var var_1 = select(!(!(!vec2<bool>(false, var_0.d))), select(vec2<bool>(any(vec2<bool>(var_0.d, var_0.d)), any(vec2<bool>(var_0.d, var_0.d))), vec2<bool>(true, true), !var_0.d), !select(select(!vec2<bool>(true, var_0.d), !vec2<bool>(var_0.d, false), var_0.d), vec2<bool>(!var_0.d, var_0.d), select(select(vec2<bool>(var_0.d, false), vec2<bool>(var_0.d, var_0.d), false), !vec2<bool>(var_0.d, false), var_0.a.x > var_0.a.x)));
    let var_2 = select(select(!select(select(vec2<bool>(true, var_0.d), vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x)), !vec2<bool>(false, var_0.d), !vec2<bool>(var_1.x, true)), select(vec2<bool>(var_1.x & true, !var_1.x), select(!vec2<bool>(var_0.d, var_0.d), !vec2<bool>(var_1.x, true), true), vec2<bool>(true, !var_1.x)), !(_wgslsmith_f_op_f32(step(1519f, var_0.b.x)) == _wgslsmith_f_op_f32(step(var_0.b.x, var_0.b.x)))), select(!vec2<bool>(var_0.d, var_0.d), select(select(vec2<bool>(true, true), !vec2<bool>(false, var_1.x), !vec2<bool>(false, var_0.d)), !select(vec2<bool>(true, var_1.x), vec2<bool>(true, var_0.d), var_1.x), !select(vec2<bool>(var_0.d, var_1.x), vec2<bool>(var_1.x, var_1.x), true)), !select(!vec2<bool>(var_0.d, false), !vec2<bool>(var_1.x, true), select(vec2<bool>(var_1.x, true), vec2<bool>(var_0.d, true), false))), all(!vec3<bool>(true, var_0.d, true)));
    let var_3 = true;
    global0 = array<Struct_1, 31>();
    global1 = 1360f;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + var_0.b.x) + var_0.b.x), _wgslsmith_f_op_f32(func_1(any(vec2<bool>(true, true & var_3)), Struct_2(Struct_1(vec4<u32>(4294967295u, var_0.e, 33636u, 4294967295u), vec4<f32>(var_0.b.x, -2601f, -1414f, -1089f), ~282i, var_2.x | var_0.d, var_0.e), vec4<i32>(8908i, firstTrailingBit(-1i), _wgslsmith_div_i32(0i, u_input.a), _wgslsmith_sub_i32(-8195i, u_input.a)), ~(~var_0.e)))));
    var var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, select(~(~(~var_0.a.www)), min(~vec3<u32>(var_0.e, 4294967295u, var_0.a.x), var_0.a.wyz), select(vec3<bool>(true, all(vec4<bool>(true, var_1.x, true, var_1.x)), var_0.d | false), vec3<bool>(false, !var_1.x, var_3), true)));
}

