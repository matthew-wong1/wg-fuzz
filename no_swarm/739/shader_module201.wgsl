struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
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

var<private> global0: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(vec2<f32>(-403f, -1885f), false, 1016f, Struct_3(Struct_2(vec2<u32>(25389u, 19781u), Struct_1(vec4<u32>(58343u, 63595u, 0u, 1u)), false, 47407u), Struct_2(vec2<u32>(1647u, 43994u), Struct_1(vec4<u32>(0u, 1u, 0u, 4294967295u)), false, 0u), vec4<u32>(0u, 1u, 74104u, 59693u), 1i)), Struct_4(vec2<f32>(-743f, 1123f), true, -292f, Struct_3(Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec4<u32>(0u, 1u, 6416u, 12310u)), false, 4294967295u), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec4<u32>(1u, 10022u, 20685u, 38813u)), true, 1u), vec4<u32>(83467u, 35133u, 40913u, 81957u), i32(-2147483648))), Struct_4(vec2<f32>(-1000f, 863f), true, 1450f, Struct_3(Struct_2(vec2<u32>(0u, 1u), Struct_1(vec4<u32>(29220u, 4294967295u, 15845u, 29805u)), false, 4294967295u), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec4<u32>(23122u, 1u, 83322u, 0u)), true, 45068u), vec4<u32>(56886u, 1u, 34913u, 1u), -1i)), Struct_4(vec2<f32>(2817f, 133f), true, -971f, Struct_3(Struct_2(vec2<u32>(102845u, 2823u), Struct_1(vec4<u32>(0u, 1u, 53076u, 0u)), true, 13169u), Struct_2(vec2<u32>(4294967295u, 31213u), Struct_1(vec4<u32>(1u, 1u, 0u, 24030u)), true, 37743u), vec4<u32>(9330u, 21148u, 0u, 1u), 2147483647i)), Struct_4(vec2<f32>(390f, -2714f), true, 446f, Struct_3(Struct_2(vec2<u32>(4294967295u, 72912u), Struct_1(vec4<u32>(0u, 85758u, 1u, 71135u)), false, 0u), Struct_2(vec2<u32>(1u, 0u), Struct_1(vec4<u32>(70523u, 0u, 5467u, 0u)), true, 4294967295u), vec4<u32>(5827u, 0u, 22208u, 42056u), i32(-2147483648))), Struct_4(vec2<f32>(-1000f, 697f), true, 827f, Struct_3(Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(vec4<u32>(14382u, 0u, 1u, 0u)), false, 1u), Struct_2(vec2<u32>(4294967295u, 4627u), Struct_1(vec4<u32>(0u, 15249u, 0u, 4294967295u)), false, 0u), vec4<u32>(1u, 15724u, 0u, 0u), -1i)), Struct_4(vec2<f32>(-411f, -906f), true, -230f, Struct_3(Struct_2(vec2<u32>(4294967295u, 58090u), Struct_1(vec4<u32>(11907u, 4294967295u, 17713u, 0u)), false, 17530u), Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(vec4<u32>(25086u, 28672u, 66586u, 4294967295u)), false, 52900u), vec4<u32>(1u, 4294967295u, 28105u, 25309u), -43536i)), Struct_4(vec2<f32>(-289f, -336f), true, -951f, Struct_3(Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(vec4<u32>(53238u, 27085u, 6971u, 35597u)), true, 4294967295u), Struct_2(vec2<u32>(1u, 0u), Struct_1(vec4<u32>(29145u, 4294967295u, 39876u, 9156u)), true, 15869u), vec4<u32>(4294967295u, 0u, 39604u, 52797u), 2147483647i)), Struct_4(vec2<f32>(938f, 1000f), false, -230f, Struct_3(Struct_2(vec2<u32>(23969u, 0u), Struct_1(vec4<u32>(0u, 0u, 1u, 48767u)), false, 43661u), Struct_2(vec2<u32>(0u, 7270u), Struct_1(vec4<u32>(75649u, 76440u, 1u, 65039u)), false, 4294967295u), vec4<u32>(40682u, 10177u, 1u, 31053u), 0i)), Struct_4(vec2<f32>(173f, 805f), false, 1024f, Struct_3(Struct_2(vec2<u32>(23405u, 4294967295u), Struct_1(vec4<u32>(38092u, 1u, 1u, 23749u)), true, 62594u), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec4<u32>(1u, 53472u, 0u, 0u)), false, 9321u), vec4<u32>(0u, 7791u, 8390u, 34897u), -35941i)), Struct_4(vec2<f32>(1767f, 107f), false, 160f, Struct_3(Struct_2(vec2<u32>(1u, 7567u), Struct_1(vec4<u32>(1u, 0u, 31953u, 0u)), true, 4294967295u), Struct_2(vec2<u32>(19097u, 4294967295u), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 42386u)), true, 9060u), vec4<u32>(4294967295u, 0u, 4294967295u, 19336u), 4888i)), Struct_4(vec2<f32>(-259f, 2007f), false, 471f, Struct_3(Struct_2(vec2<u32>(10003u, 12667u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 0u)), false, 237u), Struct_2(vec2<u32>(10648u, 90295u), Struct_1(vec4<u32>(0u, 13579u, 1u, 0u)), false, 70964u), vec4<u32>(0u, 40059u, 28554u, 67226u), 0i)), Struct_4(vec2<f32>(-163f, -1492f), true, -1238f, Struct_3(Struct_2(vec2<u32>(61865u, 48125u), Struct_1(vec4<u32>(4255u, 6955u, 39938u, 99280u)), false, 0u), Struct_2(vec2<u32>(0u, 1u), Struct_1(vec4<u32>(1u, 43803u, 25359u, 0u)), false, 18106u), vec4<u32>(33461u, 24784u, 0u, 51146u), 1i)), Struct_4(vec2<f32>(142f, 506f), false, 2342f, Struct_3(Struct_2(vec2<u32>(77586u, 0u), Struct_1(vec4<u32>(0u, 2115u, 4294967295u, 25192u)), false, 9147u), Struct_2(vec2<u32>(4858u, 22150u), Struct_1(vec4<u32>(11752u, 1u, 23805u, 1684u)), true, 4294967295u), vec4<u32>(4294967295u, 76557u, 4294967295u, 43067u), i32(-2147483648))), Struct_4(vec2<f32>(1706f, -123f), false, 1000f, Struct_3(Struct_2(vec2<u32>(4294967295u, 4234u), Struct_1(vec4<u32>(28848u, 56452u, 4294967295u, 27008u)), false, 24737u), Struct_2(vec2<u32>(0u, 0u), Struct_1(vec4<u32>(24116u, 45229u, 1u, 11341u)), true, 42764u), vec4<u32>(4294967295u, 43536u, 4294967295u, 21169u), i32(-2147483648))), Struct_4(vec2<f32>(606f, 1000f), false, 1824f, Struct_3(Struct_2(vec2<u32>(48142u, 74057u), Struct_1(vec4<u32>(21945u, 64257u, 69074u, 66694u)), true, 6675u), Struct_2(vec2<u32>(35578u, 65505u), Struct_1(vec4<u32>(23484u, 0u, 0u, 49792u)), true, 4294967295u), vec4<u32>(44014u, 10810u, 75676u, 1u), 17563i)), Struct_4(vec2<f32>(513f, 619f), false, 2057f, Struct_3(Struct_2(vec2<u32>(0u, 21729u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 72643u)), true, 46220u), Struct_2(vec2<u32>(4294967295u, 46996u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u)), false, 19223u), vec4<u32>(4294967295u, 10965u, 2267u, 1u), 1i)), Struct_4(vec2<f32>(1029f, -419f), false, 1095f, Struct_3(Struct_2(vec2<u32>(4294967295u, 21145u), Struct_1(vec4<u32>(115495u, 50699u, 699u, 40189u)), true, 15954u), Struct_2(vec2<u32>(0u, 0u), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), true, 32931u), vec4<u32>(37548u, 12557u, 34465u, 111898u), -6277i)), Struct_4(vec2<f32>(1264f, -805f), false, -498f, Struct_3(Struct_2(vec2<u32>(1u, 22739u), Struct_1(vec4<u32>(4294967295u, 1u, 10634u, 30563u)), false, 27639u), Struct_2(vec2<u32>(0u, 89647u), Struct_1(vec4<u32>(57238u, 4294967295u, 11100u, 0u)), false, 1u), vec4<u32>(4294967295u, 114015u, 1u, 45611u), i32(-2147483648))));

var<private> global1: array<vec2<u32>, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(select(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.b, 1u)), ~global1[_wgslsmith_index_u32(u_input.b, 20u)]), (vec2<u32>(4294967295u, 63716u) | vec2<u32>(u_input.a, 20578u)) & (vec2<u32>(u_input.b, 44129u) << (global1[_wgslsmith_index_u32(3926u, 20u)] % vec2<u32>(32u))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.b, 102240u, u_input.b), vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b)) ^ vec4<u32>(u_input.b, 47671u, u_input.a, 1u)), 16895i < u_input.c.x, _wgslsmith_div_u32(u_input.b & _wgslsmith_sub_u32(u_input.b, 8445u), ~countOneBits(u_input.b))), Struct_2(global1[_wgslsmith_index_u32(max(~u_input.a | 90045u, ~(~u_input.a)), 20u)], Struct_1(reverseBits(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(false, false, false))), ~(~(~80876u))), ~vec4<u32>(u_input.a, 5480u, ~(u_input.a >> (u_input.b % 32u)), 4294967295u), 22345i);
    global1 = array<vec2<u32>, 20>();
    var var_1 = !var_0.b.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-199f, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1632f, 736f), vec2<f32>(991f, -543f), select(vec2<bool>(true, true), vec2<bool>(var_0.a.c, var_0.a.c), var_0.b.c)))), !vec2<bool>(true, all(vec3<bool>(var_0.a.c, var_0.a.c, false))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1215f), _wgslsmith_f_op_f32(f32(-1f) * -1024f)))));
    return _wgslsmith_add_vec4_u32(var_0.c, vec4<u32>(53574u << (~var_0.a.d % 32u), ~var_0.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(8414u, 0u, 1u), vec3<u32>(1u, var_0.c.x, 0u)), ~(var_0.b.d >> (u_input.a % 32u)))) >> (~select(vec4<u32>(~33584u, firstTrailingBit(u_input.a), ~var_0.b.b.a.x, firstTrailingBit(66312u)), ~(~var_0.a.b.a), select(select(vec4<bool>(var_0.a.c, var_0.a.c, var_0.b.c, true), vec4<bool>(var_0.b.c, var_0.a.c, var_0.a.c, true), vec4<bool>(var_0.a.c, true, var_0.a.c, false)), select(vec4<bool>(false, var_0.a.c, var_0.b.c, false), vec4<bool>(var_0.a.c, true, var_0.b.c, var_0.b.c), true), vec4<bool>(var_0.a.c, true, var_0.a.c, true))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_u32(arg_1.d.a.b.a, countOneBits(_wgslsmith_mod_vec4_u32(arg_1.d.b.b.a, vec4<u32>(arg_1.d.c.x, arg_1.d.a.a.x, 16697u, arg_0.x))))));
    let var_1 = global0[_wgslsmith_index_u32(var_0.a.x, 19u)];
    var_0 = Struct_1(~func_3() >> (var_0.a % vec4<u32>(32u)));
    global1 = array<vec2<u32>, 20>();
    let var_2 = arg_1.d.a;
    return Struct_2(max(reverseBits(arg_1.d.c.yz), vec2<u32>(7869u, 1u)), var_1.d.a.b, !(~(u_input.a & 1u) < var_1.d.c.x), _wgslsmith_mod_u32(arg_1.d.a.d, _wgslsmith_dot_vec3_u32(vec3<u32>(~58591u, _wgslsmith_mult_u32(58289u, 16790u), var_0.a.x), var_0.a.zxw)));
}

fn func_1() -> vec2<f32> {
    global0 = array<Struct_4, 19>();
    var var_0 = func_2(vec2<u32>(~3427u, u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.a), _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, ~u_input.a), u_input.b, u_input.a)), 19u)]);
    let var_1 = func_2(~var_0.b.a.ww, Struct_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2073f, _wgslsmith_f_op_f32(ceil(-2423f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2493f, 246f)))), !all(select(vec2<bool>(false, var_0.c), vec2<bool>(false, false), var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, 305f)))), Struct_3(Struct_2(~global1[_wgslsmith_index_u32(var_0.a.x, 20u)], var_0.b, true, 15834u), Struct_2(_wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(u_input.a, 20u)], var_0.a), Struct_1(vec4<u32>(var_0.b.a.x, 0u, 4294967295u, 6559u)), var_0.c, 7780u), var_0.b.a, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), u_input.c.x))));
    var var_2 = countOneBits(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, var_0.b.a.x), 4294967295u), ~var_0.d, _wgslsmith_div_u32(var_0.d, ~(~var_0.d))));
    var_2 = var_1.b.a.yzz;
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(618f, 1000f), vec2<f32>(-277f, 1004f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1()))))), all(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), true)), _wgslsmith_f_op_f32(-2132f - 756f), Struct_3(func_2((vec2<u32>(0u, u_input.b) ^ global1[_wgslsmith_index_u32(u_input.b, 20u)]) ^ (global1[_wgslsmith_index_u32(52664u, 20u)] >> (global1[_wgslsmith_index_u32(1u, 20u)] % vec2<u32>(32u))), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-595f, -1866f)), true, _wgslsmith_f_op_f32(sign(937f)), Struct_3(Struct_2(global1[_wgslsmith_index_u32(37250u, 20u)], Struct_1(vec4<u32>(16045u, u_input.b, 68032u, u_input.a)), true, u_input.a), Struct_2(vec2<u32>(1u, u_input.b), Struct_1(vec4<u32>(u_input.b, 1u, u_input.a, 0u)), false, u_input.b), vec4<u32>(u_input.a, u_input.a, u_input.b, 49582u), 0i))), func_2(func_3().yy, global0[_wgslsmith_index_u32(~12949u, 19u)]), ~func_3(), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(~4294967295u)));
}

