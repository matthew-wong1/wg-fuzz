struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-329f, -460f, -1542f, 1315f);

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec2<bool>(true, false), Struct_1(vec4<i32>(-4734i, -49621i, 18640i, 19060i), -220f, false, 1000f, vec4<bool>(false, false, true, true)), 0u, vec3<f32>(-2118f, -1432f, 775f)), Struct_3(vec2<bool>(true, true), Struct_1(vec4<i32>(33310i, -1i, i32(-2147483648), 2147483647i), -1181f, true, -668f, vec4<bool>(false, true, false, true)), 28564u, vec3<f32>(-305f, 665f, 1227f)), Struct_3(vec2<bool>(false, false), Struct_1(vec4<i32>(-26808i, 3672i, 22366i, -36961i), 478f, false, -593f, vec4<bool>(false, true, true, false)), 27157u, vec3<f32>(-199f, 1000f, 1000f)), Struct_3(vec2<bool>(false, true), Struct_1(vec4<i32>(-43721i, i32(-2147483648), i32(-2147483648), -817i), -1399f, false, -1000f, vec4<bool>(true, false, false, true)), 62240u, vec3<f32>(1213f, -157f, -1000f)), Struct_3(vec2<bool>(false, true), Struct_1(vec4<i32>(-3794i, -1i, 2147483647i, 1i), -1366f, false, -758f, vec4<bool>(true, true, true, true)), 18211u, vec3<f32>(-1274f, 1093f, 479f)), Struct_3(vec2<bool>(false, true), Struct_1(vec4<i32>(49111i, 5586i, -51101i, 8542i), -881f, true, -629f, vec4<bool>(true, false, false, true)), 0u, vec3<f32>(-658f, -1475f, -1786f)), Struct_3(vec2<bool>(true, true), Struct_1(vec4<i32>(-19497i, 114396i, 1i, -3291i), 217f, true, -282f, vec4<bool>(false, false, true, false)), 42729u, vec3<f32>(735f, -260f, -1147f)), Struct_3(vec2<bool>(true, false), Struct_1(vec4<i32>(1i, -16196i, i32(-2147483648), 53619i), 793f, true, 950f, vec4<bool>(true, false, false, true)), 82117u, vec3<f32>(-655f, 809f, -416f)), Struct_3(vec2<bool>(false, true), Struct_1(vec4<i32>(-11312i, 0i, i32(-2147483648), -5103i), 631f, false, 1772f, vec4<bool>(true, false, true, true)), 0u, vec3<f32>(437f, 1465f, -3030f)), Struct_3(vec2<bool>(false, true), Struct_1(vec4<i32>(10133i, 1i, -24349i, -8083i), 671f, false, 399f, vec4<bool>(true, true, true, true)), 1u, vec3<f32>(1013f, 278f, -138f)), Struct_3(vec2<bool>(true, false), Struct_1(vec4<i32>(23047i, 2020i, -26019i, -7868i), -552f, false, -374f, vec4<bool>(true, false, false, true)), 44336u, vec3<f32>(-194f, -264f, -153f)), Struct_3(vec2<bool>(true, true), Struct_1(vec4<i32>(-45516i, -1494i, -502i, 2147483647i), -560f, false, -729f, vec4<bool>(false, true, true, true)), 0u, vec3<f32>(663f, 153f, 1074f)), Struct_3(vec2<bool>(true, true), Struct_1(vec4<i32>(0i, 1i, -5766i, 0i), -1000f, true, -1000f, vec4<bool>(true, false, true, true)), 1u, vec3<f32>(1665f, 613f, -798f)), Struct_3(vec2<bool>(false, true), Struct_1(vec4<i32>(61110i, 1i, 29453i, 31744i), -789f, true, 2353f, vec4<bool>(false, true, false, true)), 14193u, vec3<f32>(-2978f, 824f, 937f)), Struct_3(vec2<bool>(false, true), Struct_1(vec4<i32>(i32(-2147483648), -2973i, 3572i, 1i), 2099f, false, -388f, vec4<bool>(true, true, true, true)), 4294967295u, vec3<f32>(846f, 943f, 1980f)), Struct_3(vec2<bool>(false, false), Struct_1(vec4<i32>(-1i, 0i, 1i, -2873i), -2462f, true, 786f, vec4<bool>(true, true, true, true)), 4294967295u, vec3<f32>(-1698f, -1158f, 131f)), Struct_3(vec2<bool>(true, false), Struct_1(vec4<i32>(-36176i, 56497i, i32(-2147483648), -49994i), 1409f, false, 795f, vec4<bool>(true, false, true, false)), 4294967295u, vec3<f32>(1438f, 986f, -970f)), Struct_3(vec2<bool>(false, false), Struct_1(vec4<i32>(i32(-2147483648), -9792i, -1i, -8960i), 719f, false, -646f, vec4<bool>(true, false, true, true)), 83359u, vec3<f32>(370f, -507f, -1651f)), Struct_3(vec2<bool>(false, false), Struct_1(vec4<i32>(50468i, 0i, -22224i, 0i), -684f, true, -998f, vec4<bool>(false, true, false, false)), 33957u, vec3<f32>(-430f, 569f, -793f)), Struct_3(vec2<bool>(true, true), Struct_1(vec4<i32>(30745i, 25023i, 6162i, 15843i), -896f, false, 2568f, vec4<bool>(true, false, true, false)), 0u, vec3<f32>(-1299f, 889f, 500f)), Struct_3(vec2<bool>(false, true), Struct_1(vec4<i32>(2147483647i, 2379i, -29402i, -63235i), -2116f, false, 1111f, vec4<bool>(true, true, true, true)), 1u, vec3<f32>(337f, 656f, 892f)), Struct_3(vec2<bool>(true, false), Struct_1(vec4<i32>(-1i, 0i, -47780i, -37619i), 647f, false, -1117f, vec4<bool>(true, true, false, false)), 13036u, vec3<f32>(173f, -1000f, 997f)));

var<private> global2: array<f32, 6> = array<f32, 6>(901f, 292f, 2804f, 123f, 878f, 926f);

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> f32 {
    global0 = vec4<f32>(255f, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c.yx), 4294967295u), 6u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(-919f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-408f, global2[_wgslsmith_index_u32(65847u, 6u)]), 354f));
    let var_0 = countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0, vec2<u32>(10976u, 26270u)), u_input.c.yz << (u_input.c.xy % vec2<u32>(32u))), max(69712u, abs(u_input.c.x))) >> ((max(vec2<u32>(u_input.c.x, arg_0.x), arg_0) ^ vec2<u32>(u_input.c.x, 0u)) % vec2<u32>(32u)));
    var var_1 = select(vec2<bool>(arg_2.x, all(vec4<bool>(true, arg_2.x, arg_2.x, false)) == arg_2.x), select(vec2<bool>(_wgslsmith_f_op_f32(floor(171f)) <= _wgslsmith_f_op_f32(select(-319f, global2[_wgslsmith_index_u32(arg_0.x, 6u)], false)), arg_2.x), arg_2.xz, !(!arg_2.xx)), vec2<bool>((false | !arg_2.x) && (any(vec3<bool>(arg_2.x, false, true)) && any(vec3<bool>(true, false, arg_2.x))), !any(!vec2<bool>(arg_2.x, arg_2.x))));
    let var_2 = Struct_1(reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(0i, arg_1.x, -2147483647i, u_input.a)), -arg_1), -(vec4<i32>(1i, -1i, 29397i, 2147483647i) | arg_1))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(883f, -543f)))))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(select(global0.x, -1108f, var_1.x)))), !select(arg_2, select(vec4<bool>(arg_2.x, false, var_1.x, false), arg_2, var_1.x && var_1.x), select(arg_2, arg_2, vec4<bool>(arg_2.x, var_1.x, var_1.x, arg_2.x))));
    let var_3 = select(_wgslsmith_dot_vec2_u32(arg_0, ~vec2<u32>(195u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, 0u, 4294967295u), vec4<u32>(4294967295u, u_input.c.x, 49601u, 61651u)))), u_input.c.x, select(select(true, false, false) || any(!vec2<bool>(arg_2.x, var_1.x)), arg_2.x, all(var_2.e)));
    return 223f;
}

fn func_2(arg_0: i32) -> vec4<f32> {
    global1 = array<Struct_3, 22>();
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-236f, _wgslsmith_f_op_f32(-global0.x), 597f, _wgslsmith_f_op_f32(sign(172f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(27200u, 6u)], global2[_wgslsmith_index_u32(26898u, 6u)], -1246f, global2[_wgslsmith_index_u32(44902u, 6u)]))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 6u)], -829f, 1320f, 576f) - vec4<f32>(1012f, 548f, global0.x, 535f))))))));
    let var_0 = Struct_4(Struct_2(firstLeadingBit(u_input.b.zzx), u_input.c.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(17u, u_input.c.x, u_input.c.x), u_input.c), ~u_input.c), Struct_1(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, -2147483647i), vec4<i32>(0i, 6184i, -1i, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, 19137i, arg_0)), -212f, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.c.x, 4294967295u), u_input.b, vec4<bool>(false, true, false, false)))), vec4<bool>(true, true, true, any(vec3<bool>(true, true, false))))), global1[_wgslsmith_index_u32(abs(1u), 22u)], Struct_2(u_input.b.wzw, select(_wgslsmith_clamp_u32(46774u, u_input.c.x, 9673u), 1u, all(vec3<bool>(false, true, true))), ~13888u, Struct_1(vec4<i32>(i32(-1i) * -30050i, arg_0 | -58447i, arg_0 >> (u_input.c.x % 32u), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(134f + -1721f) * global0.x), select(true, true, true) & any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1827f, global2[_wgslsmith_index_u32(u_input.c.x, 6u)])), vec4<bool>(true, true, true, true))));
    global3 = array<Struct_1, 8>();
    let var_1 = min(vec3<u32>(min(var_0.c.c, ~20873u) << (var_0.b.c % 32u), _wgslsmith_clamp_u32(549u, ~u_input.c.x, 4294967295u), _wgslsmith_div_u32(u_input.c.x, var_0.a.c)), reverseBits(u_input.c) & _wgslsmith_sub_vec3_u32(min(u_input.c, abs(u_input.c)), ~(~u_input.c)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d.b, var_0.a.d.d, global2[_wgslsmith_index_u32(var_0.c.c, 6u)], global0.x)))));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(777f, global2[_wgslsmith_index_u32(arg_0.c, 6u)], global0.x, arg_0.d.x) + vec4<f32>(-1434f, -1000f, global0.x, -2414f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, -2832f, arg_0.b.b, global0.x) + vec4<f32>(-2112f, -893f, global0.x, -1457f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.b.d, global0.x, global2[_wgslsmith_index_u32(u_input.c.x, 6u)]) - vec4<f32>(-563f, global2[_wgslsmith_index_u32(u_input.c.x, 6u)], global0.x, -684f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-550f, global0.x, 506f, 855f) * vec4<f32>(-312f, global0.x, global0.x, 475f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(-1000f, global0.x), _wgslsmith_f_op_f32(abs(-1367f)), _wgslsmith_f_op_f32(arg_0.d.x * 1000f), global2[_wgslsmith_index_u32(arg_0.c, 6u)]), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 854f, global2[_wgslsmith_index_u32(u_input.c.x, 6u)], -1000f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(~u_input.d.x)))));
    let var_0 = arg_0.a.x;
    global3 = array<Struct_1, 8>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-619f)), _wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(select(-1961f, 502f, all(arg_0.b.e.xzx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(466f)) * _wgslsmith_f_op_f32(562f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-541f - 270f) + _wgslsmith_div_f32(global0.x, -2632f)))));
    let var_1 = Struct_1(abs(~(vec4<i32>(-4989i, arg_0.b.a.x, arg_0.b.a.x, 1i) >> (vec4<u32>(16800u, u_input.c.x, u_input.c.x, 11009u) % vec4<u32>(32u)))) & _wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.a, arg_0.b.a.x, 1i, u_input.b.x)), vec4<i32>(arg_0.b.a.x, -2147483647i, 56556i, 2147483647i) ^ u_input.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(4294967295u, 4294967295u), u_input.b, arg_0.b.e)))))), abs(-18162i) >= u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.c.x | arg_0.c), 6u)]))), arg_0.b.e);
    return Struct_2(~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(var_1.a.xww, var_1.a.zxx | arg_0.b.a.yxy), arg_0.b.a.yxy), arg_0.c, (~arg_0.c >> (~1821u % 32u)) ^ arg_0.c, arg_0.b);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = false;
    let var_1 = Struct_1(arg_2.b.a, global2[_wgslsmith_index_u32(1u, 6u)], select(any(arg_1.d.e.zzz), func_1(arg_2).d.c, arg_2.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-282f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.d.d)) - _wgslsmith_f_op_f32(-1191f + arg_1.d.d)))), var_0)), arg_2.b.e);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 334f, global2[_wgslsmith_index_u32(~(~60332u), 6u)], var_1.b));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 755f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d.b - var_1.b)), 190f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, -284f, arg_3.d.b), vec4<f32>(1015f, var_1.b, global0.x, arg_1.d.b), true)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(140f, arg_2.b.d, -1969f, var_1.b), vec4<f32>(276f, -291f, 213f, arg_2.d.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(900f, -501f, var_1.b, 412f), vec4<f32>(260f, 1014f, var_1.d, global2[_wgslsmith_index_u32(4294967295u, 6u)])) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, -1888f, 1049f, -274f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(887f, -1055f, -719f, global0.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(2305f, global0.x, arg_1.d.b, global2[_wgslsmith_index_u32(arg_1.b, 6u)]), vec4<f32>(arg_1.d.b, arg_2.b.b, arg_2.b.d, var_1.b)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, -375f, -1545f, _wgslsmith_f_op_f32(arg_3.d.d + arg_2.b.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2(1i)).x, _wgslsmith_f_op_f32(trunc(-349f)), -169f, 109f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 1443f, global2[_wgslsmith_index_u32(arg_3.c, 6u)], arg_3.d.b)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-978f, arg_3.d.d, -398f, 956f), vec4<f32>(arg_1.d.d, global0.x, var_1.d, 1690f), arg_1.d.e)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.d, arg_1.d.b, global2[_wgslsmith_index_u32(u_input.c.x, 6u)], -541f))))), arg_3.d.c));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.d)), arg_1.d.b, _wgslsmith_f_op_f32(step(var_2.x, -1000f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(54248u, 6u)]) * _wgslsmith_f_op_f32(round(var_1.d))), _wgslsmith_f_op_f32(289f - _wgslsmith_div_f32(arg_3.d.d, arg_2.d.x)), _wgslsmith_f_op_f32(min(-2054f, -295f)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(var_2.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-177f, global0.x, 1782f, global2[_wgslsmith_index_u32(arg_3.b, 6u)])), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_1.b, var_1.b, var_1.d), vec4<f32>(var_1.b, arg_1.d.b, 706f, arg_2.d.x)), var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(func_4(reverseBits(u_input.c.x | ((u_input.c.x >> (16539u % 32u)) & u_input.c.x)), Struct_2(vec3<i32>(-1i) * -u_input.b.xwy, ~u_input.c.x & 48318u, u_input.c.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 327u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 8085u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 27046u)), _wgslsmith_mult_u32(1u, u_input.c.x), 1u)), 8u)]), global1[_wgslsmith_index_u32(~countOneBits(25834u), 22u)], func_1(global1[_wgslsmith_index_u32(u_input.c.x, 22u)])));
    let var_0 = _wgslsmith_dot_vec3_i32(func_1(global1[_wgslsmith_index_u32(abs(4294967295u), 22u)]).a, vec3<i32>(1i ^ u_input.a, ~(i32(-1i) * -2147483647i), u_input.a));
    var var_1 = func_1(Struct_3(vec2<bool>(true, true), func_1(Struct_3(vec2<bool>(true, true), Struct_1(u_input.b, -980f, true, 645f, vec4<bool>(false, false, true, true)), 0u, global0.wwz)).d, ~_wgslsmith_add_u32(u_input.c.x, u_input.c.x) & ~firstTrailingBit(u_input.c.x), global0.xwx)).d;
    global2 = array<f32, 6>();
    var_1 = Struct_1(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1061f, _wgslsmith_f_op_f32(-1694f - var_1.b)) + global0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2175f + global2[_wgslsmith_index_u32(u_input.c.x, 6u)]) - _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(65926u, 6u)]))))), false, _wgslsmith_f_op_f32(max(1602f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(max(var_1.b, 1696f))))))), func_1(Struct_3(var_1.e.ww, global3[_wgslsmith_index_u32(u_input.c.x, 8u)], _wgslsmith_mod_u32(1u, ~u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(3227f, global0.x, var_1.d), global0.xxw))))).d.e);
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(~u_input.c.x, func_1(Struct_3(var_1.e.yx, Struct_1(vec4<i32>(-1i, var_1.a.x, -56250i, 29379i), 1346f, var_1.e.x, 559f, vec4<bool>(var_1.c, true, true, false)), 4294967295u, global0.zxy)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 50724u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 89243u, u_input.c.x), vec4<u32>(438u, u_input.c.x, u_input.c.x, 1u), vec4<u32>(58632u, 1u, u_input.c.x, u_input.c.x))), 22u)], Struct_2(firstTrailingBit(var_1.a.xzw), 56389u >> (u_input.c.x % 32u), u_input.c.x, global3[_wgslsmith_index_u32(u_input.c.x, 8u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b, var_1.d, global0.x, global2[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<f32>(var_1.d, -499f, 640f, var_1.d)))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(abs(0u), func_1(global1[_wgslsmith_index_u32(u_input.c.x, 22u)]), Struct_3(vec2<bool>(var_1.e.x, true), global3[_wgslsmith_index_u32(u_input.c.x, 8u)], u_input.c.x, vec3<f32>(-665f, var_1.d, -2154f)), func_1(Struct_3(vec2<bool>(var_1.e.x, var_1.e.x), global3[_wgslsmith_index_u32(51792u, 8u)], 4237u, global0.wxx)))).x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~0u, 6u)] + -131f), 359f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - var_1.d) + _wgslsmith_f_op_f32(var_1.d - -1093f))))));
    global3 = array<Struct_1, 8>();
    var var_2 = ~(-var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~(~4294967295u), ~reverseBits(0u)), -838f);
}

