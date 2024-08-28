struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<u32>(1359u, 4294967295u), 8745i, true, -522f, 1u), Struct_1(vec2<u32>(77864u, 64700u), i32(-2147483648), true, -1329f, 0u), Struct_1(vec2<u32>(1u, 1u), 0i, true, 454f, 1604u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 5034i, true, -245f, 15819u), Struct_1(vec2<u32>(4294967295u, 14069u), 23639i, true, 134f, 26244u), Struct_1(vec2<u32>(1u, 1u), -1i, true, 828f, 103144u), Struct_1(vec2<u32>(29190u, 0u), 16171i, true, 1769f, 1u), Struct_1(vec2<u32>(33460u, 1u), -9653i, false, 1717f, 18480u), Struct_1(vec2<u32>(45975u, 45325u), 16312i, true, -132f, 4294967295u), Struct_1(vec2<u32>(1u, 46239u), 1i, false, 411f, 1u), Struct_1(vec2<u32>(0u, 4294967295u), i32(-2147483648), true, -548f, 7889u), Struct_1(vec2<u32>(4294967295u, 42619u), -1i, true, -1000f, 4294967295u), Struct_1(vec2<u32>(1u, 33859u), -14664i, false, 753f, 0u), Struct_1(vec2<u32>(45414u, 41586u), 28042i, true, 785f, 35373u), Struct_1(vec2<u32>(0u, 17404u), -19656i, false, -465f, 4294967295u), Struct_1(vec2<u32>(0u, 1u), -1i, false, -484f, 33934u), Struct_1(vec2<u32>(41471u, 37612u), 0i, true, -115f, 5897u), Struct_1(vec2<u32>(44552u, 0u), 21034i, true, -806f, 25328u), Struct_1(vec2<u32>(38748u, 4188u), -1877i, false, 1709f, 1u), Struct_1(vec2<u32>(1u, 84995u), 48625i, true, -1000f, 34555u), Struct_1(vec2<u32>(3667u, 37911u), 26032i, false, 836f, 4294967295u), Struct_1(vec2<u32>(0u, 17110u), i32(-2147483648), true, -1399f, 1u), Struct_1(vec2<u32>(0u, 5092u), 0i, true, -488f, 0u), Struct_1(vec2<u32>(51321u, 22272u), 4208i, false, -560f, 1u), Struct_1(vec2<u32>(1u, 32447u), i32(-2147483648), true, 1277f, 0u), Struct_1(vec2<u32>(60552u, 0u), 25307i, true, 1000f, 32686u), Struct_1(vec2<u32>(15568u, 31874u), -1i, true, 811f, 19979u), Struct_1(vec2<u32>(57813u, 13977u), -30530i, false, -130f, 1u), Struct_1(vec2<u32>(4294967295u, 15126u), -59174i, true, 249f, 1u), Struct_1(vec2<u32>(4294967295u, 1781u), 27776i, false, 109f, 27418u), Struct_1(vec2<u32>(1u, 41872u), 0i, true, -201f, 1u), Struct_1(vec2<u32>(4294967295u, 69249u), 30747i, false, -1304f, 0u));

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: f32) -> u32 {
    return 1u;
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(758f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-725f, -106f) + vec2<f32>(-1341f, -524f)), vec2<f32>(1212f, -757f))) - vec2<f32>(-890f, 1408f)))));
    global1 = array<Struct_1, 24>();
    global0 = array<Struct_1, 32>();
    global1 = array<Struct_1, 24>();
    return ~firstLeadingBit(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 22011u, 1u, 72521u), vec4<u32>(66159u, 1u, 33806u, 30302u)), abs(62520u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(20130u, 8242u), 32u)];
    let var_1 = -_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(1i, u_input.a)) ^ vec2<i32>(abs(61920i), 22401i), -vec2<i32>(-20158i, arg_2.b));
    let var_2 = firstLeadingBit(var_0.a);
    var var_3 = arg_0;
    global0 = array<Struct_1, 32>();
    return select(~_wgslsmith_mod_u32(var_2.x, arg_2.a.x), firstTrailingBit(0u), select(true, false, true || ((var_3.x && false) & false)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32((vec4<u32>(0u, 0u, 4294967295u, arg_2.e) << (vec4<u32>(4294967295u, 33104u, arg_2.a.x, 13524u) % vec4<u32>(32u))) & vec4<u32>(arg_2.a.x, 3350u, arg_2.e, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.a.x, 4294967295u, 19810u, 1u) ^ vec4<u32>(arg_2.a.x, 4294967295u, arg_2.e, arg_2.a.x), vec4<u32>(arg_2.e, arg_2.a.x, arg_2.a.x, 10676u) ^ vec4<u32>(1u, arg_2.e, 24431u, 0u))), arg_2.a.x), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(572f + arg_2.d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_2.d) + _wgslsmith_f_op_f32(-arg_2.d))) > _wgslsmith_f_op_f32(floor(1738f)), -344f, func_4(!(!vec4<bool>(arg_2.c, arg_2.c, true, arg_2.c)), _wgslsmith_mod_u32(arg_2.e, ~func_2(arg_1)), Struct_1(arg_2.a ^ firstLeadingBit(vec2<u32>(1u, arg_2.e)), abs(_wgslsmith_mod_i32(u_input.a, -2147483647i)), true, -1479f, 4294967295u), _wgslsmith_add_i32(0i, (-18974i ^ arg_2.b) << (func_3(arg_2.c) % 32u))));
    global0 = array<Struct_1, 32>();
    return Struct_1(var_0.a, u_input.a, var_0.a.x < reverseBits(_wgslsmith_mult_u32(firstTrailingBit(0u), var_0.e << (var_0.e % 32u))), _wgslsmith_f_op_f32(select(var_0.d, -477f, var_0.c)), ~(~1u));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> i32 {
    var var_0 = Struct_1(select(arg_0.a, vec2<u32>(~13308u & (arg_0.e ^ 14098u), arg_0.e), select(select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, true)), !(!vec2<bool>(arg_0.c, true)), ~arg_0.a.x <= _wgslsmith_add_u32(arg_0.a.x, arg_0.e))), _wgslsmith_dot_vec3_i32(~vec3<i32>(41161i, -25747i, u_input.a), vec3<i32>(~0i, _wgslsmith_div_i32(u_input.a, -27038i), arg_0.b)) ^ _wgslsmith_dot_vec2_i32(max(vec2<i32>(-1i, arg_0.b), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 201i), vec2<i32>(10945i, 1i))), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b, -11117i) ^ vec2<i32>(3656i, u_input.a), vec2<i32>(arg_0.b, u_input.a))), !(firstLeadingBit(u_input.a) == -u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2, -1021f), arg_1.x)))), arg_0.a.x);
    let var_1 = Struct_1(~reverseBits(~vec2<u32>(0u, arg_0.a.x)), var_0.b, true, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1085f, arg_2))), ~_wgslsmith_div_u32(1u | firstLeadingBit(var_0.e), abs(firstLeadingBit(0u))));
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(79669u, var_0.a.x), firstTrailingBit(~arg_0.a))), var_0.b, -1000f >= arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), countOneBits(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.a.x, arg_0.a.x) | (1u << (var_0.e % 32u)), _wgslsmith_sub_u32(var_1.e, var_0.a.x) ^ 1u)));
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-1i, _wgslsmith_clamp_i32(14929i, 52560i, 2147483647i)), 1148i), _wgslsmith_mod_vec2_i32(min(vec2<i32>(var_1.b, -4313i), vec2<i32>(-1i, arg_0.b)) & (vec2<i32>(0i, 2147483647i) & vec2<i32>(var_0.b, 1i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(7839i, -2147483647i), vec2<i32>(var_1.b, var_2.b)))), -_wgslsmith_dot_vec4_i32(select(firstTrailingBit(vec4<i32>(var_0.b, var_1.b, arg_0.b, var_0.b)), reverseBits(vec4<i32>(arg_0.b, 8865i, var_0.b, u_input.a)), vec4<bool>(false, var_0.c, var_2.c, arg_0.c)), vec4<i32>(var_2.b, firstLeadingBit(var_0.b), -var_1.b, var_1.b ^ 52569i)));
    var_2 = global1[_wgslsmith_index_u32(~min(0u, 0u), 24u)];
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec4<i32>(func_5(func_1(-27102i, 2474f, global0[_wgslsmith_index_u32(27644u, 32u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, 377f, 1370f)), _wgslsmith_f_op_f32(-105f * 278f)), u_input.a, 2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-53738i, u_input.a))) & _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(44276i, 7587i, u_input.a, -1i)) & firstLeadingBit(vec4<i32>(u_input.a, 18245i, 23989i, u_input.a)), max(vec4<i32>(13867i, u_input.a, u_input.a, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(19649i, -2147483647i, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)))));
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(~0u), 24u)];
    let var_2 = select(!select(!(!vec2<bool>(false, var_1.c)), vec2<bool>(true, true), select(select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(true, true), vec2<bool>(true, var_1.c)), !vec2<bool>(var_1.c, var_1.c), vec2<bool>(true, false))), vec2<bool>(!(!var_1.c), !(!(!var_1.c))), vec2<bool>(true, (i32(-1i) * -42327i) == _wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec2_i32(var_0.xx, var_0.yx))));
    global0 = array<Struct_1, 32>();
    global1 = array<Struct_1, 24>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_1.d, _wgslsmith_f_op_f32(f32(-1f) * -1190f), var_1.b <= -13829i)), _wgslsmith_f_op_f32(951f - var_1.d), _wgslsmith_div_f32(func_1(_wgslsmith_sub_i32(var_1.b, 91217i), -117f, Struct_1(vec2<u32>(var_1.a.x, var_1.e), u_input.a, false, 603f, 0u)).d, _wgslsmith_f_op_f32(f32(-1f) * -458f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * -463f)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_3.x)))), 742f))));
    global0 = array<Struct_1, 32>();
    var var_5 = vec2<bool>(~(~(22317u >> (var_1.a.x % 32u))) <= var_1.a.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1085f, var_1.d, 197f, -794f), var_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 179f, var_1.d, var_3.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), 326f, -246f, _wgslsmith_f_op_f32(min(-2408f, var_3.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_3.x)), var_1.d, _wgslsmith_div_f32(-340f, 1000f)), !(!(!vec4<bool>(false, var_5.x, true, false))))), var_3.x, 4294967295u, var_1.b);
}

