struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-983f), Struct_1(1000f), Struct_1(-1000f), Struct_1(-498f), Struct_1(471f), Struct_1(138f), Struct_1(315f), Struct_1(396f), Struct_1(859f), Struct_1(375f), Struct_1(-1878f), Struct_1(450f), Struct_1(-846f), Struct_1(-1162f), Struct_1(899f), Struct_1(-337f), Struct_1(1000f), Struct_1(938f), Struct_1(663f), Struct_1(1291f), Struct_1(303f), Struct_1(221f), Struct_1(1143f), Struct_1(1000f), Struct_1(479f), Struct_1(538f));

var<private> global1: f32;

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(-260f, Struct_1(586f), false), Struct_2(309f, Struct_1(-844f), true), Struct_2(743f, Struct_1(-1824f), false), Struct_2(925f, Struct_1(645f), false), Struct_2(-1035f, Struct_1(1419f), true), Struct_2(792f, Struct_1(-852f), true), Struct_2(1509f, Struct_1(368f), false), Struct_2(605f, Struct_1(1000f), false), Struct_2(-1275f, Struct_1(952f), false), Struct_2(-1086f, Struct_1(307f), false), Struct_2(-414f, Struct_1(-1571f), true), Struct_2(1345f, Struct_1(-174f), true), Struct_2(200f, Struct_1(977f), false), Struct_2(-131f, Struct_1(-1968f), true), Struct_2(1460f, Struct_1(864f), true), Struct_2(-1355f, Struct_1(-1159f), false), Struct_2(503f, Struct_1(-260f), false), Struct_2(-1000f, Struct_1(466f), false), Struct_2(-1000f, Struct_1(-2604f), true), Struct_2(-730f, Struct_1(-1131f), true), Struct_2(-1365f, Struct_1(-1000f), true), Struct_2(614f, Struct_1(278f), false), Struct_2(-109f, Struct_1(2365f), true));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<i32>) -> vec2<u32> {
    var var_0 = Struct_3(arg_2.x, ~(~0u), global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 23u)], !any(vec4<bool>(arg_0 & false, false, !arg_0, true || arg_0)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-22089i, arg_2.x, firstTrailingBit(arg_2.x), abs(arg_2.x)), vec4<i32>(1i, _wgslsmith_add_i32(arg_2.x, 14161i), i32(-1i) * -2147483647i, _wgslsmith_mod_i32(13639i, arg_2.x))), ~firstLeadingBit(vec4<i32>(0i, 32913i, arg_2.x, -2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -359f))))));
    let var_2 = var_0.e;
    global0 = array<Struct_1, 26>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.a - var_0.c.b.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_1.x)))))), _wgslsmith_f_op_f32(ceil(1450f)));
    return u_input.a.xz ^ (vec2<u32>(1u, firstLeadingBit(firstLeadingBit(u_input.a.x))) | (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(14165u, u_input.a.x, u_input.a.x), u_input.a), var_0.b) | u_input.a.yx));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = vec3<bool>(arg_0.a != _wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(arg_0.a * -421f)))), all(vec4<bool>(true, true, true, true)), all(!vec3<bool>(all(vec4<bool>(false, true, false, true)), true, true)));
    let var_1 = _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 1u), vec2<u32>(0u, u_input.a.x)), func_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1771f, 148f), vec2<f32>(-848f, -224f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-487f, arg_0.a))))), firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-34889i, 2147483647i), vec2<i32>(-1i, 2147483647i)), -vec2<i32>(7832i, 1i)))));
    var var_2 = ~min(-2147483647i, -((0i << (var_1.x % 32u)) << (1u % 32u)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(976f)) - arg_0.a);
    global0 = array<Struct_1, 26>();
    return Struct_3(_wgslsmith_dot_vec2_i32(select(countOneBits(vec2<i32>(19462i, -21858i)), vec2<i32>(1i, 1i), true) | vec2<i32>(_wgslsmith_clamp_i32(2147483647i, 0i, 1i), _wgslsmith_add_i32(-39823i, -4058i)), firstLeadingBit(vec2<i32>(~(-2420i), _wgslsmith_mult_i32(4993i, -1i)))), 1u, Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a + -206f), arg_0.a)), global0[_wgslsmith_index_u32(u_input.a.x << (4294967295u % 32u), 26u)], true), true, ~vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-20236i, -1i), _wgslsmith_sub_vec2_i32(vec2<i32>(-25577i, 0i), vec2<i32>(28150i, -9707i))), ~select(1i, 29668i, true), 74357i, 2147483647i));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> bool {
    global0 = array<Struct_1, 26>();
    global2 = array<Struct_2, 23>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.c.a));
    global2 = array<Struct_2, 23>();
    var var_1 = arg_0.c;
    return false;
}

fn func_1() -> Struct_1 {
    let var_0 = select(vec4<bool>(select(select(true, true, true) && true, true, func_4(func_2(Struct_1(-118f)), firstLeadingBit(vec4<i32>(-7881i, -27162i, 1i, -35553i)), select(vec2<bool>(false, false), vec2<bool>(true, false), true), abs(vec3<i32>(-22070i, 18109i, 0i)))), ~_wgslsmith_div_i32(-28772i, 12512i) < _wgslsmith_clamp_i32(min(1i, 13703i), ~(-38192i), 1i), !any(vec4<bool>(true, false, true, false)), all(vec3<bool>(func_4(Struct_3(1i, 1u, global2[_wgslsmith_index_u32(u_input.a.x, 23u)], true, vec4<i32>(-26089i, -13825i, 10676i, 0i)), vec4<i32>(0i, -29639i, 29057i, 0i), vec2<bool>(true, false), vec3<i32>(-2147483647i, 6813i, 0i)), true, 9111u >= u_input.a.x))), select(select(vec4<bool>(false, u_input.a.x != 17947u, func_2(Struct_1(-812f)).c.c, true), vec4<bool>(true, true, true, true), select(false, false, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), true), true);
    let var_1 = abs(func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~u_input.a.x), min(u_input.a.x, ~35908u)), 26u)]).a);
    var var_2 = !select(select(vec4<bool>(u_input.a.x != u_input.a.x, false, true, true), var_0, true), vec4<bool>(_wgslsmith_f_op_f32(step(-885f, 2500f)) < _wgslsmith_f_op_f32(f32(-1f) * -385f), var_0.x, !(!var_0.x), true), !all(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, true, false, false), var_0)));
    let var_3 = -104f;
    global2 = array<Struct_2, 23>();
    return global0[_wgslsmith_index_u32(u_input.a.x, 26u)];
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    global0 = array<Struct_1, 26>();
    var var_0 = 33411i | firstLeadingBit(abs(max(-1i, 1i) << ((arg_3.x & 42970u) % 32u)));
    var var_1 = Struct_3(-(~_wgslsmith_clamp_i32(-1i, 8547i, 9931i) | -2147483647i), arg_3.x, func_2(func_2(func_1()).c.b).c, true, ~(firstTrailingBit(firstLeadingBit(vec4<i32>(-38455i, 0i, -1614i, 1i))) | select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(2147483647i, 3338i, -8390i, 18437i) >> (arg_3 % vec4<u32>(32u)), true)));
    var var_2 = !(!func_2(func_1()).c.c);
    var_1 = func_2(func_2(Struct_1(_wgslsmith_f_op_f32(-arg_2.a))).c.b);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c.a, 1276f)))))), Struct_1(1000f), select(-(~(-1i)) > (var_1.a >> (func_2(Struct_1(arg_2.a)).b % 32u)), true, all(select(select(vec3<bool>(var_1.c.c, var_1.c.c, var_1.c.c), vec3<bool>(false, var_1.c.c, var_1.d), false), select(vec3<bool>(var_1.d, true, true), vec3<bool>(var_1.d, var_1.c.c, false), vec3<bool>(var_1.d, var_1.c.c, false)), vec3<bool>(var_1.c.c, var_1.c.c, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_sub_vec2_u32(select(firstTrailingBit(vec2<u32>(u_input.a.x, 6811u) >> (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, 1u), u_input.a.zy), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(61936u, 4294967295u) >> (vec2<u32>(u_input.a.x, 89567u) % vec2<u32>(32u)), firstLeadingBit(u_input.a.zy))), vec4<f32>(_wgslsmith_f_op_f32(546f + -1755f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(572f - 1457f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(412f, 170f)))), func_1(), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 34035u)) | ~vec4<u32>(1u, u_input.a.x, u_input.a.x, 85849u), vec4<u32>(0u, 4277u, func_2(func_2(global0[_wgslsmith_index_u32(0u, 26u)]).c.b).b, max(abs(0u), u_input.a.x))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(abs(abs(u_input.a.x))), u_input.a.x), 23u)];
    let var_2 = ~u_input.a.x;
    let var_3 = -2147483647i;
    var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 23u)];
    var var_4 = false;
    let var_5 = var_3;
    let var_6 = -var_5;
    let var_7 = !vec3<bool>(!var_0.c, any(vec2<bool>(var_0.c, !var_1.c)), !(var_2 == 1u) || !(var_0.a == var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, _wgslsmith_div_u32(47510u, reverseBits(58705u)), var_2, u_input.a.x | ~0u), _wgslsmith_f_op_f32(select(2164f, func_2(func_1()).c.a, true)), _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(~(-1836i)), 1i, 31479i), _wgslsmith_div_vec3_i32(abs(vec3<i32>(-1i, var_3, 1573i)) ^ vec3<i32>(31653i, 6475i, -2147483647i), -vec3<i32>(var_6, var_3, var_3))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, -901f, _wgslsmith_f_op_f32(f32(-1f) * -998f), func_5(u_input.a.zy, vec4<f32>(var_1.a, 782f, -997f, -256f), Struct_1(var_0.b.a), vec4<u32>(4294967295u, var_2, var_2, var_2)).a), vec4<f32>(-613f, var_1.a, _wgslsmith_f_op_f32(-588f * var_0.b.a), _wgslsmith_div_f32(var_1.a, -312f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1736f, 828f, -737f, 119f))))))), 1u);
}

