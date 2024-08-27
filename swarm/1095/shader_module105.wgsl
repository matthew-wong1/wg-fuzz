struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_2(vec3<u32>(0u, 0u, 37439u), vec2<u32>(7793u, 91399u), vec2<bool>(true, false)), vec3<i32>(1i, 0i, 27303i), Struct_1(vec3<u32>(1u, 1u, 1u), 172f, -1266f), vec2<i32>(-31260i, 2147483647i)), Struct_3(Struct_2(vec3<u32>(29519u, 33428u, 4294967295u), vec2<u32>(1u, 1u), vec2<bool>(true, false)), vec3<i32>(-212i, -1i, 22316i), Struct_1(vec3<u32>(0u, 1u, 0u), -731f, 573f), vec2<i32>(60478i, -1i)), Struct_3(Struct_2(vec3<u32>(1u, 101815u, 41084u), vec2<u32>(59852u, 4294967295u), vec2<bool>(true, false)), vec3<i32>(27449i, -1139i, -31381i), Struct_1(vec3<u32>(1u, 0u, 4294967295u), 460f, 622f), vec2<i32>(45920i, 2147483647i)), Struct_3(Struct_2(vec3<u32>(4294967295u, 1u, 0u), vec2<u32>(4294967295u, 30792u), vec2<bool>(false, true)), vec3<i32>(-7662i, -13416i, i32(-2147483648)), Struct_1(vec3<u32>(6235u, 7684u, 32199u), 1000f, -873f), vec2<i32>(2147483647i, i32(-2147483648))), Struct_3(Struct_2(vec3<u32>(4294967295u, 7792u, 1u), vec2<u32>(26851u, 27856u), vec2<bool>(false, false)), vec3<i32>(19939i, 9671i, 114i), Struct_1(vec3<u32>(0u, 4294967295u, 0u), -1138f, -830f), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_3(Struct_2(vec3<u32>(0u, 20081u, 1u), vec2<u32>(4294967295u, 1u), vec2<bool>(true, true)), vec3<i32>(19799i, -1i, 23925i), Struct_1(vec3<u32>(4294967295u, 41115u, 17085u), 684f, -1000f), vec2<i32>(0i, 0i)), Struct_3(Struct_2(vec3<u32>(0u, 30285u, 1u), vec2<u32>(1u, 38418u), vec2<bool>(false, false)), vec3<i32>(-1i, -38202i, i32(-2147483648)), Struct_1(vec3<u32>(21311u, 4294967295u, 0u), 306f, -609f), vec2<i32>(17919i, 1216i)), Struct_3(Struct_2(vec3<u32>(3246u, 48070u, 33795u), vec2<u32>(101147u, 4294967295u), vec2<bool>(false, true)), vec3<i32>(6194i, 29921i, -26284i), Struct_1(vec3<u32>(35379u, 41080u, 4294967295u), 1392f, 211f), vec2<i32>(59073i, -1i)), Struct_3(Struct_2(vec3<u32>(12357u, 78532u, 0u), vec2<u32>(13046u, 19689u), vec2<bool>(true, true)), vec3<i32>(-1i, i32(-2147483648), 54283i), Struct_1(vec3<u32>(0u, 0u, 0u), -1000f, 140f), vec2<i32>(1i, 26506i)), Struct_3(Struct_2(vec3<u32>(9071u, 4294967295u, 4294967295u), vec2<u32>(31004u, 53276u), vec2<bool>(true, true)), vec3<i32>(1i, -65198i, -1i), Struct_1(vec3<u32>(22994u, 35354u, 15404u), 493f, 415f), vec2<i32>(-50508i, -1i)), Struct_3(Struct_2(vec3<u32>(29925u, 1u, 0u), vec2<u32>(0u, 0u), vec2<bool>(false, false)), vec3<i32>(1i, -1i, 0i), Struct_1(vec3<u32>(4294967295u, 48294u, 0u), 295f, -1000f), vec2<i32>(1784i, 2147483647i)), Struct_3(Struct_2(vec3<u32>(17020u, 57652u, 33158u), vec2<u32>(2112u, 0u), vec2<bool>(false, true)), vec3<i32>(30359i, 1i, -1i), Struct_1(vec3<u32>(0u, 1u, 46731u), -1727f, -557f), vec2<i32>(-12834i, 1i)), Struct_3(Struct_2(vec3<u32>(4294967295u, 0u, 79855u), vec2<u32>(4294967295u, 81109u), vec2<bool>(false, false)), vec3<i32>(i32(-2147483648), 1770i, -1i), Struct_1(vec3<u32>(0u, 0u, 3572u), 1999f, 1000f), vec2<i32>(2147483647i, -1i)), Struct_3(Struct_2(vec3<u32>(16303u, 4294967295u, 52491u), vec2<u32>(11148u, 0u), vec2<bool>(true, false)), vec3<i32>(-7333i, -1i, -27029i), Struct_1(vec3<u32>(45048u, 0u, 0u), -902f, -1000f), vec2<i32>(-1i, 36100i)), Struct_3(Struct_2(vec3<u32>(68473u, 25839u, 1u), vec2<u32>(0u, 1u), vec2<bool>(false, true)), vec3<i32>(27256i, 55586i, 6060i), Struct_1(vec3<u32>(0u, 0u, 10532u), -468f, 987f), vec2<i32>(-1i, -24532i)), Struct_3(Struct_2(vec3<u32>(4294967295u, 17378u, 0u), vec2<u32>(0u, 1u), vec2<bool>(true, false)), vec3<i32>(-22861i, -1i, 2940i), Struct_1(vec3<u32>(0u, 44227u, 9067u), -1821f, 114f), vec2<i32>(-14462i, 32442i)), Struct_3(Struct_2(vec3<u32>(1u, 0u, 4294967295u), vec2<u32>(49206u, 84505u), vec2<bool>(true, true)), vec3<i32>(2147483647i, i32(-2147483648), 0i), Struct_1(vec3<u32>(1u, 0u, 5176u), -150f, 362f), vec2<i32>(i32(-2147483648), 12708i)), Struct_3(Struct_2(vec3<u32>(0u, 1u, 5386u), vec2<u32>(22080u, 1u), vec2<bool>(true, false)), vec3<i32>(13150i, 17646i, 33543i), Struct_1(vec3<u32>(4294967295u, 0u, 0u), -124f, 274f), vec2<i32>(i32(-2147483648), 583i)), Struct_3(Struct_2(vec3<u32>(1u, 26806u, 4294967295u), vec2<u32>(0u, 10694u), vec2<bool>(false, true)), vec3<i32>(1i, -33937i, -1i), Struct_1(vec3<u32>(1u, 0u, 12656u), 706f, 2517f), vec2<i32>(i32(-2147483648), 1i)), Struct_3(Struct_2(vec3<u32>(1u, 11743u, 0u), vec2<u32>(81859u, 1u), vec2<bool>(true, false)), vec3<i32>(58215i, 33696i, -46978i), Struct_1(vec3<u32>(74840u, 0u, 4625u), -263f, -1792f), vec2<i32>(1i, i32(-2147483648))), Struct_3(Struct_2(vec3<u32>(4461u, 2745u, 116011u), vec2<u32>(0u, 1u), vec2<bool>(true, false)), vec3<i32>(1i, i32(-2147483648), 38240i), Struct_1(vec3<u32>(4294967295u, 4093u, 1u), 903f, 1588f), vec2<i32>(-91084i, -15512i)), Struct_3(Struct_2(vec3<u32>(1u, 4294967295u, 1u), vec2<u32>(1u, 93646u), vec2<bool>(false, true)), vec3<i32>(i32(-2147483648), 0i, 56649i), Struct_1(vec3<u32>(5838u, 0u, 1u), 2014f, -853f), vec2<i32>(4262i, 1i)), Struct_3(Struct_2(vec3<u32>(34784u, 0u, 2786u), vec2<u32>(0u, 8205u), vec2<bool>(false, false)), vec3<i32>(i32(-2147483648), 31867i, 0i), Struct_1(vec3<u32>(1u, 13833u, 1u), 1531f, -276f), vec2<i32>(1i, -1i)), Struct_3(Struct_2(vec3<u32>(28745u, 18689u, 0u), vec2<u32>(0u, 0u), vec2<bool>(false, false)), vec3<i32>(0i, 14014i, -34878i), Struct_1(vec3<u32>(91867u, 43485u, 33350u), 1282f, 911f), vec2<i32>(-18113i, 0i)), Struct_3(Struct_2(vec3<u32>(16565u, 67429u, 11608u), vec2<u32>(4200u, 26672u), vec2<bool>(false, true)), vec3<i32>(1i, 0i, -18347i), Struct_1(vec3<u32>(24399u, 13635u, 3814u), -1061f, 154f), vec2<i32>(2147483647i, 22882i)), Struct_3(Struct_2(vec3<u32>(74155u, 33392u, 4294967295u), vec2<u32>(59082u, 0u), vec2<bool>(true, true)), vec3<i32>(-57965i, -1i, -18656i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 40772u), 1007f, 762f), vec2<i32>(-1i, 1i)), Struct_3(Struct_2(vec3<u32>(0u, 78917u, 95716u), vec2<u32>(4294967295u, 18344u), vec2<bool>(false, true)), vec3<i32>(-41924i, -22075i, 5615i), Struct_1(vec3<u32>(0u, 15733u, 4294967295u), 1000f, 632f), vec2<i32>(21785i, 1i)), Struct_3(Struct_2(vec3<u32>(1u, 0u, 542u), vec2<u32>(0u, 75950u), vec2<bool>(false, false)), vec3<i32>(i32(-2147483648), -24820i, i32(-2147483648)), Struct_1(vec3<u32>(0u, 4294967295u, 16121u), 1037f, -131f), vec2<i32>(1i, -14038i)), Struct_3(Struct_2(vec3<u32>(9805u, 10860u, 23107u), vec2<u32>(41172u, 4516u), vec2<bool>(true, true)), vec3<i32>(29689i, 14927i, 29542i), Struct_1(vec3<u32>(0u, 9798u, 48963u), -349f, 544f), vec2<i32>(-40837i, 18406i)), Struct_3(Struct_2(vec3<u32>(80485u, 18631u, 64520u), vec2<u32>(12456u, 75177u), vec2<bool>(true, true)), vec3<i32>(-1i, 49391i, -13769i), Struct_1(vec3<u32>(4294967295u, 52516u, 1u), -1462f, -1340f), vec2<i32>(83014i, 0i)), Struct_3(Struct_2(vec3<u32>(0u, 7501u, 5729u), vec2<u32>(0u, 27444u), vec2<bool>(false, true)), vec3<i32>(i32(-2147483648), -1i, 1533i), Struct_1(vec3<u32>(1u, 11682u, 1u), 625f, -249f), vec2<i32>(-3958i, 39839i)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> vec2<u32> {
    let var_0 = true;
    global0 = array<Struct_3, 31>();
    let var_1 = arg_1.c.b;
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1377f))), arg_1.c.c, arg_1.c.b, -371f) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-484f, var_1, 1199f, var_1))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), 1000f), 277f, arg_1.c.c))));
    return ~_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(select(u_input.b, 77248u, arg_1.a.c.x), firstLeadingBit(0u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.c.a.yz, arg_1.a.a.zy), arg_1.a.b, arg_1.a.a.yz));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_3, 31>();
    global0 = array<Struct_3, 31>();
    let var_0 = ~u_input.a.x;
    var var_1 = Struct_4(-(~(-12101i)), Struct_2(vec3<u32>(16964u, reverseBits(~u_input.b), (4294967295u >> (arg_0.a.x % 32u)) >> (_wgslsmith_mod_u32(2708u, 38227u) % 32u)), func_3(_wgslsmith_mult_i32(var_0, min(var_0, u_input.a.x)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, u_input.b), vec2<u32>(arg_0.a.x, u_input.b)), 31u)], 31420i, false), vec2<bool>(true, !(arg_0.b < -1216f))), ~arg_0.a.x);
    var var_2 = !var_1.b.c;
    return firstTrailingBit(var_1.a);
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    global0 = array<Struct_3, 31>();
    var var_0 = func_2(Struct_1(~(~vec3<u32>(u_input.b, 65867u, 4299u) << ((vec3<u32>(3627u, 1u, u_input.b) << (vec3<u32>(32456u, u_input.b, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(194f, -1294f) + -170f), _wgslsmith_f_op_f32(2034f * _wgslsmith_f_op_f32(round(1000f)))))));
    global0 = array<Struct_3, 31>();
    global0 = array<Struct_3, 31>();
    let var_1 = !vec4<bool>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x) <= u_input.a.x, (_wgslsmith_f_op_f32(trunc(-971f)) < -177f) & !arg_0.x, arg_0.x, true);
    return Struct_4(u_input.a.x, Struct_2(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 63378u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 39494u)) | select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 60432u, u_input.b), var_1.wyw), vec3<u32>(80889u, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 53030u), vec3<u32>(0u, u_input.b, u_input.b)))), ~min(func_3(615i, global0[_wgslsmith_index_u32(u_input.b, 31u)], -1i, false), ~vec2<u32>(u_input.b, u_input.b)), select(select(select(vec2<bool>(var_1.x, true), vec2<bool>(arg_0.x, arg_0.x), arg_0), vec2<bool>(var_1.x, arg_0.x), !vec2<bool>(false, arg_0.x)), !(!var_1.wz), ~1i == select(-33936i, -1i, var_1.x))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -990f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1105f)), _wgslsmith_f_op_f32(768f - _wgslsmith_f_op_f32(select(854f, -909f, false)))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(748f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(531f, -1324f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1654f)))))));
    let var_1 = 0u;
    let var_2 = Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(23882u, ~var_1, firstTrailingBit(u_input.b)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1, var_1) << (vec3<u32>(1u, 1u, 5259u) % vec3<u32>(32u)), vec3<u32>(23709u, 68462u, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(130f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2068f + _wgslsmith_f_op_f32(268f - 1600f))));
    var var_3 = func_1(vec2<bool>(true, true));
    var var_4 = _wgslsmith_f_op_f32(ceil(var_2.c));
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.b)), var_2.b, _wgslsmith_f_op_f32(max(-589f, 143f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.c, var_5.c, var_5.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.c, var_2.c, var_2.b))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-351f, var_2.b, var_5.c, 253f)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1272f, var_2.b, var_5.c, -878f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(933f, var_5.c, var_2.b, var_2.c), vec4<f32>(-695f, var_2.b, -1267f, 1000f), vec4<bool>(true, var_3.b.c.x, var_3.b.c.x, true))), !vec4<bool>(false, var_3.b.c.x, false, true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-562f, var_2.b, -405f, var_2.b), vec4<f32>(var_2.c, -1397f, 1000f, var_2.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.c, -1081f, 312f, 2004f) - vec4<f32>(var_2.c, var_5.c, var_5.c, 776f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-894f, -146f, -1248f, var_5.c)))));
}

