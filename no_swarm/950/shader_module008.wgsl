struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(0u, 27344u, 47690u, 22215u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(59106u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 43222u, 23849u, 0u), vec4<u32>(0u, 1u, 6537u, 1u), vec4<u32>(45783u, 36274u, 0u, 0u), vec4<u32>(1u, 1u, 0u, 16523u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 23945u, 4294967295u, 10731u), vec4<u32>(0u, 1u, 59134u, 625u), vec4<u32>(4294967295u, 68059u, 4294967295u, 56646u), vec4<u32>(4294967295u, 12654u, 102883u, 89592u), vec4<u32>(4294967295u, 79727u, 4294967295u, 36020u), vec4<u32>(1u, 4294967295u, 37037u, 22329u), vec4<u32>(24637u, 4294967295u, 1u, 0u), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(73534u, 4294967295u, 4294967295u, 4784u), vec4<u32>(4294967295u, 12140u, 0u, 1u), vec4<u32>(38782u, 1u, 1u, 0u), vec4<u32>(1u, 1u, 4107u, 7960u), vec4<u32>(17862u, 23964u, 4646u, 1u), vec4<u32>(29315u, 30827u, 1u, 1u), vec4<u32>(67785u, 14537u, 13853u, 31133u), vec4<u32>(4294967295u, 1u, 9690u, 37401u), vec4<u32>(41747u, 0u, 16143u, 23888u), vec4<u32>(0u, 6776u, 61478u, 0u), vec4<u32>(1u, 117621u, 28695u, 39010u), vec4<u32>(1u, 4294967295u, 1u, 35347u), vec4<u32>(50246u, 36993u, 52863u, 0u), vec4<u32>(4294967295u, 65692u, 0u, 4294967295u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> vec2<u32> {
    var var_0 = Struct_1(any(select(vec3<bool>(true, true, arg_1.x <= 1i), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))))), ~(~reverseBits(u_input.a)), !select(vec4<bool>(false, all(vec2<bool>(false, true)), arg_1.x > 1i, false), vec4<bool>(true, all(vec3<bool>(false, true, true)), -28015i >= u_input.d, any(vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true)), !vec2<bool>(true, u_input.a >= ~arg_0));
    let var_1 = Struct_2(Struct_1(true, 1738u, vec4<bool>(false, var_0.d.x, var_0.c.x, 34080u < ~u_input.a), var_0.d), Struct_1(!(0i >= reverseBits(arg_1.x)), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(56632u, var_0.b, 1107u)) | (43892u >> (1u % 32u))), vec4<bool>(!(var_0.d.x == var_0.d.x), true, true, all(vec4<bool>(var_0.d.x, var_0.c.x, false, var_0.d.x))), !select(!var_0.c.yw, select(var_0.c.xz, var_0.c.yw, vec2<bool>(false, var_0.d.x)), true)), -724f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-2627f, -1690f)), _wgslsmith_f_op_f32(f32(-1f) * -301f), _wgslsmith_f_op_f32(-527f + 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1903f, -631f, -551f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-727f, -605f, -699f)), vec3<f32>(-1424f, _wgslsmith_f_op_f32(ceil(1200f)), _wgslsmith_f_op_f32(step(259f, -612f)))))));
    let var_2 = select(vec4<bool>(var_0.d.x, arg_0 < firstTrailingBit(9077u), true, var_0.d.x), !(!vec4<bool>(var_1.b.a, all(vec3<bool>(true, false, var_0.c.x)), false, true)), vec4<bool>(!(_wgslsmith_sub_u32(11384u, u_input.c.x) == _wgslsmith_mod_u32(4294967295u, 18581u)), !(select(21770u, u_input.c.x, var_1.a.a) >= _wgslsmith_div_u32(var_1.a.b, 7724u)), !(reverseBits(arg_0) != (4294967295u >> (1u % 32u))), var_0.d.x));
    global0 = array<vec4<u32>, 30>();
    var_0 = Struct_1(any(select(!(!var_0.c), var_2, var_2)), var_0.b, !vec4<bool>(!var_0.a | var_0.a, false, any(var_2.zyw), all(select(vec3<bool>(true, true, var_1.a.c.x), vec3<bool>(var_1.a.d.x, var_0.c.x, false), var_1.b.c.yxw))), select(var_1.a.c.xz, vec2<bool>(!var_0.d.x, false), select(select(vec2<bool>(var_0.a, true), vec2<bool>(var_2.x, true), select(vec2<bool>(var_2.x, var_0.a), vec2<bool>(var_1.a.a, var_2.x), var_1.a.c.wx)), select(!vec2<bool>(var_0.c.x, var_0.d.x), !var_0.d, var_0.a), var_2.xz)));
    return abs(vec2<u32>(reverseBits(1u ^ arg_0) & 11018u, ~var_0.b));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 38004i;
    var_0 = u_input.d;
    global0 = array<vec4<u32>, 30>();
    let var_1 = vec2<i32>(-abs(~u_input.d), _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(1i, u_input.d, u_input.d), vec3<i32>(u_input.d, -1i, -8625i)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, -2811i))))) << (_wgslsmith_div_vec2_u32(select(~u_input.c & _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b, u_input.b), vec2<u32>(arg_1.b, 4294967295u)), ~u_input.c, true), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(func_3(arg_1.b, vec4<i32>(35115i, u_input.d, u_input.d, u_input.d)), u_input.c), u_input.c)) % vec2<u32>(32u));
    global0 = array<vec4<u32>, 30>();
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x - arg_0.c)))), arg_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-606f - -1931f))), 1529f, _wgslsmith_f_op_f32(floor(arg_0.d.x)));
    global0 = array<vec4<u32>, 30>();
    let var_1 = arg_0;
    global0 = array<vec4<u32>, 30>();
    global0 = array<vec4<u32>, 30>();
    return Struct_1((!(!var_1.b.a) | var_1.a.a) && var_1.a.d.x, 0u, vec4<bool>(!arg_0.b.c.x, all(!vec2<bool>(arg_0.b.a, false)), true, true), arg_0.a.c.wy);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(func_4(Struct_2(Struct_1(true, u_input.a, vec4<bool>(false, true, false, false), vec2<bool>(true, true)), func_2(all(vec3<bool>(true, false, true)), Struct_1(false, 55953u, vec4<bool>(true, true, true, false), vec2<bool>(false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1182f))), vec3<f32>(1f, 1f, 1f)), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1600f * -570f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(908f, 1000f)), 1182f), firstLeadingBit(~(-1i))), func_4(Struct_2(Struct_1(any(vec2<bool>(false, false)), u_input.b, vec4<bool>(true, true, true, true), vec2<bool>(true, true)), func_4(Struct_2(Struct_1(false, 1u, vec4<bool>(true, false, true, true), vec2<bool>(true, false)), Struct_1(true, 10996u, vec4<bool>(true, true, true, true), vec2<bool>(true, false)), -304f, vec3<f32>(-1049f, 783f, -107f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1572f, -160f, 247f, 1000f)), u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -1617f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(404f, 1458f, 561f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1237f, -428f, 116f, -1021f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-163f, -161f, 205f, 427f) - vec4<f32>(397f, 874f, -1566f, 1000f)), true)) - vec4<f32>(216f, _wgslsmith_f_op_f32(f32(-1f) * -1542f), _wgslsmith_f_op_f32(799f - 324f), _wgslsmith_f_op_f32(f32(-1f) * -592f))), min(-2147483647i, u_input.d)), 1000f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1602f, 1801f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(913f * -542f), _wgslsmith_f_op_f32(f32(-1f) * -1130f))), vec3<f32>(1f, 1f, 1f), true)));
    var var_1 = u_input.d;
    var var_2 = var_0.b.d.x;
    var_0 = Struct_2(var_0.a, var_0.a, _wgslsmith_f_op_f32(-var_0.c), var_0.d);
    var_2 = !any(vec4<bool>(!(-312f > var_0.c), var_0.b.d.x, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c) == _wgslsmith_div_u32(26385u, 24292u), var_0.b.c.x));
    return Struct_1(u_input.d >= _wgslsmith_clamp_i32(-2147483647i, 2147483647i, 2147483647i), 4294967295u, func_2(false, Struct_1(any(var_0.b.c.yyw), u_input.a, select(select(var_0.a.c, var_0.a.c, var_0.a.c.x), !var_0.a.c, func_4(Struct_2(var_0.a, Struct_1(true, u_input.c.x, var_0.a.c, vec2<bool>(var_0.a.c.x, var_0.a.a)), 274f, vec3<f32>(var_0.d.x, -1653f, var_0.c)), vec4<f32>(var_0.d.x, var_0.d.x, -611f, 281f), u_input.d).a), vec2<bool>(true, var_0.b.d.x))).c, var_0.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0;
    global0 = array<vec4<u32>, 30>();
    let var_2 = vec3<u32>(~(~(~34539u)) >> (var_1.b % 32u), ~max(12459u, 826u), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(3711u, 28468u, 58304u), vec3<u32>(55146u, 0u, var_0.b)), _wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(var_0.b, 10359u), u_input.c)), 1u) >> (0u % 32u));
    global0 = array<vec4<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1289f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(712f)))))), vec4<i32>(0i, u_input.d, u_input.d, firstTrailingBit(-26625i)), func_4(Struct_2(var_0, func_2(select(false, var_0.d.x, false), Struct_1(false, 75899u, vec4<bool>(true, false, var_0.c.x, false), vec2<bool>(var_1.c.x, true))), 1037f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1015f, -715f, -587f), vec3<f32>(1111f, -259f, -804f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-140f, 172f, 447f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(1477f * 2446f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1687f) * _wgslsmith_f_op_f32(f32(-1f) * -358f)), 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -694f), _wgslsmith_f_op_f32(floor(-1996f))))), u_input.d).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(207f, 364f, 1474f, -1220f), vec4<f32>(1000f, 2546f, -1281f, -1028f))))));
}

