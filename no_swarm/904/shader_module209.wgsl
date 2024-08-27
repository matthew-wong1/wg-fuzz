struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<u32>(40295u, 6004u, 1u), -1193f, vec3<bool>(false, false, true), -24159i, -477f), Struct_1(vec3<u32>(1u, 0u, 18969u), 1330f, vec3<bool>(false, true, true), -26175i, 285f), Struct_1(vec3<u32>(0u, 4294967295u, 0u), -1234f, vec3<bool>(true, true, false), 2147483647i, 1822f), Struct_1(vec3<u32>(55376u, 1u, 0u), 750f, vec3<bool>(false, true, false), -18965i, 1304f), Struct_1(vec3<u32>(20433u, 0u, 32736u), -437f, vec3<bool>(false, true, true), i32(-2147483648), -758f), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), -341f, vec3<bool>(true, false, true), 44416i, 1549f), Struct_1(vec3<u32>(44112u, 1u, 107560u), -1113f, vec3<bool>(false, true, true), -1i, -939f), Struct_1(vec3<u32>(1u, 1u, 0u), -375f, vec3<bool>(true, false, false), 6894i, -806f), Struct_1(vec3<u32>(60887u, 25565u, 4294967295u), -669f, vec3<bool>(false, true, true), 33118i, 123f), Struct_1(vec3<u32>(0u, 4294967295u, 69876u), -535f, vec3<bool>(false, false, true), 32016i, 797f), Struct_1(vec3<u32>(1457u, 1u, 75418u), -203f, vec3<bool>(true, false, true), 1i, 317f), Struct_1(vec3<u32>(101039u, 51421u, 0u), -564f, vec3<bool>(false, true, true), 2147483647i, 1000f), Struct_1(vec3<u32>(25729u, 41049u, 1u), 1055f, vec3<bool>(false, true, true), 1i, 813f), Struct_1(vec3<u32>(0u, 55134u, 24958u), -166f, vec3<bool>(false, false, false), -21719i, 748f), Struct_1(vec3<u32>(1u, 26004u, 0u), -1000f, vec3<bool>(true, false, false), 2147483647i, -1635f), Struct_1(vec3<u32>(4294967295u, 0u, 2653u), 715f, vec3<bool>(true, false, true), 56666i, 1620f), Struct_1(vec3<u32>(36478u, 4294967295u, 2880u), -1024f, vec3<bool>(true, false, false), 22541i, 988f), Struct_1(vec3<u32>(59001u, 4294967295u, 4294967295u), 1000f, vec3<bool>(false, true, true), -51687i, 1339f), Struct_1(vec3<u32>(0u, 0u, 3927u), -242f, vec3<bool>(false, true, true), 1i, 804f), Struct_1(vec3<u32>(50444u, 25358u, 26300u), -880f, vec3<bool>(false, true, true), -7087i, 1174f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), -1365f, vec3<bool>(true, false, false), -26526i, 548f), Struct_1(vec3<u32>(8589u, 0u, 85658u), -1079f, vec3<bool>(false, false, true), -1i, -926f), Struct_1(vec3<u32>(13923u, 0u, 51500u), -990f, vec3<bool>(true, true, true), 1i, -1152f), Struct_1(vec3<u32>(28838u, 37517u, 0u), 1000f, vec3<bool>(true, true, true), -38568i, -2061f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 12797u), -657f, vec3<bool>(false, true, true), -4299i, 756f), Struct_1(vec3<u32>(4294967295u, 0u, 7195u), 1165f, vec3<bool>(true, true, false), 18553i, -245f), Struct_1(vec3<u32>(63007u, 6846u, 4294967295u), 1413f, vec3<bool>(false, true, true), 0i, 1000f), Struct_1(vec3<u32>(1u, 18849u, 0u), 185f, vec3<bool>(true, false, false), -29389i, -1331f), Struct_1(vec3<u32>(1u, 10777u, 87818u), 1000f, vec3<bool>(true, false, false), i32(-2147483648), -408f), Struct_1(vec3<u32>(1u, 4294967295u, 0u), -1000f, vec3<bool>(false, true, false), i32(-2147483648), 1000f), Struct_1(vec3<u32>(0u, 1u, 50492u), 2337f, vec3<bool>(true, true, false), 2147483647i, 2051f));

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(4294967295u, Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), 523f, vec3<bool>(false, true, false), i32(-2147483648), 1007f), -507f, 1u), Struct_2(1u, Struct_1(vec3<u32>(3706u, 56070u, 1u), 1055f, vec3<bool>(true, true, false), 2828i, -544f), -570f, 4294967295u), Struct_2(65725u, Struct_1(vec3<u32>(57977u, 55110u, 27431u), 732f, vec3<bool>(true, false, false), 1i, 1000f), 295f, 0u), Struct_2(1u, Struct_1(vec3<u32>(1u, 4294967295u, 1u), 1045f, vec3<bool>(true, true, false), 0i, -621f), 243f, 50427u), Struct_2(29477u, Struct_1(vec3<u32>(4294967295u, 19235u, 8106u), 705f, vec3<bool>(true, false, true), -1i, -1000f), 3015f, 13442u), Struct_2(1u, Struct_1(vec3<u32>(9965u, 1u, 1u), 811f, vec3<bool>(false, true, false), i32(-2147483648), -2073f), -700f, 4294967295u), Struct_2(4931u, Struct_1(vec3<u32>(18890u, 4294967295u, 4294967295u), 1614f, vec3<bool>(true, true, true), -33253i, -608f), 1517f, 0u), Struct_2(17358u, Struct_1(vec3<u32>(45101u, 30460u, 33835u), -1159f, vec3<bool>(true, false, true), i32(-2147483648), 1054f), -143f, 25004u), Struct_2(1u, Struct_1(vec3<u32>(4294967295u, 1u, 7013u), -439f, vec3<bool>(false, false, false), -1i, -1000f), 1177f, 4294967295u), Struct_2(0u, Struct_1(vec3<u32>(0u, 1u, 71361u), -489f, vec3<bool>(false, true, true), 2147483647i, 789f), 538f, 1u), Struct_2(1u, Struct_1(vec3<u32>(4294967295u, 1u, 1u), -1000f, vec3<bool>(false, true, true), 0i, 238f), 164f, 4294967295u), Struct_2(32638u, Struct_1(vec3<u32>(52109u, 5071u, 25750u), 607f, vec3<bool>(false, true, false), -21202i, -601f), 221f, 29198u), Struct_2(87137u, Struct_1(vec3<u32>(0u, 34205u, 0u), -1485f, vec3<bool>(false, true, true), 12649i, 1861f), 807f, 87886u), Struct_2(1u, Struct_1(vec3<u32>(1u, 4294967295u, 16491u), 1080f, vec3<bool>(false, true, true), 1i, -2438f), 1392f, 64329u), Struct_2(29344u, Struct_1(vec3<u32>(4440u, 80543u, 19883u), 1000f, vec3<bool>(true, false, true), 5445i, -739f), -390f, 1u), Struct_2(1u, Struct_1(vec3<u32>(0u, 65895u, 27940u), 1000f, vec3<bool>(true, false, false), -1i, 2144f), 775f, 1u), Struct_2(4294967295u, Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), -1420f, vec3<bool>(false, false, false), 10976i, -651f), -247f, 30825u), Struct_2(74468u, Struct_1(vec3<u32>(41596u, 4294967295u, 1u), -964f, vec3<bool>(true, false, false), -1i, 1359f), 500f, 1u), Struct_2(19358u, Struct_1(vec3<u32>(16561u, 2091u, 38698u), -223f, vec3<bool>(true, false, false), 54324i, 662f), -1326f, 38576u), Struct_2(1u, Struct_1(vec3<u32>(0u, 44291u, 0u), -303f, vec3<bool>(true, false, false), 1i, -338f), -1000f, 27541u));

var<private> global2: Struct_2;

var<private> global3: array<vec2<f32>, 6>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_1.c));
    global0 = array<Struct_1, 31>();
    global2 = arg_1;
    var var_1 = global0[_wgslsmith_index_u32(arg_1.d, 31u)];
    var var_2 = Struct_3((var_1.e > _wgslsmith_f_op_f32(global2.b.e - -720f)) != !any(select(arg_1.b.c, arg_1.b.c, global2.b.c.x)), Struct_2(1u, global2.b, _wgslsmith_f_op_f32(step(arg_1.c, var_0)), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1663f) - 452f)));
    return _wgslsmith_div_vec4_u32((_wgslsmith_add_vec4_u32(~vec4<u32>(30778u, 24395u, var_1.a.x, 51161u), ~vec4<u32>(3671u, arg_0.x, 18422u, 0u)) >> (max(~vec4<u32>(var_1.a.x, 4294967295u, arg_1.b.a.x, 0u), vec4<u32>(global2.d, 36028u, 4837u, global2.a)) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_u32(~(vec4<u32>(23088u, 83331u, var_2.b.a, 1u) << (vec4<u32>(3165u, global2.d, arg_1.a, 8006u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, global2.a, 68329u), vec4<u32>(var_1.a.x, 0u, var_1.a.x, arg_0.x)) & (vec4<u32>(4294967295u, arg_1.a, 56579u, arg_0.x) | vec4<u32>(arg_0.x, 1u, 36660u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.x, arg_1.d, arg_0.x, 19820u), ~vec4<u32>(var_2.b.b.a.x, 11107u, var_1.a.x, arg_0.x))), abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, global2.d, 20644u, 1867u), _wgslsmith_sub_vec4_u32(~vec4<u32>(global2.d, var_1.a.x, global2.d, 13528u), vec4<u32>(4294967295u, arg_0.x, 29636u, 0u) | vec4<u32>(global2.b.a.x, arg_0.x, 6178u, var_1.a.x)), vec4<u32>(~var_1.a.x, var_1.a.x, ~arg_0.x, ~45173u))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = global2.b;
    var var_1 = firstLeadingBit(_wgslsmith_mult_vec4_u32(func_3(vec3<u32>(var_0.a.x, arg_1.a.x, 24138u), global1[_wgslsmith_index_u32(arg_2.a.x, 20u)]), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(34941u, 12422u, 92748u, arg_1.a.x)), select(vec4<u32>(var_0.a.x, 24675u, global2.d, 27412u), vec4<u32>(0u, 1u, 6386u, arg_2.a.x), false)))) >> (~(~(~func_3(vec3<u32>(arg_1.a.x, 1u, 3997u), global1[_wgslsmith_index_u32(arg_1.a.x, 20u)]))) % vec4<u32>(32u));
    let var_2 = var_0.c.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.e, 2019f, arg_2.e)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, arg_1.e, global2.c)))) + vec3<f32>(arg_2.b, _wgslsmith_f_op_f32(-global2.c), -182f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-736f, _wgslsmith_f_op_f32(var_0.e + -1000f), _wgslsmith_f_op_f32(var_0.e + arg_2.b)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.e, arg_2.e, arg_1.b))));
    var var_4 = min(~vec3<u32>(_wgslsmith_clamp_u32(arg_2.a.x ^ var_1.x, 0u, 1u), abs(var_0.a.x >> (65886u % 32u)), arg_2.a.x), var_1.xzx);
    return !((global2.b.c.x == (any(vec2<bool>(global2.b.c.x, false)) | arg_0)) == arg_2.c.x);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> u32 {
    global3 = array<vec2<f32>, 6>();
    global3 = array<vec2<f32>, 6>();
    let var_0 = global0[_wgslsmith_index_u32(~arg_0, 31u)];
    let var_1 = Struct_2(arg_1.b.b.a.x, Struct_1(min(vec3<u32>(64165u, 100590u, global2.b.a.x << (arg_1.b.a % 32u)), select(vec3<u32>(arg_1.b.a, 27993u, 15667u), vec3<u32>(arg_0, 0u, 9031u) & vec3<u32>(arg_1.b.a, 4294967295u, global2.d), arg_1.b.a <= 72547u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1618f, var_0.b))), any(!vec4<bool>(arg_1.b.b.c.x, true, arg_1.a, var_0.c.x)))), vec3<bool>(func_2(true, Struct_1(global2.b.a, var_0.b, vec3<bool>(false, global2.b.c.x, false), -2147483647i, arg_1.c), Struct_1(arg_1.b.b.a, -1000f, var_0.c, 28104i, -320f)), var_0.c.x, false), 0i, var_0.e), arg_1.c, ~79964u);
    global1 = array<Struct_2, 20>();
    return ~(~(~(~27372u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(max(global2.d, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(global2.a, 66371u), max(global2.b.a.x, global2.a))), global2.b, global2.b.b, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global2.a, firstTrailingBit(global2.b.a.x & global2.a)), _wgslsmith_mod_u32(~(global2.b.a.x ^ global2.d), ~_wgslsmith_dot_vec2_u32(vec2<u32>(12931u, 1u), vec2<u32>(4294967295u, 55310u))), ~(~func_1(0u, Struct_3(true, Struct_2(global2.b.a.x, global0[_wgslsmith_index_u32(82983u, 31u)], global2.b.b, 138u), -343f)))));
    var var_0 = _wgslsmith_f_op_f32(-global2.c);
    let var_1 = global1[_wgslsmith_index_u32(~global2.d, 20u)];
    global3 = array<vec2<f32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(~func_3(global2.b.a, Struct_2(var_1.b.a.x, global0[_wgslsmith_index_u32(56282u, 31u)], 1000f, 81169u)))), var_1.b.b, _wgslsmith_mult_u32(firstLeadingBit(global2.d), max(var_1.d, global2.a) & 117129u) & ~1u);
}

