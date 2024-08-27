struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: i32 = 2147483647i;

var<private> global1: array<i32, 24> = array<i32, 24>(i32(-2147483648), i32(-2147483648), 2147483647i, -1i, 0i, 1i, 1i, -39600i, 0i, i32(-2147483648), 26911i, -25056i, 16545i, 2147483647i, -45179i, -1i, 0i, 2147483647i, 2147483647i, 1i, -1i, -18989i, -48328i, -235i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-627f)), 106f)), arg_0.b.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(-1000f, arg_0.b.b.c.x, arg_2.b.d.x))), _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b.b.c.x, -1649f), arg_2.b.b.c) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b.c.x, arg_2.b.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.b.c.x, arg_2.b.c.x)))))), !select(vec2<bool>(all(arg_2.b.b.b), true), select(!vec2<bool>(arg_2.d, arg_0.a.x), vec2<bool>(true, true), !arg_0.b.d), arg_0.b.d.x));
    var var_1 = vec4<u32>(~0u, 1u, _wgslsmith_div_u32(abs(1u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, arg_0.c, arg_2.c, 5800u)), max(vec4<u32>(arg_0.c, 42048u, 0u, arg_2.c), vec4<u32>(arg_0.c, 7881u, arg_2.c, 4294967295u))) & arg_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c, _wgslsmith_sub_u32(arg_2.c << (arg_0.c % 32u), select(arg_2.c, 0u, true)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(35662u, 48222u, 9824u, arg_0.c), vec4<u32>(0u, arg_0.c, arg_0.c, 0u)))), vec3<u32>((arg_2.c & 83652u) | countOneBits(arg_2.c), ~_wgslsmith_add_u32(arg_2.c, arg_0.c), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.c, arg_0.c, 0u), vec3<u32>(arg_0.c, 31183u, arg_0.c)))));
    var var_2 = arg_2.b;
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(var_1.x & _wgslsmith_div_u32(~8753u, 36744u), 24u)], _wgslsmith_sub_i32(abs(arg_0.b.b.a.x), -1i) & _wgslsmith_dot_vec3_i32(u_input.a, abs(arg_2.b.b.a)), ~var_2.b.a.x), abs(vec4<i32>(_wgslsmith_mod_i32(8787i ^ var_0.b.a.x, ~arg_1.x), reverseBits(18730i), u_input.b, -4710i & firstTrailingBit(34896i))));
    var var_3 = var_2.b;
    return ~(25445u >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.c, arg_2.c, var_1.x, 40232u), firstLeadingBit(firstTrailingBit(vec4<u32>(24272u, arg_0.c, var_1.x, var_1.x)))) % 32u));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_mult_vec4_u32(~(~max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c, arg_1.x, 29958u, 4294967295u), vec4<u32>(arg_0, arg_0, 1u, 0u)), ~vec4<u32>(arg_0, arg_2.c, arg_2.c, arg_0))), ~vec4<u32>(arg_2.c << (0u % 32u), ~arg_1.x, arg_2.c, arg_1.x & 50710u) >> (vec4<u32>(~_wgslsmith_mod_u32(4294967295u, 40967u), arg_0, func_3(arg_2, ~u_input.a, arg_2), ~1u) % vec4<u32>(32u)));
    global1 = array<i32, 24>();
    let var_1 = arg_2.d;
    var var_2 = arg_2.b.b.a.zz;
    return var_0.x;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = Struct_3(vec3<bool>(all(vec4<bool>(true, true, any(arg_1.b.b), arg_1.d.x && false)), all(!select(vec2<bool>(arg_1.b.b.x, true), vec2<bool>(arg_1.d.x, arg_1.d.x), arg_1.b.b.yx)), arg_1.d.x), arg_1, arg_0, false);
    global0 = ~global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~min(vec4<u32>(arg_0, var_0.c, 596u, arg_0), vec4<u32>(var_0.c, 1u, var_0.c, 4294967295u)), ~(~vec4<u32>(var_0.c, 4983u, 34821u, 1u))), 24u)];
    var var_1 = arg_1.b;
    var var_2 = vec2<i32>(reverseBits(select(abs(_wgslsmith_mult_i32(arg_1.b.a.x, u_input.a.x)), var_1.a.x, any(var_0.a.zz))), -31866i);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1131f + _wgslsmith_f_op_f32(-389f * 799f))), _wgslsmith_f_op_f32(-263f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -823f) - arg_1.c.x))) + var_1.c.x);
    return false;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_1 {
    global1 = array<i32, 24>();
    global0 = u_input.b;
    var var_0 = ~(~u_input.b & arg_3.b.b.a.x);
    var var_1 = vec3<f32>(arg_1.c.x, -178f, _wgslsmith_f_op_f32(f32(-1f) * -587f));
    let var_2 = vec2<bool>(true, all(!(!select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_3.d), vec2<bool>(arg_1.b.x, false)))));
    return Struct_1(firstLeadingBit(reverseBits(-vec3<i32>(arg_3.b.b.a.x, -2147483647i, -1i))), vec4<bool>(any(arg_3.a), true, (true && arg_0) && true, (all(vec4<bool>(false, false, arg_3.b.b.b.x, false)) | (4294967295u >= arg_3.c)) && true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(100f - -509f)), -1097f));
}

fn func_1() -> Struct_2 {
    global1 = array<i32, 24>();
    global1 = array<i32, 24>();
    global1 = array<i32, 24>();
    global1 = array<i32, 24>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(835f, -1026f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1238f)) - _wgslsmith_f_op_f32(f32(-1f) * -434f))))), func_5(func_4(func_2(~25626u, abs(vec3<u32>(8804u, 58409u, 4294967295u)), Struct_3(vec3<bool>(false, true, false), Struct_2(-1576f, Struct_1(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(27228u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)]), vec4<bool>(true, true, true, false), vec2<f32>(1782f, -1046f)), vec2<f32>(-1144f, 755f), vec2<bool>(false, false)), 85945u, false)), Struct_2(-537f, Struct_1(vec3<i32>(u_input.b, u_input.b, 7976i), vec4<bool>(true, false, false, false), vec2<f32>(1943f, -863f)), vec2<f32>(784f, 491f), vec2<bool>(true, true))), Struct_1(~_wgslsmith_div_vec3_i32(u_input.a, u_input.a), vec4<bool>(true, true, func_4(17992u, Struct_2(-230f, Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(40974u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(7687u, 24u)]), vec4<bool>(false, false, false, false), vec2<f32>(-534f, -764f)), vec2<f32>(-1000f, -536f), vec2<bool>(true, true))), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(543f, 830f) - vec2<f32>(-745f, 679f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1098f, 698f) - vec2<f32>(-849f, -1812f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1250f, -1967f, -1049f, -1766f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 175f, -1000f, -404f) * vec4<f32>(552f, -2009f, 997f, -1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(100f, -158f, 854f, 1169f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1050f, -600f, -231f, 1000f))))), Struct_3(vec3<bool>(true, true, true), Struct_2(116f, Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)], u_input.b), vec4<bool>(false, true, false, false), vec2<f32>(445f, -1622f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(607f, 1000f), vec2<f32>(-534f, 2933f), vec2<bool>(false, true))), vec2<bool>(false, true)), 4294967295u, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1042f, 1385f), vec2<f32>(127f, -484f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-757f, 1053f) - vec2<f32>(1510f, 415f))))) * vec2<f32>(1f, 1f)), select(select(func_5(true, func_5(true, Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(0u, 24u)], 59547i, u_input.a.x), vec4<bool>(false, true, false, false), vec2<f32>(1668f, -371f)), vec4<f32>(-105f, -432f, -644f, -144f), Struct_3(vec3<bool>(true, true, false), Struct_2(-1090f, Struct_1(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec4<bool>(true, true, false, false), vec2<f32>(312f, 1418f)), vec2<f32>(-686f, 1000f), vec2<bool>(true, false)), 9839u, false)), vec4<f32>(-1740f, -201f, 1652f, 641f), Struct_3(vec3<bool>(false, true, true), Struct_2(509f, Struct_1(u_input.a, vec4<bool>(false, true, true, true), vec2<f32>(1295f, -1426f)), vec2<f32>(1756f, -1286f), vec2<bool>(false, false)), 52422u, true)).b.xy, vec2<bool>(true, true), any(vec2<bool>(true, true))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_3(!vec3<bool>(false, any(func_1().b.b.zxx), var_0.b.b.x), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f * var_0.c.x)), Struct_1(var_0.b.a << (~vec3<u32>(33968u, 1u, 10863u) % vec3<u32>(32u)), !func_5(var_0.b.b.x, var_0.b, vec4<f32>(var_0.c.x, var_0.a, -2118f, -392f), Struct_3(var_0.b.b.yxz, Struct_2(1543f, var_0.b, var_0.c, vec2<bool>(true, false)), 1u, var_0.b.b.x)).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(388f, 257f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.b.c))))), var_0.d), firstTrailingBit(_wgslsmith_clamp_u32(31484u, 0u >> (1u % 32u), _wgslsmith_div_u32(1u, ~27217u))), -510i >= ~(-u_input.b | reverseBits(var_0.b.a.x)));
    var var_2 = !vec3<bool>(403u >= var_1.c, !all(vec3<bool>(true, var_0.b.b.x, var_0.d.x)) || !all(var_1.b.b.b), all(!vec4<bool>(true, var_0.b.b.x, var_1.b.d.x, var_0.b.b.x)));
    var var_3 = _wgslsmith_mult_vec4_i32(select(~(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.a.x, 2147483647i, global1[_wgslsmith_index_u32(50692u, 24u)], var_1.b.b.a.x), vec4<i32>(var_0.b.a.x, var_1.b.b.a.x, global1[_wgslsmith_index_u32(var_1.c, 24u)], u_input.a.x)) & (vec4<i32>(-81107i, u_input.a.x, -1i, -50997i) & vec4<i32>(global1[_wgslsmith_index_u32(var_1.c, 24u)], var_1.b.b.a.x, var_0.b.a.x, var_0.b.a.x))), max(~(vec4<i32>(-9116i, 1i, u_input.a.x, u_input.b) ^ vec4<i32>(var_1.b.b.a.x, var_0.b.a.x, var_0.b.a.x, 67475i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.b.a.x, var_0.b.a.x, -13269i, 5553i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.a.x, var_0.b.a.x, -22861i, u_input.a.x), vec4<i32>(2147483647i, -51864i, var_1.b.b.a.x, var_1.b.b.a.x)))), func_1().b.b.x), vec4<i32>(~var_0.b.a.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(15670u, 24u)], abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.b.a.x, 6163i), vec2<i32>(-1i, 29219i)))), -(~(-12263i)), firstLeadingBit(-select(u_input.b, var_0.b.a.x, var_0.d.x))));
    let var_4 = var_1.c;
    global1 = array<i32, 24>();
    var var_5 = _wgslsmith_div_f32(282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.b.c.x, _wgslsmith_f_op_f32(-func_5(true, var_1.b.b, vec4<f32>(var_0.b.c.x, var_0.b.c.x, var_1.b.b.c.x, var_1.b.b.c.x), var_1).c.x))) * var_1.b.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(1u, ~45385u, 0u, var_4 >> (1u % 32u))), ~(~(vec4<u32>(40925u, var_1.c, var_4, var_4) ^ vec4<u32>(20757u, 7467u, 4294967295u, var_1.c)))));
}

