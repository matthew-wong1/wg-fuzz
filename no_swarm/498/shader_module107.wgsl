struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(i32(-2147483648), vec4<bool>(true, true, true, false), -1i, Struct_1(vec4<u32>(49250u, 46984u, 1u, 4294967295u), vec3<u32>(18731u, 23830u, 33368u), vec4<bool>(false, false, true, false), i32(-2147483648))), Struct_2(-16803i, vec4<bool>(true, false, false, true), i32(-2147483648), Struct_1(vec4<u32>(45273u, 1u, 33440u, 1u), vec3<u32>(4831u, 30331u, 4294967295u), vec4<bool>(true, true, true, true), -57293i)), Struct_2(-15822i, vec4<bool>(true, false, false, true), 0i, Struct_1(vec4<u32>(4556u, 1u, 0u, 10289u), vec3<u32>(14698u, 4876u, 57459u), vec4<bool>(false, false, true, false), -38489i)), Struct_2(-1i, vec4<bool>(true, false, true, true), 0i, Struct_1(vec4<u32>(63903u, 23032u, 1u, 27687u), vec3<u32>(109844u, 115862u, 319u), vec4<bool>(false, false, true, true), -33512i)), Struct_2(15363i, vec4<bool>(true, false, false, false), -1i, Struct_1(vec4<u32>(37102u, 0u, 1u, 0u), vec3<u32>(26934u, 4294967295u, 1u), vec4<bool>(true, false, true, true), i32(-2147483648))), Struct_2(1i, vec4<bool>(false, false, true, true), 21796i, Struct_1(vec4<u32>(4294967295u, 54095u, 4294967295u, 1u), vec3<u32>(8694u, 4294967295u, 4294967295u), vec4<bool>(false, false, true, true), 1i)), Struct_2(0i, vec4<bool>(false, false, false, true), 11010i, Struct_1(vec4<u32>(1u, 16795u, 26588u, 0u), vec3<u32>(31008u, 27163u, 17440u), vec4<bool>(true, false, false, false), -7374i)), Struct_2(0i, vec4<bool>(false, true, true, true), 2147483647i, Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 4155u), vec3<u32>(1u, 4294967295u, 4294967295u), vec4<bool>(true, false, true, true), 0i)), Struct_2(-30875i, vec4<bool>(true, false, true, false), 0i, Struct_1(vec4<u32>(1u, 0u, 0u, 1u), vec3<u32>(1u, 32275u, 13037u), vec4<bool>(false, false, true, true), 27904i)), Struct_2(-1i, vec4<bool>(true, true, true, false), -22121i, Struct_1(vec4<u32>(1u, 14345u, 33128u, 25025u), vec3<u32>(4294967295u, 52895u, 4294967295u), vec4<bool>(false, true, false, false), 32836i)), Struct_2(1i, vec4<bool>(true, false, false, true), -40764i, Struct_1(vec4<u32>(21195u, 1u, 0u, 35644u), vec3<u32>(11803u, 39762u, 20029u), vec4<bool>(false, true, true, false), i32(-2147483648))), Struct_2(23918i, vec4<bool>(true, false, true, false), i32(-2147483648), Struct_1(vec4<u32>(1u, 4294967295u, 35350u, 1u), vec3<u32>(10315u, 1u, 4294967295u), vec4<bool>(true, false, true, true), -7768i)), Struct_2(i32(-2147483648), vec4<bool>(false, true, false, true), -40293i, Struct_1(vec4<u32>(0u, 83214u, 19572u, 0u), vec3<u32>(1u, 1u, 34344u), vec4<bool>(false, true, true, false), 36116i)), Struct_2(0i, vec4<bool>(false, false, false, false), 11553i, Struct_1(vec4<u32>(47330u, 22923u, 17109u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec4<bool>(false, true, false, false), 2147483647i)), Struct_2(36759i, vec4<bool>(true, false, true, false), 2147483647i, Struct_1(vec4<u32>(1u, 0u, 4294967295u, 39648u), vec3<u32>(31536u, 0u, 79108u), vec4<bool>(true, false, true, true), -1i)), Struct_2(-15008i, vec4<bool>(false, true, false, true), 0i, Struct_1(vec4<u32>(1u, 0u, 0u, 22797u), vec3<u32>(1u, 6329u, 43999u), vec4<bool>(false, true, true, false), 28483i)), Struct_2(55866i, vec4<bool>(true, true, false, true), 2147483647i, Struct_1(vec4<u32>(4294967295u, 6160u, 32507u, 0u), vec3<u32>(0u, 49814u, 4294967295u), vec4<bool>(true, true, false, false), -4321i)), Struct_2(1i, vec4<bool>(true, true, true, false), -9957i, Struct_1(vec4<u32>(44471u, 0u, 3578u, 4294967295u), vec3<u32>(1u, 34668u, 259u), vec4<bool>(true, false, true, true), 25983i)), Struct_2(2147483647i, vec4<bool>(false, false, false, true), 3243i, Struct_1(vec4<u32>(0u, 4091u, 2472u, 26678u), vec3<u32>(1u, 0u, 4294967295u), vec4<bool>(false, true, true, false), i32(-2147483648))), Struct_2(-15644i, vec4<bool>(false, true, false, false), 24089i, Struct_1(vec4<u32>(1u, 37611u, 4294967295u, 1u), vec3<u32>(0u, 20700u, 1u), vec4<bool>(false, true, false, false), -31127i)), Struct_2(-1i, vec4<bool>(true, true, false, true), 38896i, Struct_1(vec4<u32>(5150u, 23261u, 4294967295u, 199u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<bool>(true, false, true, true), -11327i)), Struct_2(-26025i, vec4<bool>(false, true, false, true), -43506i, Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 44394u), vec3<u32>(9292u, 1u, 0u), vec4<bool>(false, true, true, true), 6303i)), Struct_2(50982i, vec4<bool>(false, true, true, false), i32(-2147483648), Struct_1(vec4<u32>(0u, 7713u, 1u, 48044u), vec3<u32>(1u, 42810u, 59541u), vec4<bool>(true, false, true, true), 1i)), Struct_2(1i, vec4<bool>(false, false, true, false), i32(-2147483648), Struct_1(vec4<u32>(1u, 1u, 0u, 7690u), vec3<u32>(1u, 4294967295u, 1u), vec4<bool>(true, true, true, true), 1i)), Struct_2(i32(-2147483648), vec4<bool>(false, true, false, false), 27214i, Struct_1(vec4<u32>(31927u, 0u, 0u, 4294967295u), vec3<u32>(30588u, 75804u, 39393u), vec4<bool>(false, false, false, true), -1i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(~max(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, u_input.a), -14790i), ~u_input.b & u_input.a), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(428f)) * _wgslsmith_f_op_f32(-483f * 1000f)) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1083f * -939f))), -507f < _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1374f, 511f), _wgslsmith_f_op_f32(416f + -195f), true)), !(countOneBits(u_input.a) != _wgslsmith_clamp_i32(u_input.b, u_input.b, -1i)), true), -58990i, Struct_1(min(vec4<u32>(27528u, 0u, u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x)), ~u_input.c), u_input.c.zxx, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), -2147483647i));
    var var_1 = Struct_2(_wgslsmith_dot_vec3_i32(abs((vec3<i32>(var_0.d.d, 1i, 155i) & vec3<i32>(-52079i, var_0.c, u_input.b)) << (_wgslsmith_div_vec3_u32(vec3<u32>(58459u, u_input.c.x, 72048u), u_input.c.ywx) % vec3<u32>(32u))), (~vec3<i32>(u_input.a, u_input.b, -2147483647i) & vec3<i32>(u_input.b, 61073i, u_input.b)) ^ firstLeadingBit(-vec3<i32>(u_input.a, u_input.a, -16542i))), !var_0.b, 8958i, var_0.d);
    global0 = array<Struct_2, 25>();
    var var_2 = ~vec2<u32>(var_1.d.a.x, 21658u) >> (abs(max(_wgslsmith_sub_vec2_u32(~u_input.c.ww, vec2<u32>(64928u, 1u)), ~(var_0.d.b.xy & vec2<u32>(var_0.d.a.x, 4294967295u)))) % vec2<u32>(32u));
    var var_3 = 4661i;
    return var_0.d.c;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(u_input.b & u_input.a, !func_3(), reverseBits(abs(u_input.b)), Struct_1(abs(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 1u), vec3<u32>(0u, u_input.c.x, 85626u)), firstLeadingBit(u_input.c.x), ~u_input.c.x)), ~(~u_input.c.yyz), !vec4<bool>(any(vec3<bool>(false, true, true)), true, false, true), u_input.a));
    let var_1 = _wgslsmith_mult_u32(1u, countOneBits(max(~var_0.d.a.x, ~4294967295u)));
    let var_2 = !vec3<bool>(!(~var_0.d.d >= u_input.a), var_0.b.x, all(vec2<bool>(var_0.d.c.x, var_0.b.x)));
    var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 25u)];
    var_0 = global0[_wgslsmith_index_u32(~u_input.c.x, 25u)];
    return global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~u_input.c.x, ~(~u_input.c.x)), 25u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = 4294967295u;
    var var_1 = func_2();
    let var_2 = Struct_1(~(~select(~vec4<u32>(arg_1.b.x, u_input.c.x, 4294967295u, arg_0.x), func_2().d.a, arg_1.c.x && var_1.b.x)), arg_0, !arg_1.c, 2147483647i);
    let var_3 = u_input.b;
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(916f, 800f, -1103f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(872f, 1245f, -821f), vec3<f32>(506f, 214f, 946f)))))))), _wgslsmith_div_vec3_f32(vec3<f32>(1217f, _wgslsmith_f_op_f32(f32(-1f) * -1217f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(104f)) - 900f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1460f, -1203f, -367f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-317f, -126f, -252f))) - vec3<f32>(-350f, _wgslsmith_f_op_f32(max(270f, 734f)), _wgslsmith_f_op_f32(415f + 2545f)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4 + var_4));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 25>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1379f, -1009f, 685f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1202f, -1050f, -292f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1782f, -968f, -1024f))))) * vec3<f32>(135f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(336f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1305f)))) * _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_add_vec3_u32(~abs(u_input.c.wzx), ~(~vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u))), Struct_1(~(u_input.c >> (u_input.c % vec4<u32>(32u))), vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), _wgslsmith_sub_u32(u_input.c.x, u_input.c.x), u_input.c.x), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), false, true), u_input.a))));
    let var_1 = u_input.c.wx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_u32(4294967295u, u_input.c.x)), -1516f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1(u_input.c.wxw, Struct_1(vec4<u32>(4294967295u, 1u, var_1.x, var_1.x), vec3<u32>(15771u, u_input.c.x, u_input.c.x), vec4<bool>(false, true, true, false), u_input.b))).x)) - _wgslsmith_f_op_f32(abs(var_0.x)))));
}

