struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(i32(-2147483648), 2147483647i, -10961i, i32(-2147483648), -1i, 1i, -28278i, -175i, 2147483647i, 1i, -36707i, -1873i, 69552i, 2147483647i, 50519i, 1i, -10764i, -75021i, 1i, 2147483647i, -1i, -8115i, 16143i, -1i, i32(-2147483648), i32(-2147483648), 25741i, -1i, 47392i, -1i, -1i, i32(-2147483648));

var<private> global1: array<vec4<f32>, 20>;

var<private> global2: f32;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<f32>(1000f, 122f), -1278f, vec4<u32>(13924u, 1u, 35610u, 81634u), vec4<bool>(false, false, true, false), 1u), Struct_1(vec2<f32>(2343f, 916f), 1714f, vec4<u32>(4294967295u, 0u, 69856u, 37981u), vec4<bool>(false, true, false, true), 4294967295u), Struct_1(vec2<f32>(370f, -698f), 327f, vec4<u32>(28905u, 36731u, 4294967295u, 80021u), vec4<bool>(false, true, false, false), 4422u), Struct_1(vec2<f32>(935f, -608f), 207f, vec4<u32>(1u, 9394u, 25518u, 4294967295u), vec4<bool>(true, true, false, true), 75563u), Struct_1(vec2<f32>(-367f, 1136f), -1122f, vec4<u32>(0u, 0u, 40194u, 30702u), vec4<bool>(false, false, false, true), 0u), Struct_1(vec2<f32>(157f, -2704f), 1000f, vec4<u32>(4294967295u, 15520u, 70783u, 56034u), vec4<bool>(true, false, false, false), 1u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_4(vec3<i32>(abs(12229i << (0u % 32u)), firstTrailingBit(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec3<u32>(41291u, 10065u, 1u)), 32u)]), ~(-min(1i, global0[_wgslsmith_index_u32(4294967295u, 32u)]))), global3[_wgslsmith_index_u32(29266u, 6u)], Struct_3(Struct_2(global3[_wgslsmith_index_u32(arg_0.x, 6u)], ~select(4294967295u, u_input.a, true), global3[_wgslsmith_index_u32(max(_wgslsmith_div_u32(arg_0.x, 1u), 40723u), 6u)], _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-831f, -765f, 107f, 1151f))), global3[_wgslsmith_index_u32(~u_input.a, 6u)]), Struct_2(global3[_wgslsmith_index_u32(u_input.a & (arg_0.x & u_input.a), 6u)], ~1u | u_input.a, global3[_wgslsmith_index_u32(0u, 6u)], vec4<f32>(_wgslsmith_f_op_f32(sign(-2082f)), 1000f, _wgslsmith_div_f32(487f, 1202f), _wgslsmith_div_f32(444f, 622f)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(574f, -699f), vec2<f32>(308f, 191f)), _wgslsmith_f_op_f32(-535f + 1748f), vec4<u32>(arg_0.x, 4294967295u, 17472u, 46534u) << (vec4<u32>(arg_0.x, 1u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<bool>(true, true, true, true), 4294967295u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1122f * -488f), -1000f, -543f, _wgslsmith_f_op_f32(sign(438f))))), Struct_2(global3[_wgslsmith_index_u32(4294967295u, 6u)], 120516u, global3[_wgslsmith_index_u32(~u_input.a, 6u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-2868f, 143f), 586f, _wgslsmith_f_op_f32(-273f + 842f), _wgslsmith_f_op_f32(floor(-557f)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(134f, 606f), vec2<f32>(-164f, 2141f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(171f, -721f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(195f * -220f), _wgslsmith_f_op_f32(trunc(-1734f)))), ~vec4<u32>(75758u, arg_0.x, u_input.b.x, arg_0.x) & _wgslsmith_mod_vec4_u32(vec4<u32>(10901u, 33018u, arg_0.x, u_input.b.x), vec4<u32>(8168u, u_input.b.x, 0u, 1u)), vec4<bool>(false, true, any(vec2<bool>(true, false)), true), 34956u)));
    let var_1 = var_0.a;
    var var_2 = 0u;
    var_2 = 24073u;
    var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.e, var_0.b.e, 83249u), vec3<u32>(0u, 53619u, u_input.a)), u_input.b.x, _wgslsmith_dot_vec2_u32(var_0.d.a.c.xy, vec2<u32>(1u, 13007u)), arg_0.x | 4294967295u) ^ ~select(var_0.c.b.a.c, vec4<u32>(94418u, 1u, 84853u, 35498u), var_0.c.a.c.d), ~_wgslsmith_add_vec4_u32(var_0.b.c, var_0.c.a.e.c)), firstLeadingBit(select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.b.b, var_0.b.c.x, arg_0.x), vec3<u32>(var_0.b.e, 55941u, u_input.a)), arg_0.x & 0u, any(var_0.b.d.ww))) & _wgslsmith_div_u32(~11396u, ~u_input.a));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.d.x)) - 340f), var_0.d.e.b));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_2(Struct_1(vec2<f32>(1002f, _wgslsmith_f_op_f32(step(305f, -158f))), _wgslsmith_f_op_f32(395f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -2245f), 1010f)), ~vec4<u32>(0u >> (0u % 32u), u_input.a << (u_input.a % 32u), ~u_input.a, _wgslsmith_add_u32(1u, u_input.b.x)), select(!(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(true, arg_0, false, false), vec4<bool>(arg_0, true, true, true)), arg_0), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), ~_wgslsmith_add_u32(u_input.a, ~4294967295u), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -698f), -385f)), _wgslsmith_f_op_f32(func_3(u_input.b >> (select(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), true) % vec2<u32>(32u)))), vec4<u32>(reverseBits(u_input.a) & ~u_input.a, u_input.b.x ^ ~1u, firstLeadingBit(u_input.b.x), u_input.a), vec4<bool>(true, true, any(vec2<bool>(false, false)) & false, arg_0), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.a, 20u)] * global1[_wgslsmith_index_u32(u_input.b.x, 20u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-688f, 165f, -2952f, -662f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.b.x, 20u)] + global1[_wgslsmith_index_u32(4294967295u, 20u)]))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global1[_wgslsmith_index_u32(23239u, 20u)])), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1404f, 902f, 105f, -2407f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(775f, 1356f, -478f, -389f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(289f, -557f, -428f, -1145f) - global1[_wgslsmith_index_u32(u_input.a, 20u)])))), global3[_wgslsmith_index_u32(~min(u_input.a ^ ~1u, _wgslsmith_mod_u32(firstTrailingBit(u_input.a), 13790u)), 6u)]);
    var var_1 = Struct_3(var_0, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1565f, -492f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(744f, -230f)), false)), _wgslsmith_f_op_f32(-var_0.d.x), ~_wgslsmith_mod_vec4_u32(var_0.e.c, var_0.e.c), var_0.c.d, 4294967295u), _wgslsmith_div_u32(var_0.e.c.x, ~var_0.c.c.x), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-951f, -1657f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + 564f)), ~_wgslsmith_div_vec4_u32(vec4<u32>(1190u, 38941u, u_input.b.x, 34640u), var_0.a.c), !(!var_0.c.d), u_input.b.x), global1[_wgslsmith_index_u32(35333u, 20u)], Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(361f))), _wgslsmith_f_op_f32(f32(-1f) * -264f), select(var_0.a.c, _wgslsmith_sub_vec4_u32(vec4<u32>(17144u, 2059u, 40720u, u_input.a), vec4<u32>(187u, 1u, var_0.a.e, 84935u)), !arg_0), vec4<bool>(692f != var_0.e.b, var_0.a.d.x & false, any(var_0.e.d), var_0.e.c.x > var_0.b), ~_wgslsmith_div_u32(var_0.c.c.x, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.b, var_0.a.b, -1095f, var_0.a.a.x), vec4<f32>(-555f, var_0.e.a.x, 463f, var_0.d.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.x, 1451f, -131f, var_0.e.a.x) * vec4<f32>(735f, 967f, var_0.a.b, var_0.a.b)))));
    var var_2 = !vec3<bool>(true || arg_0, 451f != var_0.a.b, any(vec4<bool>(var_0.e.d.x, var_1.b.a.d.x && var_1.b.c.d.x, all(var_1.b.a.d.ywz), false)));
    let var_3 = Struct_3(var_1.b, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, -439f)))), _wgslsmith_f_op_f32(var_1.a.a.a.x - _wgslsmith_f_op_f32(211f + var_1.a.c.a.x)), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(0u, var_1.b.a.c.x, var_0.c.c.x, 1u)), var_0.e.c), vec4<bool>(!arg_0, true, any(vec3<bool>(var_0.a.d.x, arg_0, arg_0)), true), _wgslsmith_mod_u32(~var_1.a.e.e, ~u_input.a)), ~1u, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b, -485f)), var_1.a.c.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a.x, var_0.c.b) * var_0.d.x), vec4<u32>(9305u, var_1.a.c.c.x, _wgslsmith_add_u32(0u, 0u), _wgslsmith_sub_u32(var_0.a.e, var_0.b)), vec4<bool>(true, false, var_1.b.e.d.x, !var_2.x), u_input.b.x >> (u_input.b.x % 32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_1.c)), vec4<f32>(_wgslsmith_div_f32(var_0.c.b, 180f), -632f, _wgslsmith_f_op_f32(-1068f + var_1.b.a.a.x), _wgslsmith_f_op_f32(max(var_0.c.a.x, var_1.c.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.b.e.a))), var_0.e.b, ~var_0.a.c, vec4<bool>(var_0.a.d.x, all(vec3<bool>(var_0.a.d.x, arg_0, false)), true, arg_0), 43325u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_0.c.b)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.e.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1431f * -543f) + _wgslsmith_f_op_f32(max(var_0.e.b, -130f))))), _wgslsmith_div_f32(var_0.e.b, 560f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b))))));
    global3 = array<Struct_1, 6>();
    return _wgslsmith_f_op_f32(trunc(-1027f));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<bool> {
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(!arg_0.d.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1944f - -297f) * -1693f)) - _wgslsmith_f_op_f32(f32(-1f) * -1800f)), arg_1.x);
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-881f * arg_0.b));
    var var_2 = Struct_4(vec3<i32>(-13946i, i32(-1i) * -(global0[_wgslsmith_index_u32(arg_0.e, 32u)] & global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), -27225i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(358f, -257f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(sign(2462f)))), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), arg_0.c, vec4<bool>(select(all(vec4<bool>(true, true, arg_0.d.x, arg_0.d.x)), true, any(arg_0.d.ww)), arg_0.d.x, true, !(arg_0.d.x && arg_0.d.x)), u_input.b.x | 0u), Struct_3(Struct_2(global3[_wgslsmith_index_u32(firstTrailingBit(1u) >> ((8865u & arg_0.e) % 32u), 6u)], max(arg_0.c.x, 4294967295u), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_0.a.x)), _wgslsmith_f_op_f32(select(2259f, -1076f, arg_0.d.x)), ~arg_0.c, vec4<bool>(arg_0.d.x, false, true, false), 1u), vec4<f32>(349f, _wgslsmith_div_f32(arg_0.b, arg_0.b), 440f, 288f), arg_0), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.wz), _wgslsmith_f_op_f32(-arg_0.b), vec4<u32>(1u, 15205u, arg_0.c.x, 0u), vec4<bool>(arg_0.d.x, false, true, arg_0.d.x), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(55528u, arg_0.c.x))), 41876u, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-945f, arg_0.a.x) * vec2<f32>(arg_1.x, arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1759f), select(arg_0.c, arg_0.c, true), !vec4<bool>(false, false, true, arg_0.d.x), u_input.a), arg_1, arg_0), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(86621u, u_input.a), 20u)]), Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~arg_0.c.x), _wgslsmith_sub_u32(arg_0.e | arg_0.c.x, max(u_input.a, 4294967295u))), 6u)], u_input.b.x, arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -1000f, 824f, -1658f) + vec4<f32>(arg_0.b, -472f, arg_1.x, -1194f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_0.b) - arg_0.a)), -1460f, arg_0.c, vec4<bool>(arg_0.a.x <= arg_0.a.x, select(false, true, false), arg_0.d.x, false), _wgslsmith_sub_u32(arg_0.c.x << (0u % 32u), arg_0.c.x))));
    let var_3 = Struct_3(var_2.d, var_2.c.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 777f, arg_0.b, 536f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1313f, arg_1.x, arg_1.x, 1000f), global1[_wgslsmith_index_u32(20215u, 20u)]))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.a.c.b), _wgslsmith_f_op_f32(step(arg_0.a.x, arg_1.x)), -451f, _wgslsmith_div_f32(arg_1.x, -293f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(232f, var_2.b.b, var_2.d.d.x, -1000f) + var_2.c.c) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.a.x, 2133f, -225f, 256f))))));
    return var_2.b.d.zwx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(!func_1(global3[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_f_op_vec4_f32(min(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)]))));
    var var_1 = vec4<bool>(true, true, true, true);
    var_1 = vec4<bool>(all(select(select(vec4<bool>(true, var_0, var_1.x, false), vec4<bool>(true, var_1.x, true, var_0), all(vec4<bool>(true, var_1.x, var_1.x, var_0))), vec4<bool>(!var_0, !var_1.x, false, true), vec4<bool>(true, true, true, true))), !(firstTrailingBit(global0[_wgslsmith_index_u32(~4294967295u, 32u)]) >= _wgslsmith_dot_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(1u, 32u)], 2098i, -42072i), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -80153i, 2147483647i), vec3<i32>(-3317i, -1i, global0[_wgslsmith_index_u32(43608u, 32u)])))), var_1.x, !var_1.x);
    let var_2 = var_1.x;
    var var_3 = Struct_4(_wgslsmith_add_vec3_i32(min(vec3<i32>(_wgslsmith_add_i32(50939i, global0[_wgslsmith_index_u32(0u, 32u)]), -11068i, global0[_wgslsmith_index_u32(countOneBits(u_input.a), 32u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(78813i, 0i, 2147483647i), vec3<i32>(-15644i, global0[_wgslsmith_index_u32(u_input.a, 32u)], 2478i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 32u)], 1i, global0[_wgslsmith_index_u32(36496u, 32u)]), vec3<i32>(0i, 31472i, global0[_wgslsmith_index_u32(31649u, 32u)]))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(12060u, 32u)], global0[_wgslsmith_index_u32(48170u, 32u)]), -vec3<i32>(0i, 21434i, 8046i), select(-vec3<i32>(-39541i, 0i, 12424i), vec3<i32>(-21300i, 1i, 2147483647i), select(var_1.zxz, var_1.zxw, vec3<bool>(true, var_1.x, var_0))))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-789f, 867f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1991f, 552f)), 49176i >= (-1i ^ global0[_wgslsmith_index_u32(56738u, 32u)]))), _wgslsmith_f_op_f32(func_2(var_1.x)), ~(~vec4<u32>(30516u, 4294967295u, u_input.b.x, u_input.a)), !(!select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(var_0, var_1.x, true, false), vec4<bool>(true, var_1.x, false, var_1.x))), u_input.b.x), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(685f, 427f) - vec2<f32>(971f, -533f)), _wgslsmith_f_op_f32(f32(-1f) * -1111f), firstTrailingBit(vec4<u32>(14419u, u_input.b.x, u_input.a, u_input.b.x)), vec4<bool>(false, var_0, true, false), ~u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(26885u, 4294967295u), abs(u_input.b)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(564u, u_input.a, true), 52557u, ~4294967295u), 6u)], global1[_wgslsmith_index_u32(~0u, 20u)], global3[_wgslsmith_index_u32(1u, 6u)]), Struct_2(global3[_wgslsmith_index_u32(~abs(1u), 6u)], 5177u, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-604f, -1143f)), _wgslsmith_f_op_f32(747f + 989f), vec4<u32>(16348u, u_input.a, u_input.b.x, 4294967295u), vec4<bool>(false, var_1.x, false, var_1.x), abs(56149u)), _wgslsmith_f_op_vec4_f32(trunc(global1[_wgslsmith_index_u32(u_input.b.x, 20u)])), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-769f, 735f)), _wgslsmith_f_op_f32(f32(-1f) * -710f), vec4<u32>(u_input.a, 8741u, 107330u, 55683u), !vec4<bool>(var_0, var_0, true, true), ~14325u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.a, 20u)])), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(0u >> (u_input.a % 32u), 20u)]))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -462f)) + vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 0u) << (vec4<u32>(0u, 0u, u_input.a, u_input.b.x) % vec4<u32>(32u))), !select(vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(false, true, false, false), true), (1u | u_input.a) & ~u_input.a), u_input.b.x, global3[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(u_input.b.x | (~u_input.b.x >> (_wgslsmith_mod_u32(u_input.a, 4744u) % 32u)), 20u)], global3[_wgslsmith_index_u32(~max(max(0u, 4294967295u), 1u), 6u)]));
    let var_4 = ~u_input.b.x;
    var var_5 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(-16122i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-236f)), _wgslsmith_f_op_f32(abs(-1421f))))), -1000f)), var_3.c.b.a.b, ~select(~vec2<u32>(var_3.c.a.b, var_4), ~select(u_input.b, vec2<u32>(0u, 1u), var_3.c.a.e.d.wx), var_3.c.a.c.d.x));
}

