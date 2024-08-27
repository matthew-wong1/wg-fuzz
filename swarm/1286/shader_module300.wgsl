struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<u32, 2> = array<u32, 2>(3383u, 51980u);

var<private> global3: array<vec4<f32>, 8>;

var<private> global4: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec4<i32>(0i, -28719i, 5152i, 9205i), Struct_1(-760f, vec3<bool>(false, false, false), 248f, vec2<i32>(-7354i, -1i)), vec3<u32>(85614u, 8597u, 0u)), Struct_2(vec4<i32>(39330i, i32(-2147483648), 4475i, 2147483647i), Struct_1(162f, vec3<bool>(true, true, false), -1000f, vec2<i32>(-1i, -1i)), vec3<u32>(0u, 0u, 4294967295u)), Struct_2(vec4<i32>(33054i, 17089i, -1i, 2362i), Struct_1(1016f, vec3<bool>(true, true, true), -320f, vec2<i32>(-31210i, 21021i)), vec3<u32>(1u, 11566u, 20670u)), Struct_2(vec4<i32>(12447i, 2147483647i, -11742i, 1i), Struct_1(780f, vec3<bool>(false, false, true), 864f, vec2<i32>(-1i, -12011i)), vec3<u32>(4294967295u, 1u, 51980u)), Struct_2(vec4<i32>(-18759i, 2147483647i, 69347i, 16822i), Struct_1(1000f, vec3<bool>(false, false, false), 617f, vec2<i32>(-51907i, 87189i)), vec3<u32>(0u, 4294967295u, 4499u)), Struct_2(vec4<i32>(-15624i, 33357i, -1i, -1i), Struct_1(687f, vec3<bool>(false, true, true), 1405f, vec2<i32>(-7773i, 8952i)), vec3<u32>(14365u, 79151u, 34096u)), Struct_2(vec4<i32>(1i, -9915i, -1i, 2147483647i), Struct_1(-1000f, vec3<bool>(false, true, false), 287f, vec2<i32>(i32(-2147483648), 0i)), vec3<u32>(26127u, 1u, 0u)), Struct_2(vec4<i32>(-1i, 1i, 1i, 1i), Struct_1(1000f, vec3<bool>(false, false, true), 138f, vec2<i32>(452i, i32(-2147483648))), vec3<u32>(29133u, 14409u, 54044u)), Struct_2(vec4<i32>(22833i, 2147483647i, -42459i, -1i), Struct_1(1354f, vec3<bool>(true, false, false), -1533f, vec2<i32>(-33803i, 62145i)), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_2(vec4<i32>(i32(-2147483648), 0i, -31759i, i32(-2147483648)), Struct_1(-1000f, vec3<bool>(false, true, true), 105f, vec2<i32>(2147483647i, -1i)), vec3<u32>(0u, 5972u, 1u)), Struct_2(vec4<i32>(-26396i, -7116i, -30448i, 0i), Struct_1(1000f, vec3<bool>(true, true, true), -1517f, vec2<i32>(1i, -14172i)), vec3<u32>(4004u, 0u, 37731u)), Struct_2(vec4<i32>(1i, -33909i, -10140i, -13365i), Struct_1(1000f, vec3<bool>(true, true, false), -310f, vec2<i32>(-5202i, -48466i)), vec3<u32>(4294967295u, 1u, 28519u)), Struct_2(vec4<i32>(1i, 62080i, 29301i, 3187i), Struct_1(-963f, vec3<bool>(false, true, false), -1646f, vec2<i32>(2147483647i, 1i)), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_2(vec4<i32>(i32(-2147483648), 43598i, 25392i, -1i), Struct_1(-1397f, vec3<bool>(true, true, true), -156f, vec2<i32>(-3951i, 2147483647i)), vec3<u32>(1u, 9667u, 4294967295u)), Struct_2(vec4<i32>(0i, 41293i, 12549i, 14188i), Struct_1(108f, vec3<bool>(false, false, false), 1992f, vec2<i32>(23912i, 40672i)), vec3<u32>(0u, 65405u, 19790u)), Struct_2(vec4<i32>(-1i, 23571i, i32(-2147483648), -1i), Struct_1(565f, vec3<bool>(false, false, true), 1000f, vec2<i32>(2147483647i, i32(-2147483648))), vec3<u32>(4294967295u, 110115u, 23480u)), Struct_2(vec4<i32>(19123i, i32(-2147483648), 1i, -1i), Struct_1(185f, vec3<bool>(false, false, true), 267f, vec2<i32>(-1i, -11333i)), vec3<u32>(27044u, 59859u, 0u)), Struct_2(vec4<i32>(i32(-2147483648), -49848i, 8478i, i32(-2147483648)), Struct_1(1563f, vec3<bool>(false, false, true), 1000f, vec2<i32>(-5065i, -1i)), vec3<u32>(47102u, 1u, 453u)), Struct_2(vec4<i32>(-1i, 2147483647i, 21832i, i32(-2147483648)), Struct_1(282f, vec3<bool>(false, false, true), 352f, vec2<i32>(24059i, -72418i)), vec3<u32>(32364u, 8460u, 45144u)), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), -10477i, 2147483647i), Struct_1(456f, vec3<bool>(false, false, true), -1774f, vec2<i32>(2147483647i, 33481i)), vec3<u32>(4294967295u, 840u, 0u)), Struct_2(vec4<i32>(1i, 2147483647i, i32(-2147483648), 7151i), Struct_1(1881f, vec3<bool>(true, false, true), 1157f, vec2<i32>(2147483647i, -33429i)), vec3<u32>(64832u, 53447u, 8605u)), Struct_2(vec4<i32>(-46370i, 0i, i32(-2147483648), 15099i), Struct_1(-428f, vec3<bool>(true, false, true), -1101f, vec2<i32>(2147483647i, i32(-2147483648))), vec3<u32>(75843u, 10335u, 31104u)), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -2422i), Struct_1(-1000f, vec3<bool>(false, true, false), 117f, vec2<i32>(17213i, -38579i)), vec3<u32>(16742u, 4294967295u, 100663u)), Struct_2(vec4<i32>(-24640i, i32(-2147483648), 43303i, -22529i), Struct_1(-529f, vec3<bool>(true, false, true), 808f, vec2<i32>(-34479i, -14168i)), vec3<u32>(4294967295u, 4294967295u, 74963u)), Struct_2(vec4<i32>(-12208i, -43718i, -20720i, 28548i), Struct_1(-1000f, vec3<bool>(true, false, true), -1499f, vec2<i32>(-37926i, 53066i)), vec3<u32>(55200u, 1u, 31967u)), Struct_2(vec4<i32>(20376i, -3066i, -3647i, -38706i), Struct_1(-1870f, vec3<bool>(false, true, false), -1148f, vec2<i32>(i32(-2147483648), i32(-2147483648))), vec3<u32>(85030u, 53538u, 43895u)), Struct_2(vec4<i32>(-31362i, 7199i, 7527i, 1i), Struct_1(-809f, vec3<bool>(false, false, true), 1046f, vec2<i32>(i32(-2147483648), 88377i)), vec3<u32>(35356u, 4294967295u, 64065u)), Struct_2(vec4<i32>(-1i, i32(-2147483648), 2147483647i, 0i), Struct_1(-533f, vec3<bool>(true, true, true), -906f, vec2<i32>(i32(-2147483648), i32(-2147483648))), vec3<u32>(1u, 28485u, 70676u)), Struct_2(vec4<i32>(i32(-2147483648), 19796i, 1641i, 45798i), Struct_1(-430f, vec3<bool>(false, false, false), 681f, vec2<i32>(1i, 34538i)), vec3<u32>(1u, 11064u, 0u)), Struct_2(vec4<i32>(i32(-2147483648), -29023i, -19496i, 0i), Struct_1(174f, vec3<bool>(false, true, false), 621f, vec2<i32>(2147483647i, 0i)), vec3<u32>(6604u, 1u, 4294967295u)), Struct_2(vec4<i32>(66505i, 2147483647i, 15630i, i32(-2147483648)), Struct_1(1052f, vec3<bool>(true, true, false), 1337f, vec2<i32>(-48395i, 1i)), vec3<u32>(4294967295u, 939u, 7969u)), Struct_2(vec4<i32>(25253i, 2147483647i, 2147483647i, 47282i), Struct_1(-933f, vec3<bool>(true, true, true), -1006f, vec2<i32>(36561i, 20200i)), vec3<u32>(3842u, 4294967295u, 1u)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1244f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(floor(arg_0.c.b.c)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b.a)))), select(global1.b, !(!(!vec3<bool>(arg_0.a.b.x, true, global1.b.x))), any(vec3<bool>(!global1.b.x, global1.b.x, any(vec4<bool>(true, true, false, global1.b.x))))), arg_0.a.c, vec2<i32>((abs(arg_0.c.a.x) ^ _wgslsmith_div_i32(-11375i, 1i)) ^ arg_0.a.d.x, _wgslsmith_add_i32(-15999i, max(~(-15274i), u_input.a.x))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-538f, -672f, global1.a)), vec3<f32>(117f, global1.c, global1.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.b.c, 1669f, global1.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-377f, global1.c, arg_0.c.b.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-350f, -422f, -232f) - vec3<f32>(1909f, 576f, -1085f)), true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-335f, global1.a, 223f) * vec3<f32>(-1198f, 143f, arg_0.a.c))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(799f, 440f, 196f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(917f, arg_0.a.c, 392f)), global1.b)))));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(abs(~arg_0.x), 32u)];
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x, var_0.c.x, 1u), 32u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_1(730f, var_0.b.b, _wgslsmith_f_op_f32(step(global1.c, var_0.b.c)), vec2<i32>(-1i, var_0.a.x)), vec2<u32>(1u, ~16381u), Struct_2(vec4<i32>(1i, var_0.a.x, 1i, -17759i), var_0.b, _wgslsmith_clamp_vec3_u32(var_0.c, arg_0, vec3<u32>(u_input.b, u_input.b, 0u)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.b.c, 147f) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.c, var_0.b.c, var_1.b.a), vec3<f32>(var_1.b.a, var_1.b.a, -842f))))));
    let var_3 = min(~(arg_0.x >> (var_0.c.x % 32u)) & ~var_1.c.x, 4294967295u);
    var var_4 = vec3<i32>(-global1.d.x | firstLeadingBit(abs(i32(-1i) * -1i)), -2147483647i, 12231i);
    return _wgslsmith_mult_u32(abs(4294967295u), ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(var_1.c, vec3<u32>(u_input.b, var_1.c.x, 1u)), var_3));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = Struct_4(select(u_input.a.x, -16815i, arg_0), ~vec2<u32>(~global2[_wgslsmith_index_u32(1u, 2u)] ^ func_2(vec3<u32>(u_input.b, 0u, 1u)), firstTrailingBit(global2[_wgslsmith_index_u32(~1052u, 2u)])), u_input.a.x);
    var_0 = Struct_4(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a ^ u_input.a, _wgslsmith_mod_vec3_i32(u_input.a, -vec3<i32>(u_input.a.x, 45749i, u_input.a.x))), u_input.a.x), max(~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.x, var_0.b.x), vec2<u32>(0u, 0u)), ~vec2<u32>(12562u, var_0.b.x)), ~(~reverseBits(vec2<u32>(28744u, u_input.b)))), abs(-2147483647i));
    let var_1 = arg_0;
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1344f))), !vec3<bool>(any(vec2<bool>(global1.b.x, arg_0)), false, -2147483647i < _wgslsmith_div_i32(global1.d.x, -5761i)), global1.a, u_input.a.yy);
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.c)) - global1.c)), select(vec3<bool>(var_1, true, false), !global1.b, global1.b.x), _wgslsmith_div_f32(191f, _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a, global1.a)) * -176f))), -(~_wgslsmith_mult_vec2_i32(vec2<i32>(global1.d.x, u_input.a.x) >> (var_0.b % vec2<u32>(32u)), u_input.a.yy)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c, _wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1.a)))))), _wgslsmith_div_i32(-2147483647i, global1.d.x) <= ~(-global1.d.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_div_i32(global1.d.x, abs(global1.d.x)), vec2<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.b, 2u)], 4294967295u)), 2u)], 4294967295u), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, arg_1.d.x), _wgslsmith_add_i32(global1.d.x << (20054u % 32u), -31939i)), vec2<i32>(global1.d.x, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mod_i32(66885i, arg_1.d.x)))));
    global2 = array<u32, 2>();
    var var_1 = vec3<u32>(u_input.b, 23040u, 0u << (~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 2u)], 2u)], 17408u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.b.x, 2u)], 2u)]), vec3<u32>(global2[_wgslsmith_index_u32(0u, 2u)], 4294967295u, 3186u)), 2u)] % 32u)) & select((firstLeadingBit(vec3<u32>(21904u, var_0.b.x, 0u)) << (vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(u_input.b, 2u)], 2956u) % vec3<u32>(32u))) >> (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 30242u, var_0.b.x, 96376u), vec4<u32>(23618u, 1u, 44014u, u_input.b)), 2u)], 2u)], 1u, max(54388u, global2[_wgslsmith_index_u32(u_input.b, 2u)])) % vec3<u32>(32u)), ~(~(vec3<u32>(0u, 59708u, 0u) << (vec3<u32>(u_input.b, 0u, 37568u) % vec3<u32>(32u)))), global1.b.x);
    global4 = array<Struct_2, 32>();
    global1 = arg_1;
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    var var_0 = vec3<bool>(all(select(select(vec3<bool>(false, global1.b.x, arg_0.a.b.x), select(vec3<bool>(arg_0.c.b.b.x, arg_1.b.x, arg_0.c.b.b.x), vec3<bool>(global1.b.x, false, false), arg_0.a.b), !vec3<bool>(arg_0.c.b.b.x, arg_1.b.x, true)), !arg_1.b, func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(877f, global1.a, -731f), vec3<f32>(arg_0.a.c, arg_1.c, arg_0.c.b.a), global1.b.x)), arg_1, _wgslsmith_f_op_f32(-1346f * global1.a)).b)), true, global1.b.x);
    global2 = array<u32, 2>();
    let var_1 = Struct_3(Struct_1(arg_0.c.b.c, vec3<bool>(any(!var_0.zy), true, arg_0.c.b.b.x), _wgslsmith_f_op_f32(step(arg_1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c))))), u_input.a.xx), _wgslsmith_add_vec2_u32(firstLeadingBit(~arg_0.b), vec2<u32>(33216u, countOneBits(26673u))), Struct_2(vec4<i32>(select(min(u_input.a.x, -10432i), 1i, arg_0.c.b.b.x), _wgslsmith_clamp_i32(global1.d.x & 0i, abs(arg_0.a.d.x), u_input.a.x), max(_wgslsmith_add_i32(arg_1.d.x, u_input.a.x), ~arg_0.a.d.x), 1i), Struct_1(-144f, arg_0.c.b.b, 2246f, vec2<i32>(_wgslsmith_sub_i32(3780i, 0i), i32(-1i) * -20442i)), max(arg_0.c.c, firstTrailingBit(arg_0.c.c)) ^ ~firstLeadingBit(vec3<u32>(u_input.b, 43939u, 0u))));
    let var_2 = u_input.a.zz;
    global2 = array<u32, 2>();
    return Struct_3(func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-375f, -187f, -1491f) - vec3<f32>(1000f, arg_1.c, arg_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2007f, -792f, global1.a), vec3<f32>(687f, var_1.c.b.a, arg_0.a.c)))))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.a, -1408f, arg_1.c), vec3<f32>(arg_0.a.a, arg_0.a.a, 289f))), Struct_1(_wgslsmith_f_op_f32(min(-1000f, global1.c)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-1083f - 153f), u_input.a.xx), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0.c.b.a))))), -221f), abs(~abs(arg_0.c.c.xy)), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, -970f, global1.a)) + vec3<f32>(477f, global1.a, -659f)), Struct_1(_wgslsmith_f_op_f32(func_1(global1.b.x)), !vec3<bool>(global1.b.x, false, false), _wgslsmith_f_op_f32(max(1853f, 261f)), vec2<i32>(-27016i, 16362i) ^ global1.d), global1.c), vec2<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.b, 2u)], global2[_wgslsmith_index_u32(~u_input.b, 2u)]), select(global2[_wgslsmith_index_u32(1u, 2u)], 1u & u_input.b, true)), Struct_2(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), global1.d.x, global1.d.x & 1i, global1.d.x), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2011f, global1.c, 978f)), func_4(vec3<f32>(global1.a, global1.c, global1.c), Struct_1(1030f, global1.b, 1342f, global1.d), 1183f), -181f), ~firstTrailingBit(vec3<u32>(4294967295u, 31822u, u_input.b)))), Struct_1(global1.a, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(378f + global1.c) + _wgslsmith_f_op_f32(func_1(true)))), ~vec2<i32>(global1.d.x | 16574i, _wgslsmith_sub_i32(u_input.a.x, -59562i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(func_1(var_0.c.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -430f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-151f, -718f, var_0.c.b.c)))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.b.c, -153f) + _wgslsmith_f_op_f32(-var_0.c.b.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.b.a))) * 938f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c * global1.c) - _wgslsmith_div_f32(global1.c, -273f))))));
    var var_2 = Struct_2(abs(_wgslsmith_mult_vec4_i32(~firstTrailingBit(vec4<i32>(var_0.a.d.x, -2147483647i, u_input.a.x, -51046i)), firstLeadingBit(vec4<i32>(1i, global1.d.x, -29774i, u_input.a.x)) << ((vec4<u32>(53158u, 0u, 49341u, u_input.b) << (vec4<u32>(var_0.c.c.x, 32001u, 0u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-891f, 154f, global1.c) + vec3<f32>(-3031f, var_0.c.b.c, -1050f)))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, global1.c, -1928f))), Struct_1(_wgslsmith_f_op_f32(-var_0.c.b.c), global1.b, -1000f, -global1.d), _wgslsmith_f_op_f32(-func_5(var_0, var_0.a).a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c)))), ~(~_wgslsmith_clamp_vec3_u32(var_0.c.c >> (var_0.c.c % vec3<u32>(32u)), max(vec3<u32>(global2[_wgslsmith_index_u32(var_0.c.c.x, 2u)], global2[_wgslsmith_index_u32(var_0.c.c.x, 2u)], u_input.b), var_0.c.c), var_0.c.c)));
    var var_3 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a.x, i32(-1i) * -80712i, 39927i), ~abs(-global1.d.x), abs(global1.d.x));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-421f, 756f, var_0.a.a));
    let var_4 = var_0.c.b.b;
    var var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(25561i);
}

