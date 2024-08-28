struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(1u, 4294967295u, 4187u, 5651u, 0u);

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec4<i32>(2147483647i, 2147483647i, 0i, 42100i)), Struct_2(vec4<i32>(1i, 0i, 49624i, 10564i)), Struct_2(vec4<i32>(-18629i, -1i, 1i, 13745i)), Struct_2(vec4<i32>(8713i, -35661i, 38420i, 0i)), Struct_2(vec4<i32>(-14773i, -35454i, -1i, 0i)), Struct_2(vec4<i32>(5838i, -1294i, -2938i, 2147483647i)), Struct_2(vec4<i32>(-20859i, -13622i, 71561i, 1371i)), Struct_2(vec4<i32>(29651i, i32(-2147483648), 11152i, 0i)), Struct_2(vec4<i32>(7645i, -30491i, 1i, -4162i)), Struct_2(vec4<i32>(-44858i, 1179i, i32(-2147483648), 27629i)), Struct_2(vec4<i32>(67285i, -37363i, 0i, 2147483647i)), Struct_2(vec4<i32>(14426i, -16712i, 12687i, -57942i)), Struct_2(vec4<i32>(i32(-2147483648), 22707i, -118511i, -44736i)), Struct_2(vec4<i32>(52713i, -12359i, 26118i, -9782i)), Struct_2(vec4<i32>(47604i, -1i, i32(-2147483648), 1i)), Struct_2(vec4<i32>(0i, 66686i, 1i, 0i)), Struct_2(vec4<i32>(-6002i, 1i, i32(-2147483648), i32(-2147483648))), Struct_2(vec4<i32>(1i, 0i, i32(-2147483648), 46133i)), Struct_2(vec4<i32>(17147i, 1i, 1i, 44338i)), Struct_2(vec4<i32>(0i, -90955i, 3173i, 60641i)), Struct_2(vec4<i32>(3900i, 18183i, -1i, i32(-2147483648))), Struct_2(vec4<i32>(41897i, 2147483647i, -18849i, 68172i)), Struct_2(vec4<i32>(-5878i, -9398i, 1i, -15347i)), Struct_2(vec4<i32>(-1i, 2147483647i, 29736i, -1i)), Struct_2(vec4<i32>(2147483647i, 54350i, 41370i, 46157i)), Struct_2(vec4<i32>(-1i, -6456i, 4140i, 1i)), Struct_2(vec4<i32>(1i, 1i, 15320i, i32(-2147483648))), Struct_2(vec4<i32>(-51174i, -39171i, i32(-2147483648), i32(-2147483648))), Struct_2(vec4<i32>(-39540i, i32(-2147483648), 0i, -1i)), Struct_2(vec4<i32>(-57565i, 28736i, i32(-2147483648), i32(-2147483648))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_5, arg_1: f32) -> vec3<i32> {
    let var_0 = abs(arg_0.a.x);
    global1 = array<Struct_2, 30>();
    global0 = array<u32, 5>();
    var var_1 = 1u;
    global1 = array<Struct_2, 30>();
    return abs(~(~(vec3<i32>(-2147483647i, 1i, 2147483647i) >> (vec3<u32>(1u, global0[_wgslsmith_index_u32(arg_0.b, 5u)], 4294967295u) % vec3<u32>(32u))))) >> (~(~(~(vec3<u32>(16293u, u_input.a, u_input.b.x) >> (vec3<u32>(arg_0.b, var_0, 0u) % vec3<u32>(32u))))) % vec3<u32>(32u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5) -> i32 {
    global1 = array<Struct_2, 30>();
    global0 = array<u32, 5>();
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~1u, 4294967295u, ~u_input.b.x << (arg_1.b % 32u)), arg_1.a);
    var var_1 = _wgslsmith_div_vec2_i32(~_wgslsmith_sub_vec2_i32(-vec2<i32>(0i, 65560i), vec2<i32>(2147483647i, 0i)), ~vec2<i32>(1i, 1i)) | min(_wgslsmith_clamp_vec2_i32(-abs(vec2<i32>(-2147483647i, -2147483647i)), vec2<i32>(~(-2147483647i), ~34841i), vec2<i32>(select(-47253i, 36828i, false), -32751i)), vec2<i32>(1i, 1i));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-469f + 1264f)), arg_1.d), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.e))), 507f, 1191f))));
    return firstLeadingBit(abs(~func_1(Struct_5(arg_1.a, arg_0.x, u_input.c, 252f, -313f), _wgslsmith_f_op_f32(var_2.x * arg_1.d)).x));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_0.b, -2147483647i, arg_0.b), max(vec3<i32>(arg_1.x, arg_0.b, 0i), vec3<i32>(arg_0.b, arg_0.b, 1i))) ^ abs(arg_1 >> (u_input.c % vec3<u32>(32u))), vec3<i32>(2147483647i, 35794i, 2147483647i)) << (~(~vec3<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], u_input.b.x), ~67404u, _wgslsmith_clamp_u32(1u, 0u, 25265u))) % vec3<u32>(32u));
    var_0 = max(vec3<i32>(34905i, -(var_0.x & arg_0.b) | (-1i ^ ~arg_1.x), arg_0.b), -_wgslsmith_mod_vec3_i32(vec3<i32>(19913i, reverseBits(arg_1.x), func_3(vec3<u32>(global0[_wgslsmith_index_u32(0u, 5u)], 0u, 4294967295u), Struct_5(vec4<u32>(5316u, 4294967295u, 7714u, 1u), 1u, u_input.c, 177f, 192f))), vec3<i32>(-arg_0.b, 0i, 1i)));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(21077u, 5u)], 13889u, 4294967295u, u_input.c.x)), ~(~vec4<u32>(u_input.c.x, 76951u, u_input.a, global0[_wgslsmith_index_u32(1u, 5u)]))), ~global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(96433u, 5u)] ^ global0[_wgslsmith_index_u32(9870u, 5u)]), 5u)]), firstTrailingBit(abs(30017u)));
    let var_2 = global1[_wgslsmith_index_u32(~68860u, 30u)];
    var var_3 = vec3<u32>(4294967295u, 38847u, u_input.b.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_3(!all(vec3<bool>(true, false, true)) && all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), abs(-11271i)), min(vec3<i32>(20026i << (_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.b) % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 23653i), vec2<i32>(0i, -83606i)), _wgslsmith_add_i32(abs(40212i), i32(-1i) * -48854i)), abs(-func_1(Struct_5(vec4<u32>(1u, global0[_wgslsmith_index_u32(19083u, 5u)], global0[_wgslsmith_index_u32(7140u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 5u)]), global0[_wgslsmith_index_u32(u_input.c.x, 5u)], vec3<u32>(4294967295u, 32419u, 1u), 201f, 417f), -309f))));
    let var_1 = func_2(func_2(Struct_3(var_0.a, var_0.b), vec3<i32>(1i, -var_0.b | (var_0.b | -2147483647i), 1i)), ~vec3<i32>(var_0.b, func_1(Struct_5(vec4<u32>(74458u, 11523u, u_input.c.x, 1u), 0u, vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 0u, 67430u), -828f, -1136f), -1377f).x, 1i)).b;
    global1 = array<Struct_2, 30>();
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_1, ~var_0.b), min(var_0.b, var_1) >> (select(global0[_wgslsmith_index_u32(u_input.a, 5u)], u_input.b.x, false) % 32u)), (51312i >> (~u_input.a % 32u)) & -1i) == var_0.b;
    var var_3 = vec4<bool>((_wgslsmith_div_u32(max(global0[_wgslsmith_index_u32(72521u, 5u)], 1u), _wgslsmith_mult_u32(1u, u_input.c.x)) & global0[_wgslsmith_index_u32(reverseBits(~u_input.c.x), 5u)]) == 4192u, true, var_0.a, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), ~u_input.c.yx) ^ 4294967295u, _wgslsmith_f_op_f32(-806f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-600f + -498f), _wgslsmith_f_op_f32(sign(-1250f)), var_0.a)), 1994f, select(true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(697f))))));
}

