struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec3<i32>(-31061i, -1i, -27152i), false, 0i, vec2<f32>(-248f, 553f)), Struct_1(vec3<i32>(i32(-2147483648), -27258i, 18231i), false, i32(-2147483648), vec2<f32>(-1218f, 1512f)), -1000f), Struct_2(Struct_1(vec3<i32>(-53967i, i32(-2147483648), -19979i), true, -1i, vec2<f32>(-1000f, 1000f)), Struct_1(vec3<i32>(21194i, 16287i, -56384i), true, 4740i, vec2<f32>(-210f, -956f)), -1701f), Struct_2(Struct_1(vec3<i32>(48054i, -2103i, -1i), true, 1i, vec2<f32>(846f, 192f)), Struct_1(vec3<i32>(-34598i, 2147483647i, 0i), true, 1i, vec2<f32>(162f, -277f)), 101f), Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, i32(-2147483648)), true, -52220i, vec2<f32>(-650f, 2749f)), Struct_1(vec3<i32>(-19084i, -1i, 0i), false, 2147483647i, vec2<f32>(1980f, 2193f)), -471f), Struct_2(Struct_1(vec3<i32>(-1i, -15569i, 0i), false, 7062i, vec2<f32>(-930f, -307f)), Struct_1(vec3<i32>(-1i, 1i, -34911i), false, -213i, vec2<f32>(-1463f, -1000f)), 1417f), Struct_2(Struct_1(vec3<i32>(-25755i, -38799i, -1i), true, -1i, vec2<f32>(363f, -386f)), Struct_1(vec3<i32>(1i, -49232i, 1i), false, -1i, vec2<f32>(300f, -535f)), 1821f), Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, 1i), false, -7297i, vec2<f32>(1572f, 786f)), Struct_1(vec3<i32>(-8676i, 22328i, -4913i), false, 2147483647i, vec2<f32>(301f, -291f)), -1000f), Struct_2(Struct_1(vec3<i32>(2147483647i, 40618i, 7474i), false, -21529i, vec2<f32>(722f, -397f)), Struct_1(vec3<i32>(1i, -1i, 18499i), false, -1i, vec2<f32>(860f, -273f)), 1518f), Struct_2(Struct_1(vec3<i32>(0i, -1i, -1i), false, -28284i, vec2<f32>(-1996f, -585f)), Struct_1(vec3<i32>(2147483647i, 46344i, -1i), false, -11629i, vec2<f32>(-1000f, -813f)), 623f), Struct_2(Struct_1(vec3<i32>(2147483647i, 1i, -35385i), false, -83274i, vec2<f32>(491f, 993f)), Struct_1(vec3<i32>(-60785i, -37630i, 0i), false, -47125i, vec2<f32>(-197f, -1222f)), 1426f), Struct_2(Struct_1(vec3<i32>(28646i, -41471i, -1i), true, 5638i, vec2<f32>(672f, -121f)), Struct_1(vec3<i32>(26311i, -1i, 2147483647i), false, i32(-2147483648), vec2<f32>(-604f, 1110f)), 338f));

var<private> global1: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_2) -> u32 {
    var var_0 = vec3<bool>(~(~2147483647i) == abs(arg_2.a.a.x), arg_2.b.b, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -131f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -713f)), _wgslsmith_f_op_f32(-arg_2.b.d.x)));
    let var_2 = !(!vec4<bool>(arg_2.b.b, any(vec3<bool>(arg_2.a.b, var_0.x, true)), true, var_0.x));
    return firstTrailingBit(arg_0.x);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> vec4<f32> {
    var var_0 = global0[_wgslsmith_index_u32(0u, 11u)];
    global1 = firstLeadingBit(arg_0.b);
    var var_1 = select(arg_0.d.c.wzx, arg_3.wxz, all(!(!vec2<bool>(arg_0.d.a.b.b, false))));
    var var_2 = select(func_3(abs(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, arg_0.b, arg_0.b), vec4<u32>(4294967295u, arg_0.b, 71194u, arg_0.b)))), vec3<u32>(45607u, 51551u, func_3(vec4<u32>(arg_0.b, 4294967295u, 31007u, arg_0.b) ^ vec4<u32>(arg_0.b, 7119u, 1u, 7863u), ~vec3<u32>(64393u, 4294967295u, 1u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.b, arg_0.b, arg_0.b), 11u)])), Struct_2(Struct_1(vec3<i32>(62171i, var_0.b.a.x, 4545i), any(arg_3), -20100i, vec2<f32>(-758f, var_0.b.d.x)), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(47079i, 1i, var_0.a.c), u_input.a), all(vec2<bool>(arg_3.x, true)), 0i, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, var_0.b.d.x) - vec2<f32>(469f, arg_1.a.d.x))), _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_div_f32(arg_1.a.d.x, -219f)))), arg_0.b, false);
    let var_3 = !all(arg_0.d.c.wxz);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(var_0.b.d.x + -288f), -1770f, -1000f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-941f, arg_1.a.d.x, -689f, var_0.c) * vec4<f32>(-750f, var_0.a.d.x, var_0.a.d.x, 644f)) + vec4<f32>(var_0.b.d.x, arg_0.d.b.d.x, arg_1.c, var_0.c))))));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec3<i32>) -> u32 {
    let var_0 = arg_1.a.b;
    let var_1 = Struct_3(Struct_1(_wgslsmith_mult_vec3_i32(-vec3<i32>(-12862i, arg_2.x, 16088i), vec3<i32>(2147483647i << (0u % 32u), -u_input.b.x, -1i)), true, 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, arg_1.b.x) - _wgslsmith_f_op_vec2_f32(arg_1.b.wy + arg_1.b.ww)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.b.x, arg_1.a.d.x))) + _wgslsmith_f_op_vec2_f32(round(arg_1.b.xy))))), _wgslsmith_f_op_vec4_f32(func_4(Struct_5(_wgslsmith_mod_i32(4341i, 32634i) >> (1u % 32u), func_3(~vec4<u32>(4582u, 14505u, 57996u, 0u), select(vec3<u32>(5540u, 36203u, 1u), vec3<u32>(20654u, 4294967295u, 6423u), false), Struct_2(arg_1.a, arg_1.a, arg_1.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a.d.x, arg_1.a.d.x), vec2<f32>(arg_1.a.d.x, arg_1.b.x)))), Struct_4(Struct_2(arg_1.a, arg_1.a, -797f), arg_1.a, select(vec4<bool>(false, arg_1.a.b, false, var_0), vec4<bool>(true, false, false, true), vec4<bool>(arg_1.a.b, arg_1.a.b, false, arg_1.a.b)))), Struct_2(Struct_1(u_input.b.xww | vec3<i32>(-2147483647i, u_input.c.x, arg_1.a.c), !var_0, _wgslsmith_mod_i32(-4054i, 117i), _wgslsmith_f_op_vec2_f32(sign(arg_1.b.zw))), Struct_1(-vec3<i32>(25387i, arg_1.a.a.x, arg_2.x), var_0 | arg_1.a.b, arg_1.a.a.x, arg_1.b.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1237f - arg_1.a.d.x))), !var_0, !vec4<bool>(true, var_0, true, !var_0))));
    var var_2 = Struct_3(var_1.a, _wgslsmith_f_op_vec4_f32(var_1.b - _wgslsmith_f_op_vec4_f32(-var_1.b)));
    return 18465u;
}

fn func_5(arg_0: u32) -> bool {
    global1 = 60355u;
    var var_0 = Struct_5(u_input.d, 4294967295u, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1500f, 1311f)) * _wgslsmith_f_op_f32(select(1464f, -1144f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f))))), Struct_4(Struct_2(Struct_1(~u_input.a, true, u_input.c.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1439f, -579f), vec2<f32>(-710f, 536f), vec2<bool>(false, true)))), Struct_1(reverseBits(vec3<i32>(u_input.c.x, -7111i, -1i)), true, -1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-421f, 385f) - vec2<f32>(-357f, 1232f))), 395f), Struct_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, u_input.b.x, -11376i), vec3<i32>(-12941i, -20092i, -10382i)), 1u < max(arg_0, 143978u), 1i, vec2<f32>(1f, 1f)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))));
    var var_1 = ~(~vec4<u32>(~(~arg_0), min(var_0.b, ~44015u), arg_0, 7829u));
    var var_2 = ~(~arg_0);
    let var_3 = ~reverseBits(u_input.c);
    return !var_0.d.c.x & var_0.d.a.a.b;
}

fn func_1() -> vec2<u32> {
    let var_0 = !func_5(1u | ~func_2(-22604i, Struct_3(Struct_1(vec3<i32>(40825i, 10756i, -13074i), false, u_input.c.x, vec2<f32>(264f, 1310f)), vec4<f32>(407f, -610f, 1106f, 301f)), u_input.a));
    global0 = array<Struct_2, 11>();
    var var_1 = Struct_3(Struct_1(~u_input.a, true, ~(-2147483647i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f - 1243f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-285f * -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(538f, -322f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1129f - 1082f) + _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-517f))) - _wgslsmith_f_op_f32(f32(-1f) * -2039f)), _wgslsmith_f_op_f32(f32(-1f) * -168f)));
    let var_2 = Struct_4(Struct_2(var_1.a, Struct_1(max(vec3<i32>(var_1.a.c, u_input.d, var_1.a.c), abs(u_input.b.wwy)), var_1.a.b || true, ~(~(-44310i)), var_1.a.d), _wgslsmith_f_op_f32(round(var_1.a.d.x))), var_1.a, select(select(select(vec4<bool>(false, false, var_0, false), !vec4<bool>(true, var_1.a.b, var_1.a.b, var_1.a.b), !vec4<bool>(var_0, true, var_0, var_0)), vec4<bool>(all(vec4<bool>(true, true, true, var_1.a.b)), var_1.a.b && true, false, var_1.a.b == false), !select(vec4<bool>(false, var_0, true, false), vec4<bool>(false, true, var_0, var_0), var_1.a.b)), vec4<bool>(true, true, true, true), select(true, any(!vec4<bool>(false, false, var_1.a.b, var_0)), var_1.a.b & true)));
    let var_3 = Struct_3(var_2.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.a.d.x + _wgslsmith_f_op_f32(max(var_1.b.x, var_1.a.d.x))), _wgslsmith_f_op_f32(-491f + 199f), -1782f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.x)) - 604f))));
    return ~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(15875u, 0u)), max(vec2<u32>(63223u, 128564u), vec2<u32>(18190u, 28923u))) >> (vec2<u32>(_wgslsmith_clamp_u32(23626u, 60473u, 38519u), 0u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), var_2.c.yw), vec2<u32>(abs(4294967295u), countOneBits(0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-211f - 433f), 148f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -785f))), _wgslsmith_f_op_f32(f32(-1f) * -1826f))));
    let var_1 = ~_wgslsmith_dot_vec2_u32(func_1(), vec2<u32>(1u, 1u));
    global1 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~6011u), vec2<u32>(~(~(~0u)), ~1u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1048f * var_0.x));
    var var_3 = true;
    global1 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1139f, _wgslsmith_f_op_f32(-var_0.x)), var_1);
}

