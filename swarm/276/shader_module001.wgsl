struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(299f, 1619f, -323f), vec3<f32>(1221f, -322f, -721f), vec3<f32>(-1202f, -606f, -520f), vec3<f32>(1102f, 749f, 1257f), vec3<f32>(834f, -487f, 653f), vec3<f32>(1079f, 735f, -886f), vec3<f32>(1251f, 2667f, -667f), vec3<f32>(-280f, 2595f, 752f), vec3<f32>(1000f, -551f, 1654f), vec3<f32>(-1217f, -766f, -740f), vec3<f32>(-1216f, -518f, -800f), vec3<f32>(-1731f, -417f, 962f), vec3<f32>(121f, -685f, -208f), vec3<f32>(532f, -1439f, 1583f), vec3<f32>(-179f, -802f, 1872f), vec3<f32>(115f, 784f, 1000f), vec3<f32>(-434f, -497f, 361f), vec3<f32>(1614f, -730f, 882f), vec3<f32>(-1858f, 1000f, -1000f), vec3<f32>(-1160f, 678f, 296f), vec3<f32>(-1615f, -1050f, 649f));

var<private> global1: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(1329f, 944f, 943f, -528f), vec4<f32>(838f, -1460f, -513f, -302f), vec4<f32>(-565f, 485f, -756f, 1823f), vec4<f32>(1903f, -1328f, -529f, 1014f), vec4<f32>(1550f, -2096f, -299f, 768f), vec4<f32>(1946f, 1000f, -959f, 1363f), vec4<f32>(338f, 532f, 1673f, -994f), vec4<f32>(-1000f, 1593f, -485f, 690f), vec4<f32>(843f, -309f, -757f, -906f), vec4<f32>(2025f, 205f, 1583f, 248f), vec4<f32>(-339f, 1929f, 1038f, 208f), vec4<f32>(1536f, 1206f, -262f, 2964f), vec4<f32>(-1329f, 212f, -2006f, 699f), vec4<f32>(1618f, 278f, -1415f, 160f), vec4<f32>(-889f, -868f, 395f, -332f), vec4<f32>(996f, 737f, 172f, 1024f), vec4<f32>(-938f, 252f, -2289f, -1404f), vec4<f32>(-1060f, 533f, 208f, -1000f), vec4<f32>(1628f, 1059f, -1612f, 197f), vec4<f32>(425f, 468f, 301f, 247f));

var<private> global2: u32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<bool> {
    global2 = _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(~min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 37494u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u)), vec4<u32>(1u, 0u, u_input.a.x, 4294967295u)), firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u)))));
    global1 = array<vec4<f32>, 20>();
    let var_0 = -28979i;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1786f, -1991f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1235f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(749f)), _wgslsmith_div_f32(393f, -861f), _wgslsmith_f_op_f32(round(1260f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(642f, 883f, -928f)))), true));
    let var_2 = Struct_3(Struct_2(!(reverseBits(32804i) < _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0, 1635i), vec3<i32>(var_0, -1i, var_0))), Struct_1(select(vec4<i32>(var_0, 0i, var_0, 2147483647i), vec4<i32>(var_0, -1i, -2147483647i, var_0), vec4<bool>(false, false, false, false))), Struct_1(vec4<i32>(0i, 19118i, u_input.b, u_input.b) | (vec4<i32>(-2147483647i, var_0, u_input.b, var_0) << (vec4<u32>(u_input.a.x, 4294967295u, 38876u, u_input.a.x) % vec4<u32>(32u)))), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 37910i, -31059i, 2147483647i), vec4<i32>(-2147483647i, 51759i, 26766i, 2147483647i)) | -vec4<i32>(1i, var_0, -1i, 1i)), u_input.b), ~vec3<u32>(select(u_input.a.x ^ 56675u, _wgslsmith_dot_vec3_u32(vec3<u32>(18269u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 2544u, 1u)), var_1.x > var_1.x), countOneBits(firstLeadingBit(u_input.a.x)), ~u_input.a.x), Struct_1(_wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 44692i, u_input.b, -1i), vec4<i32>(-2147483647i, var_0, var_0, 0i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, -1i, 0i, u_input.b), vec4<i32>(u_input.b, -2147483647i, var_0, var_0)))));
    return !select(select(!(!vec4<bool>(false, false, var_2.a.a, var_2.a.a)), vec4<bool>(any(vec2<bool>(var_2.a.a, var_2.a.a)), !var_2.a.a, any(vec4<bool>(var_2.a.a, var_2.a.a, var_2.a.a, false)), var_2.a.a || false), true), select(select(select(vec4<bool>(true, true, var_2.a.a, true), vec4<bool>(var_2.a.a, var_2.a.a, false, var_2.a.a), var_2.a.a), vec4<bool>(false, true, false, var_2.a.a), var_2.a.a | false), vec4<bool>(true, var_1.x < 167f, true, var_2.a.a), all(vec3<bool>(true, false, true))), !vec4<bool>(!var_2.a.a, any(vec2<bool>(var_2.a.a, var_2.a.a)), false, all(vec2<bool>(var_2.a.a, var_2.a.a))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = Struct_3(Struct_2(true, arg_2, Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, 0i, arg_2.a.x) << (vec4<u32>(u_input.a.x, 16694u, 1u, 0u) % vec4<u32>(32u)), select(vec4<i32>(-1i, arg_2.a.x, u_input.b, u_input.b), arg_2.a, false))), Struct_1(select(_wgslsmith_mult_vec4_i32(vec4<i32>(-2453i, u_input.b, arg_2.a.x, -9157i), vec4<i32>(arg_2.a.x, arg_2.a.x, 0i, -1i)), vec4<i32>(arg_2.a.x, -78420i, -3271i, -1i), func_3())), _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(arg_2.a.wxz, vec3<i32>(-13841i, u_input.b, 2147483647i)), arg_2.a.wxz)), ~vec3<u32>(u_input.a.x, u_input.a.x, 0u), Struct_1(select(arg_2.a, vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(arg_2.a.yyw, arg_2.a.zwx), ~u_input.b, 1i), vec4<bool>(true, true, true, true))));
    let var_1 = vec2<i32>(_wgslsmith_div_i32(-(~var_0.a.b.a.x), var_0.c.a.x), var_0.c.a.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(floor(arg_1))))));
    var var_3 = Struct_2(false, var_0.a.c, Struct_1(~vec4<i32>(~arg_2.a.x, 1i, ~0i, -17192i)), arg_2, _wgslsmith_mult_i32(-u_input.b, abs(_wgslsmith_mod_i32(-5225i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.c.a.x, arg_2.a.x, -2147483647i), var_0.c.a)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(428f, var_2, true)), -1000f, _wgslsmith_f_op_f32(-1499f - 880f)) + vec3<f32>(999f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(step(-753f, var_2))))));
    return ~vec3<i32>(_wgslsmith_mod_i32(var_0.c.a.x, _wgslsmith_add_i32(-2147483647i, u_input.b)), var_0.c.a.x, -45152i);
}

fn func_1() -> u32 {
    global1 = array<vec4<f32>, 20>();
    global1 = array<vec4<f32>, 20>();
    let var_0 = -_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(func_2(-685f, _wgslsmith_f_op_f32(f32(-1f) * -1452f), Struct_1(vec4<i32>(-49436i, u_input.b, u_input.b, 46455i))), min(~vec3<i32>(u_input.b, u_input.b, -11329i), vec3<i32>(1i, -19475i, u_input.b))), select(~vec3<i32>(1i, 2147483647i, -1i), abs(vec3<i32>(u_input.b, u_input.b, u_input.b) | vec3<i32>(-1i, -1i, -1i)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))));
    let var_1 = vec2<u32>(~u_input.a.x, u_input.a.x);
    var var_2 = var_1.x;
    return 78736u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, u_input.a.x, 82014u)), abs(vec3<u32>(u_input.a.x, u_input.a.x, 45624u))) | min(1u, 0u), reverseBits(2712u), func_1(), 11986u), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 29293u, min(u_input.a.x, u_input.a.x), u_input.a.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1290u, u_input.a.x, u_input.a.x), ~vec4<u32>(23830u, u_input.a.x, 36899u, u_input.a.x))));
    global1 = array<vec4<f32>, 20>();
    global0 = array<vec3<f32>, 21>();
    var var_1 = Struct_4(Struct_2(false, Struct_1(-(vec4<i32>(u_input.b, u_input.b, u_input.b, 2588i) | vec4<i32>(u_input.b, 26573i, u_input.b, u_input.b))), Struct_1(max(~vec4<i32>(86009i, 18663i, u_input.b, u_input.b), -vec4<i32>(u_input.b, u_input.b, 2865i, u_input.b))), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 37516i) << (vec4<u32>(1u, var_0.x, var_0.x, u_input.a.x) % vec4<u32>(32u)), ~vec4<i32>(u_input.b, 12105i, u_input.b, -52367i))), -2147483647i | (~u_input.b << (_wgslsmith_dot_vec2_u32(u_input.a, var_0.xx) % 32u))), Struct_1(select(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 49957i, u_input.b, 0i), vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)), -vec4<i32>(-49960i, 1i, 20017i, -61249i), true) | _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 1199i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -46724i, 1i, 1213i), vec4<i32>(u_input.b, u_input.b, 21181i, -14979i)), vec4<i32>(u_input.b, 21791i, u_input.b, u_input.b) & vec4<i32>(u_input.b, 1i, u_input.b, 2147483647i))), func_3());
    var var_2 = Struct_5(Struct_1(firstTrailingBit(vec4<i32>(u_input.b, -55173i, var_1.b.a.x, -2147483647i)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, var_0.wy), 65242u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), var_0.x) % vec4<u32>(32u))));
    var_1 = Struct_4(Struct_2(true, Struct_1(_wgslsmith_clamp_vec4_i32(select(var_1.a.c.a, vec4<i32>(2147483647i, -1i, var_2.a.a.x, 25362i), var_1.c), vec4<i32>(2147483647i, 22166i, u_input.b, var_1.a.c.a.x), var_2.a.a)), var_1.b, var_2.a, -reverseBits(1i)), var_1.a.c, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -885f))))), -331f)), abs(var_0.zz), 4294967295u, ~select(firstTrailingBit(~9160u), ~var_0.x, var_1.a.a));
}

