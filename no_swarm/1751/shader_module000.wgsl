struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -182f;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<f32>(1551f, 662f, -1842f, -306f), vec3<f32>(-1388f, 569f, 470f)), Struct_2(vec4<f32>(-728f, 1000f, 184f, 1212f), vec3<f32>(1000f, 1535f, 421f)), Struct_2(vec4<f32>(-1384f, 608f, -1000f, -385f), vec3<f32>(-675f, -605f, 559f)), Struct_2(vec4<f32>(-785f, -137f, -2700f, -1787f), vec3<f32>(1000f, 917f, -836f)), Struct_2(vec4<f32>(1000f, -122f, -691f, -159f), vec3<f32>(184f, -901f, -818f)), Struct_2(vec4<f32>(-164f, -171f, -992f, 1500f), vec3<f32>(-687f, -1999f, -728f)), Struct_2(vec4<f32>(-422f, 593f, 221f, -212f), vec3<f32>(-1000f, 947f, -582f)), Struct_2(vec4<f32>(-1332f, 559f, 304f, 257f), vec3<f32>(-936f, -605f, 958f)), Struct_2(vec4<f32>(510f, -279f, 1728f, -1411f), vec3<f32>(-296f, 957f, -262f)), Struct_2(vec4<f32>(1000f, 114f, 420f, 1347f), vec3<f32>(-1000f, -1277f, -1000f)), Struct_2(vec4<f32>(1377f, -1134f, -968f, 701f), vec3<f32>(-325f, -965f, -194f)), Struct_2(vec4<f32>(-1174f, 296f, 293f, -1078f), vec3<f32>(359f, 328f, -533f)), Struct_2(vec4<f32>(-198f, -327f, 592f, 1000f), vec3<f32>(-259f, -394f, -1086f)), Struct_2(vec4<f32>(458f, -496f, -957f, -1024f), vec3<f32>(964f, -1000f, 972f)), Struct_2(vec4<f32>(-1806f, -461f, -1144f, -1000f), vec3<f32>(325f, -241f, 184f)), Struct_2(vec4<f32>(-698f, -787f, 1000f, 616f), vec3<f32>(-2526f, 951f, -1121f)), Struct_2(vec4<f32>(-253f, 675f, -673f, -2197f), vec3<f32>(-890f, -325f, -760f)), Struct_2(vec4<f32>(-472f, -796f, -414f, -1000f), vec3<f32>(-941f, 1689f, -794f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(1242f, reverseBits(firstLeadingBit(vec4<u32>(0u, 0u, 4294967295u, 1u) << (vec4<u32>(22117u, u_input.a.x, 1u, 56375u) % vec4<u32>(32u))) | ~max(vec4<u32>(30107u, u_input.a.x, 65268u, u_input.a.x), vec4<u32>(51214u, 20259u, u_input.a.x, 0u))), ~vec2<u32>(48747u, 4294967295u), (u_input.a.x ^ ~_wgslsmith_mult_u32(u_input.a.x, 0u)) > 0u, vec2<i32>(max(0i, countOneBits(15843i)), _wgslsmith_div_i32(-2147483647i, firstTrailingBit(-5472i))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(-777f, -321f, true)), var_0.b, ~(~((u_input.a >> (var_0.b.xx % vec2<u32>(32u))) >> (select(var_0.b.yz, vec2<u32>(1u, 1u), var_0.d) % vec2<u32>(32u)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, !var_0.d, all(vec2<bool>(false, var_0.d)), var_0.e.x <= -24307i), !(!vec4<bool>(var_0.d, true, var_0.d, false)))), _wgslsmith_add_vec2_i32(var_0.e, abs(_wgslsmith_mod_vec2_i32(abs(var_0.e), firstLeadingBit(vec2<i32>(var_0.e.x, var_0.e.x))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a * -1139f), _wgslsmith_f_op_f32(-var_1.a), -200f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -261f, var_1.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-980f, -736f, -496f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1037f, -560f, var_0.a)))))));
    var var_3 = ~49546i;
    var var_4 = _wgslsmith_clamp_vec2_i32(var_1.e, var_0.e, var_0.e);
    return 0u;
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(746f, _wgslsmith_div_f32(-110f, _wgslsmith_f_op_f32(trunc(591f))))) - -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1507f * _wgslsmith_f_op_f32(-108f - _wgslsmith_f_op_f32(abs(-1540f))))));
    global1 = array<Struct_2, 18>();
    let var_0 = (35543u << (((u_input.a.x | 1u) & u_input.a.x) % 32u)) <= ~(~(~u_input.a.x));
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    return Struct_1(_wgslsmith_f_op_f32(min(-339f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(434f, -533f) + -117f)))), vec4<u32>(~4842u, ~u_input.a.x & (1u >> (func_3() % 32u)), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 0u), ~4294967295u), ~(~u_input.a), select(!any(vec4<bool>(var_0, var_0, var_0, false)), var_0, var_0), vec2<i32>(-60581i, -36862i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> vec2<i32> {
    var var_0 = global1[_wgslsmith_index_u32(arg_0.c.x, 18u)];
    var var_1 = global1[_wgslsmith_index_u32(1u, 18u)];
    let var_2 = vec4<u32>(~arg_0.b.x, ~(_wgslsmith_mod_u32(u_input.a.x, arg_0.c.x) & firstTrailingBit(1u)) | 0u, arg_0.c.x, ~_wgslsmith_sub_u32(21417u, 1u));
    var_1 = global1[_wgslsmith_index_u32(abs(0u), 18u)];
    let var_3 = Struct_1(1469f, var_2, ~var_2.xy, !arg_1.x, firstLeadingBit(firstLeadingBit(~arg_0.e | -arg_0.e)));
    return var_3.e ^ reverseBits(func_2().e);
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(-1000f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-arg_0.a)));
    let var_1 = arg_0;
    var var_2 = func_4(func_2(), select(!select(!vec4<bool>(true, true, false, var_1.d), !vec4<bool>(arg_0.d, arg_0.d, arg_0.d, false), var_1.a < var_1.a), select(!(!vec4<bool>(true, arg_0.d, var_1.d, var_1.d)), !vec4<bool>(arg_0.d, var_1.d, arg_0.d, var_1.d), select(!vec4<bool>(false, false, false, arg_0.d), select(vec4<bool>(false, var_1.d, arg_0.d, var_1.d), vec4<bool>(var_1.d, arg_0.d, arg_0.d, false), true), !vec4<bool>(var_1.d, arg_0.d, var_1.d, var_1.d))), select(select(!vec4<bool>(var_1.d, var_1.d, false, var_1.d), select(vec4<bool>(false, var_1.d, var_1.d, false), vec4<bool>(false, false, false, var_1.d), var_1.d), arg_0.d), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, arg_0.a < arg_0.a, arg_0.d == false), !vec4<bool>(var_1.d, arg_0.d, false, true))));
    var var_3 = var_1.c;
    return vec2<bool>(func_2().a < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + -252f)), any(!(!(!vec4<bool>(true, var_1.d, arg_0.d, var_1.d)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = firstLeadingBit(-firstLeadingBit(vec3<i32>(-arg_1.e.x, arg_1.e.x, 2147483647i ^ arg_1.e.x)));
    var_0 = abs(max(firstLeadingBit(vec3<i32>(arg_1.e.x, arg_1.e.x, arg_1.e.x)), -select(vec3<i32>(var_0.x, var_0.x, arg_1.e.x), vec3<i32>(var_0.x, 2147483647i, arg_1.e.x), arg_2)) & -(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, 1i), vec3<i32>(var_0.x, var_0.x, 2147483647i)) << (arg_1.b.www % vec3<u32>(32u))));
    let var_1 = firstTrailingBit(~(-58789i));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.a, arg_1.a, 161f, -1185f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a))))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, -506f, 2061f, -451f) - vec4<f32>(arg_1.a, -195f, arg_1.a, arg_1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a) - vec4<f32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, 837f, arg_1.a, 886f), vec4<f32>(arg_1.a, arg_1.a, arg_1.a, -282f), vec4<bool>(false, false, arg_1.d, arg_0.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1355f, -890f, _wgslsmith_f_op_f32(-arg_1.a))));
    let var_3 = var_2.b.zz;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(0u, 18u)];
    var var_1 = -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(0i, 13490i, 2147483647i), select(min(vec3<i32>(-2147483647i, 2147483647i, 0i), vec3<i32>(-1i, 1i, -22047i)), ~vec3<i32>(-9249i, 0i, 61492i), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))), _wgslsmith_sub_vec3_i32(min(~vec3<i32>(36511i, 0i, -2147483647i), -vec3<i32>(-23259i, -2147483647i, 3168i)), -vec3<i32>(1i, 1i, 1i)));
    let var_2 = abs(~u_input.a.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f))));
    var var_3 = func_5(select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), false), any(vec3<bool>(true, true, false)))), func_1(Struct_1(-933f, ~vec4<u32>(39050u, var_2, u_input.a.x, 4294967295u), ~u_input.a, true, ~vec2<i32>(0i, -1i))), vec2<bool>(!any(vec3<bool>(true, true, false)), _wgslsmith_div_u32(88097u, 1u) > var_2)), Struct_1(var_0.a.x, _wgslsmith_add_vec4_u32(~(~vec4<u32>(41549u, 75436u, u_input.a.x, 4294967295u)), reverseBits(~vec4<u32>(u_input.a.x, var_2, var_2, 1u))), select(~_wgslsmith_add_vec2_u32(vec2<u32>(68483u, 30024u), u_input.a), vec2<u32>(_wgslsmith_mult_u32(44501u, var_2), 52013u), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), func_1(Struct_1(-2814f, vec4<u32>(4294967295u, 0u, 12214u, 77563u), vec2<u32>(4294967295u, 41121u), false, vec2<i32>(-37919i, 1i))))), true, vec2<i32>(~(i32(-1i) * -2147483647i), ~(-4117i))), select(!all(vec3<bool>(false, true, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + -298f), -2728f) > _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(3020f, -472f))), true), reverseBits(_wgslsmith_add_vec2_u32(~u_input.a, vec2<u32>(u_input.a.x, var_2)) & _wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, select(vec2<u32>(0u, var_2), vec2<u32>(u_input.a.x, 4294967295u), vec2<bool>(true, true)))));
    var var_4 = ~_wgslsmith_dot_vec4_u32((vec4<u32>(8635u, 24831u, 4294967295u, var_2) >> (var_3.b % vec4<u32>(32u))) << (~_wgslsmith_add_vec4_u32(var_3.b, var_3.b) % vec4<u32>(32u)), var_3.b);
    var var_5 = vec3<bool>(true, true, !func_1(Struct_1(func_2().a, var_3.b, u_input.a, any(vec4<bool>(var_3.d, var_3.d, true, true)), var_3.e)).x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3.a, -214f, var_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_3.a) - -585f)))), ~vec3<u32>(firstLeadingBit(select(1u, 63625u, true)), firstTrailingBit(var_2), func_5(vec2<bool>(var_3.d, var_3.d), func_2(), true, u_input.a & vec2<u32>(0u, var_3.c.x)).b.x));
}

