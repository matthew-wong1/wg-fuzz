struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_2) -> vec4<u32> {
    global0 = array<Struct_4, 19>();
    var var_0 = vec2<bool>(arg_0.a.e, arg_2.b.b);
    let var_1 = all(arg_2.a);
    global0 = array<Struct_4, 19>();
    global0 = array<Struct_4, 19>();
    return firstLeadingBit(_wgslsmith_sub_vec4_u32(arg_2.c.c, arg_2.c.d));
}

fn func_2(arg_0: Struct_5, arg_1: u32) -> bool {
    var var_0 = Struct_3(Struct_2(vec3<bool>(all(vec2<bool>(true, true)), true, true), Struct_1(851f, !any(vec3<bool>(false, true, true)), ~select(vec4<u32>(arg_1, 1u, arg_1, arg_1), vec4<u32>(arg_1, 0u, 0u, arg_1), vec4<bool>(true, false, false, false)), vec4<u32>(33037u, arg_1, ~0u, arg_1), 1u), Struct_1(184f, !any(vec3<bool>(true, false, false)), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1, arg_1, arg_1, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, 16156u), vec4<u32>(arg_1, 23855u, 0u, arg_1))), func_3(global0[_wgslsmith_index_u32(1u, 19u)], countOneBits(vec2<u32>(arg_1, arg_1)), Struct_2(vec3<bool>(false, true, false), Struct_1(1497f, false, vec4<u32>(arg_1, 0u, arg_1, arg_1), vec4<u32>(arg_1, arg_1, arg_1, 1u), 1u), Struct_1(1458f, true, vec4<u32>(arg_1, 54006u, arg_1, arg_1), vec4<u32>(470u, 4294967295u, 52592u, arg_1), 4294967295u), vec3<u32>(arg_1, arg_1, 13619u), false)), 4294967295u), ~vec3<u32>(arg_1, ~arg_1, max(1u, arg_1)), all(vec2<bool>(true, true))), Struct_2(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), Struct_1(arg_0.b, false, ~_wgslsmith_mult_vec4_u32(vec4<u32>(38486u, arg_1, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, arg_1, 31338u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1, arg_1, arg_1, arg_1), select(vec4<u32>(arg_1, arg_1, 4294967295u, arg_1), vec4<u32>(47123u, 1u, arg_1, arg_1), true)), abs(2171u) ^ arg_1), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b * -563f))), false, vec4<u32>(func_3(Struct_4(Struct_2(vec3<bool>(true, false, false), Struct_1(931f, true, vec4<u32>(1u, 1u, arg_1, 4294967295u), vec4<u32>(arg_1, arg_1, arg_1, arg_1), arg_1), Struct_1(-1645f, false, vec4<u32>(1u, arg_1, arg_1, arg_1), vec4<u32>(arg_1, 75768u, 0u, arg_1), 4294967295u), vec3<u32>(arg_1, arg_1, arg_1), false), Struct_3(Struct_2(vec3<bool>(false, false, false), Struct_1(arg_0.b, true, vec4<u32>(0u, arg_1, 46273u, 0u), vec4<u32>(arg_1, 45912u, arg_1, arg_1), arg_1), Struct_1(-567f, true, vec4<u32>(1u, arg_1, 18452u, arg_1), vec4<u32>(0u, arg_1, arg_1, arg_1), arg_1), vec3<u32>(8461u, 56913u, arg_1), false), Struct_2(vec3<bool>(true, false, true), Struct_1(arg_0.b, true, vec4<u32>(arg_1, 4294967295u, 96392u, arg_1), vec4<u32>(arg_1, 1u, arg_1, arg_1), 0u), Struct_1(arg_0.b, true, vec4<u32>(1u, arg_1, arg_1, 0u), vec4<u32>(5927u, arg_1, arg_1, 4294967295u), arg_1), vec3<u32>(1u, 48584u, 14726u), true), vec2<i32>(arg_0.a.x, u_input.a.x))), vec2<u32>(arg_1, arg_1), Struct_2(vec3<bool>(false, true, false), Struct_1(1000f, true, vec4<u32>(6945u, arg_1, arg_1, 17230u), vec4<u32>(24024u, arg_1, 24691u, arg_1), 1u), Struct_1(-298f, true, vec4<u32>(4294967295u, arg_1, arg_1, 4294967295u), vec4<u32>(arg_1, arg_1, arg_1, arg_1), 19684u), vec3<u32>(72339u, 4294967295u, arg_1), true)).x, arg_1, ~21003u, arg_1), vec4<u32>(1u, 0u, arg_1, 24924u) & _wgslsmith_sub_vec4_u32(vec4<u32>(100092u, 1u, 4294967295u, 33227u), vec4<u32>(arg_1, 4294967295u, 0u, 0u)), arg_1), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(0u, arg_1)), ~arg_1, 38720u), select(any(vec3<bool>(true, true, true)), true, all(vec4<bool>(false, false, false, false)) && any(vec2<bool>(true, true)))), vec2<i32>(-15240i, -u_input.a.x | -1i));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1059f, _wgslsmith_f_op_f32(-var_0.b.c.a), all(vec3<bool>(false, true, var_0.a.e)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(402f, var_0.b.c.a))), _wgslsmith_f_op_f32(-arg_0.b), 1589f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1054f, var_0.a.c.a, arg_0.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(509f, -388f, arg_0.b, var_0.a.b.a) * vec4<f32>(arg_0.b, var_0.b.b.a, arg_0.b, -776f))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.c.a, -912f, var_0.b.c.a, -1751f), vec4<f32>(arg_0.b, arg_0.b, var_0.a.c.a, 2682f), vec4<bool>(var_0.b.c.b, var_0.b.e, true, var_0.b.b.b)))))))));
    global0 = array<Struct_4, 19>();
    let var_2 = ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, _wgslsmith_mult_u32(var_0.a.c.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(9009u, 4294967295u, 57300u, var_0.a.c.e), var_0.b.b.c))), ~vec2<u32>(_wgslsmith_sub_u32(var_0.a.b.d.x, 14462u), var_0.b.b.d.x));
    global0 = array<Struct_4, 19>();
    return true;
}

fn func_1() -> vec3<u32> {
    var var_0 = abs(~_wgslsmith_add_vec4_u32(reverseBits(select(vec4<u32>(37621u, 0u, 7989u, 25849u), vec4<u32>(1u, 38710u, 49895u, 4294967295u), false)), abs(vec4<u32>(1u, 1u, 1u, 1u))));
    var_0 = select(vec4<u32>(var_0.x, ~(~(1u << (var_0.x % 32u))), 1u, 61480u), vec4<u32>(9320u, 4294967295u, ~(~0u), ~var_0.x), !(true | func_2(Struct_5(u_input.a, 1308f), var_0.x)));
    var_0 = select(abs(vec4<u32>(firstLeadingBit(8636u), 4294967295u, 95498u, ~4294967295u)), ~firstTrailingBit(vec4<u32>(~var_0.x, _wgslsmith_add_u32(var_0.x, 0u), ~0u, _wgslsmith_dot_vec3_u32(var_0.ywz, var_0.xzy))), !vec4<bool>(~86094u >= var_0.x, true, true, true));
    let var_1 = vec2<bool>(true, true);
    let var_2 = Struct_2(vec3<bool>(!var_1.x, !func_2(Struct_5(u_input.a, 1077f), ~0u), !var_1.x), Struct_1(-1000f, false, (vec4<u32>(54635u, var_0.x, 4294967295u, var_0.x) ^ vec4<u32>(6855u, 0u, 9611u, var_0.x)) & min(vec4<u32>(47312u, 71960u, var_0.x, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), vec4<u32>(0u, 52185u, 39067u, 1u))), abs(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(4294967295u, 41108u, 4294967295u, var_0.x)), ~vec4<u32>(var_0.x, 21793u, var_0.x, var_0.x))), _wgslsmith_add_u32(44253u, 8731u)), Struct_1(-399f, false, firstLeadingBit(vec4<u32>(1u, var_0.x, var_0.x, var_0.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 1u, 1u, 0u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 32693u, var_0.x, var_0.x) & vec4<u32>(7702u, 1u, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(4144u, 71309u, var_0.x, var_0.x), vec4<u32>(var_0.x, 21806u, var_0.x, 0u))), ~(vec4<u32>(66682u, 1u, 0u, var_0.x) & vec4<u32>(var_0.x, 6541u, 157042u, var_0.x))), 76537u), var_0.xwz, var_1.x);
    return ~firstLeadingBit(vec3<u32>(~0u, ~var_0.x, var_0.x)) >> (_wgslsmith_sub_vec3_u32(var_0.wwx, (vec3<u32>(32611u, 47371u, 1u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 39981u, 0u), vec3<u32>(4294967295u, var_0.x, var_2.c.d.x)) % vec3<u32>(32u))) ^ select(countOneBits(vec3<u32>(var_0.x, 0u, var_2.c.d.x)), ~vec3<u32>(8328u, 4294967295u, var_0.x), select(vec3<bool>(false, var_2.a.x, true), vec3<bool>(true, var_2.a.x, false), false))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 19>();
    global0 = array<Struct_4, 19>();
    var var_0 = Struct_5(max(u_input.a, ~select(~vec3<i32>(2147483647i, -1i, u_input.a.x), ~u_input.a, true)), 325f);
    let var_1 = vec4<u32>(firstTrailingBit(~_wgslsmith_mod_u32(~0u, 4294967295u)), _wgslsmith_dot_vec3_u32(func_1() | vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~52361u, ~604u), vec3<u32>(~4294967295u, 29155u, _wgslsmith_add_u32(0u, 26403u)), vec3<u32>(func_3(Struct_4(Struct_2(vec3<bool>(false, false, false), Struct_1(var_0.b, false, vec4<u32>(13455u, 34452u, 40875u, 66063u), vec4<u32>(0u, 0u, 18315u, 8958u), 0u), Struct_1(-1561f, true, vec4<u32>(10221u, 0u, 499u, 81923u), vec4<u32>(98109u, 40678u, 31492u, 4294967295u), 45024u), vec3<u32>(1u, 49988u, 66733u), false), Struct_3(Struct_2(vec3<bool>(false, true, false), Struct_1(var_0.b, false, vec4<u32>(25661u, 12524u, 34358u, 38256u), vec4<u32>(1u, 6173u, 163787u, 24059u), 0u), Struct_1(-1810f, false, vec4<u32>(4788u, 4294967295u, 0u, 57815u), vec4<u32>(4294967295u, 1u, 1u, 65882u), 108937u), vec3<u32>(63902u, 0u, 0u), false), Struct_2(vec3<bool>(false, true, true), Struct_1(var_0.b, true, vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 0u, 59221u, 1u), 73677u), Struct_1(-1662f, true, vec4<u32>(1u, 0u, 20903u, 87922u), vec4<u32>(0u, 0u, 27600u, 24979u), 1u), vec3<u32>(12825u, 63174u, 0u), false), var_0.a.xz)), vec2<u32>(46973u, 0u), Struct_2(vec3<bool>(false, true, true), Struct_1(var_0.b, true, vec4<u32>(12422u, 4294967295u, 10298u, 57982u), vec4<u32>(71352u, 0u, 80016u, 1u), 39622u), Struct_1(796f, false, vec4<u32>(1490u, 4294967295u, 46184u, 1u), vec4<u32>(1u, 36664u, 46746u, 4294967295u), 1u), vec3<u32>(9713u, 2907u, 10625u), true)).x, select(0u, 4294967295u, false), ~64869u))), ~select(1u, 1u, false), ~(~reverseBits(0u)) << (_wgslsmith_dot_vec2_u32(~min(vec2<u32>(1u, 76627u), vec2<u32>(0u, 0u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(36780u, 10204u, 44306u, 4294967295u), vec4<u32>(70532u, 1u, 96690u, 1u)), ~0u)) % 32u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b)) - _wgslsmith_f_op_f32(-var_0.b)), true, ~var_1, ~(~(var_1 << (vec4<u32>(var_1.x, 4294967295u, 108968u, 1u) % vec4<u32>(32u)))) & ~firstLeadingBit(~var_1), reverseBits(reverseBits(_wgslsmith_mod_u32(var_1.x, _wgslsmith_add_u32(17495u, var_1.x)))));
    let var_3 = u_input.a.yy;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-512f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(128f * -380f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(~1u), ~_wgslsmith_dot_vec4_u32(var_2.d, vec4<u32>(var_2.d.x, var_2.c.x, var_1.x, var_2.e)), var_2.c.x, 0u), _wgslsmith_add_vec4_u32(abs(var_2.c) & var_2.d, var_2.c)));
}

