struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(-451f, Struct_1(-181f, vec4<u32>(29205u, 4213u, 108202u, 1u), false, 42982u, 21940u), vec4<u32>(45944u, 4294967295u, 74390u, 34151u), vec4<i32>(i32(-2147483648), -24538i, i32(-2147483648), -28356i), vec4<i32>(29220i, 2147483647i, -2225i, -28304i)), Struct_2(-206f, Struct_1(-578f, vec4<u32>(22651u, 0u, 88304u, 4294967295u), true, 601u, 0u), vec4<u32>(64943u, 1u, 20580u, 10728u), vec4<i32>(0i, 7550i, -19284i, 1i), vec4<i32>(-55048i, 0i, 4728i, i32(-2147483648))), Struct_2(-423f, Struct_1(1000f, vec4<u32>(9464u, 24171u, 9884u, 1u), true, 4294967295u, 51718u), vec4<u32>(0u, 0u, 42420u, 1u), vec4<i32>(-18748i, i32(-2147483648), 19842i, 1i), vec4<i32>(-2751i, 3479i, -5839i, 1i)), Struct_2(945f, Struct_1(198f, vec4<u32>(4294967295u, 0u, 46879u, 22766u), true, 1599u, 0u), vec4<u32>(11361u, 41079u, 1u, 1u), vec4<i32>(9474i, -57781i, -2173i, 0i), vec4<i32>(19183i, 20257i, 6189i, 12293i)), Struct_2(-117f, Struct_1(-1033f, vec4<u32>(1u, 4294967295u, 4294967295u, 36041u), false, 0u, 0u), vec4<u32>(0u, 36248u, 28434u, 12996u), vec4<i32>(i32(-2147483648), -52548i, 1i, i32(-2147483648)), vec4<i32>(8503i, 1867i, 2147483647i, -7255i)), Struct_2(116f, Struct_1(674f, vec4<u32>(20880u, 1u, 3439u, 0u), true, 0u, 4294967295u), vec4<u32>(1u, 25462u, 0u, 8925u), vec4<i32>(1i, -41050i, 0i, -44367i), vec4<i32>(2147483647i, 0i, 0i, 2566i)), Struct_2(2243f, Struct_1(1322f, vec4<u32>(26063u, 25384u, 1u, 21949u), false, 0u, 13170u), vec4<u32>(4294967295u, 104637u, 1u, 31764u), vec4<i32>(i32(-2147483648), -29259i, -26642i, 0i), vec4<i32>(-1i, -1i, 2147483647i, -216i)), Struct_2(-265f, Struct_1(1485f, vec4<u32>(10674u, 1u, 37792u, 17575u), false, 66868u, 31879u), vec4<u32>(1u, 9594u, 1u, 81107u), vec4<i32>(-647i, 2147483647i, 2147483647i, -1791i), vec4<i32>(-62986i, i32(-2147483648), -38622i, -1i)), Struct_2(1363f, Struct_1(-1110f, vec4<u32>(4294967295u, 1u, 92640u, 5489u), false, 4294967295u, 48124u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<i32>(-1i, i32(-2147483648), -5182i, 4985i), vec4<i32>(-32143i, 0i, i32(-2147483648), i32(-2147483648))), Struct_2(951f, Struct_1(-1000f, vec4<u32>(4294967295u, 1u, 11795u, 0u), false, 0u, 4294967295u), vec4<u32>(1u, 4298u, 1u, 1u), vec4<i32>(0i, 27307i, i32(-2147483648), 0i), vec4<i32>(2147483647i, i32(-2147483648), 13649i, i32(-2147483648))), Struct_2(833f, Struct_1(-677f, vec4<u32>(1u, 3957u, 103152u, 26731u), true, 1u, 9476u), vec4<u32>(1u, 0u, 96075u, 1u), vec4<i32>(2147483647i, -54407i, -1i, 52094i), vec4<i32>(31351i, 2147483647i, -1i, -1171i)));

var<private> global2: u32 = 1u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = !vec4<bool>(true, true, ~0u != _wgslsmith_add_u32(firstTrailingBit(u_input.d.x), 25951u), true);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1037f)))))), Struct_3(-reverseBits(global0.x) ^ global0.x, vec2<i32>(~(~u_input.c.x), u_input.a), ~u_input.d.x));
    let var_2 = Struct_4(var_1.a, Struct_3(u_input.a, vec2<i32>(~u_input.c.x, firstLeadingBit(1012i) << (var_1.b.c % 32u)), ~(~_wgslsmith_clamp_u32(var_1.b.c, u_input.e, 4294967295u))));
    let var_3 = Struct_5(all(!vec3<bool>(true, false, !var_0.x)), ~u_input.d, var_1.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_2.a.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a.x)) * var_2.a.x)) + var_1.a.x), select(~4294967295u, var_1.b.c, false));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.d, var_1.a.x, 1030f, -1075f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -799f, var_2.a.x, -347f)), !vec4<bool>(false, var_3.a, false, var_0.x))))), vec4<f32>(1716f, var_2.a.x, _wgslsmith_f_op_f32(max(var_3.d, var_3.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_1.a.x, var_3.d)))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d, var_1.a.x, 879f, var_3.d) + vec4<f32>(-861f, var_2.a.x, -456f, var_3.d))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, 1734f, var_1.a.x, -427f)) - vec4<f32>(-827f, -514f, 1861f, var_3.d)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -191f), 1871f, 630f, 1000f))))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1664f - _wgslsmith_f_op_f32(exp2(var_1.a.x))) - -2540f), 1060f);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(310f - -678f)));
    global0 = vec3<i32>(-42931i, global0.x & -_wgslsmith_mod_i32(arg_2.a, 2330i), u_input.c.x);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(276f, arg_0.x))), arg_2);
    let var_2 = arg_2;
    var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(func_3()), var_1.b);
    return u_input.e;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2) -> f32 {
    global2 = arg_1.x;
    global1 = array<Struct_2, 11>();
    global1 = array<Struct_2, 11>();
    global2 = arg_1.x;
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(step(arg_2.a, -1321f))), -247f))), Struct_3(~_wgslsmith_add_i32(firstLeadingBit(-29523i), global0.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(~4826i, ~global0.x), _wgslsmith_sub_vec2_i32(global0.zx, arg_2.e.wz) << (min(u_input.b.xz, u_input.d.xy) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(arg_2.e.x, 3073i)) ^ u_input.c.yx), _wgslsmith_dot_vec2_u32(arg_2.c.yw, arg_1)));
    return _wgslsmith_f_op_f32(-335f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(730f)))));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(func_4(u_input.d.x, vec2<u32>(_wgslsmith_add_u32(u_input.b.x, func_2(vec3<f32>(1223f, -748f, -157f), vec4<u32>(1u, 56804u, u_input.e, 89256u), Struct_3(54246i, vec2<i32>(525i, -2794i), 3045u))), 4294967295u) | max(vec2<u32>(~1u, u_input.d.x), max(~vec2<u32>(u_input.b.x, 57519u), firstLeadingBit(u_input.d.zz))), Struct_2(1476f, Struct_1(976f, vec4<u32>(select(u_input.d.x, u_input.e, arg_0), _wgslsmith_add_u32(u_input.b.x, u_input.d.x), 0u, 18119u), true, ~(~u_input.b.x), ~(~u_input.b.x)), firstTrailingBit(u_input.b), _wgslsmith_div_vec4_i32(u_input.c, u_input.c), -(~max(vec4<i32>(global0.x, global0.x, global0.x, -1i), vec4<i32>(8405i, u_input.c.x, global0.x, global0.x))))));
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, -8134i), _wgslsmith_mod_i32(u_input.a, 10927i)), _wgslsmith_div_vec4_i32(~u_input.c, max(u_input.c, vec4<i32>(-20172i, global0.x, global0.x, global0.x)))), u_input.c));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2207f, -510f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1068f, -511f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -491f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 549f) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(2746f, -1315f) - vec2<f32>(345f, 897f)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1615f, -238f))) * vec2<f32>(1f, -968f))))));
    global1 = array<Struct_2, 11>();
    var var_3 = arg_1.x;
    return ~(-(_wgslsmith_mod_i32(-2147483647i, global0.x) | var_1)) > global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, any(vec3<bool>(func_1(true, vec3<bool>(true, true, true)), any(vec3<bool>(true, false, false)), false)), true, all(vec3<bool>(true, false, func_1(true, vec3<bool>(false, true, false)))));
    var_0 = !vec4<bool>(any(vec3<bool>(false, false, var_0.x)), func_1(var_0.x, var_0.ywz), false, var_0.x);
    var_0 = vec4<bool>(_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(0i, 2147483647i)) == _wgslsmith_sub_i32(max(global0.x, 3527i), -u_input.a), !(43349u <= max(u_input.e, ~u_input.e)), true, true);
    var var_1 = -abs(-u_input.c.x);
    var var_2 = !(!var_0.x);
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-337f, 1205f) + vec2<f32>(1000f, 409f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(261f, -955f), vec2<f32>(1083f, 894f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-414f, 784f) + vec2<f32>(-275f, 190f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(613f, -720f), vec2<f32>(-1512f, 1144f)))))), Struct_3(_wgslsmith_dot_vec3_i32(u_input.c.yyy, vec3<i32>(~u_input.c.x, -u_input.a, 2381i)), vec2<i32>(~global0.x, _wgslsmith_add_i32(global0.x, -2147483647i)) & reverseBits(u_input.c.wx >> (vec2<u32>(17566u, 31041u) % vec2<u32>(32u))), 4294967295u));
    var_0 = vec4<bool>(var_0.x, false, var_0.x, any(select(select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, true, false, true)), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_3.b.c >= 1u), !(!vec4<bool>(true, false, var_0.x, var_0.x)), select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), !vec4<bool>(false, false, true, var_0.x)))));
    var_1 = var_3.b.b.x & (abs(_wgslsmith_dot_vec2_i32(~global0.xy, firstTrailingBit(global0.zz))) >> (select(_wgslsmith_sub_u32(min(1u, 4294967295u), 1u), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-114f, -1434f, var_3.a.x)), ~u_input.b, var_3.b), false) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yxx);
}

