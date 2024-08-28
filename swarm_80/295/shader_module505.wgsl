struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(true, vec4<u32>(69215u, 26346u, 59023u, 1u)), Struct_2(true, vec4<u32>(0u, 4294967295u, 41925u, 0u)), Struct_2(true, vec4<u32>(1u, 23199u, 27929u, 0u)), Struct_2(true, vec4<u32>(55724u, 4294967295u, 29907u, 4294967295u)), Struct_2(true, vec4<u32>(7836u, 0u, 31657u, 0u)));

var<private> global1: vec2<f32> = vec2<f32>(1415f, -445f);

var<private> global2: vec2<f32>;

var<private> global3: array<u32, 18> = array<u32, 18>(22049u, 6315u, 38479u, 1u, 34272u, 26880u, 89951u, 61331u, 78852u, 26805u, 1u, 1u, 58577u, 4294967295u, 0u, 4294967295u, 4294967295u, 40170u);

var<private> global4: vec2<i32> = vec2<i32>(923i, 28424i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: u32) -> bool {
    let var_0 = global1.x;
    var var_1 = Struct_1(~(~(firstLeadingBit(vec4<u32>(4284u, 15039u, global3[_wgslsmith_index_u32(5932u, 18u)], 0u)) | (vec4<u32>(13893u, 25418u, arg_2, 4294967295u) << (vec4<u32>(arg_2, arg_2, 41304u, global3[_wgslsmith_index_u32(1u, 18u)]) % vec4<u32>(32u))))), 2147483647i, ~(i32(-1i) * -(~u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8556u, 18u)], 18u)], 4294967295u), select(vec2<u32>(arg_0, arg_2), vec2<u32>(4294967295u, arg_0), true)), _wgslsmith_sub_u32(arg_0 >> (global3[_wgslsmith_index_u32(4294967295u, 18u)] % 32u), 4294967295u)), _wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 2848u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0, 18406u), vec3<u32>(global3[_wgslsmith_index_u32(0u, 18u)], 0u, arg_0)), 0u < arg_0), vec3<u32>(4294967295u ^ arg_0, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 18u)], 70287u), 4294967295u << (arg_2 % 32u)))));
    let var_2 = firstLeadingBit(var_1.d) ^ _wgslsmith_add_u32(44378u, 60597u | ~_wgslsmith_mod_u32(var_1.a.x, 29061u));
    var var_3 = Struct_1(vec4<u32>(arg_2, 4294967295u, countOneBits(_wgslsmith_clamp_u32(1u, firstLeadingBit(5736u), ~var_2)), var_2), -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(20940i, var_1.c, -58331i) | vec3<i32>(11631i, -2147483647i, -46490i), -vec3<i32>(var_1.c, var_1.c, global4.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-27994i, var_1.b, 1i), -vec3<i32>(var_1.b, -1i, -1i))), var_1.c, _wgslsmith_mult_u32(~abs(select(1u, var_1.a.x, false)), 68287u));
    let var_4 = Struct_2(true, var_3.a);
    return arg_1.x;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global4 = -vec2<i32>(-firstTrailingBit(u_input.a), -_wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, -6882i, -1248i), vec3<i32>(-1i, u_input.a, -51982i)) & 1i);
    let var_0 = _wgslsmith_add_i32(-36615i, 1i);
    var var_1 = select(vec3<bool>(true, true, true), vec3<bool>(true, false, any(vec3<bool>(true, true, true))), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, func_3(reverseBits(1u), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), arg_0.x | max(arg_0.x, arg_0.x))));
    var var_2 = Struct_1(countOneBits(_wgslsmith_clamp_vec4_u32(select(arg_0, arg_0, any(vec4<bool>(false, var_1.x, true, true))), abs(~arg_0), arg_0)), u_input.a, var_0, _wgslsmith_div_u32(arg_0.x, global3[_wgslsmith_index_u32(50622u >> ((arg_0.x & ~arg_0.x) % 32u), 18u)]));
    return Struct_1(abs(vec4<u32>(~0u, ~1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, global3[_wgslsmith_index_u32(var_2.a.x, 18u)]), vec2<u32>(2620u, 1u)), ~(~36728u))), _wgslsmith_div_i32(-(~(12383i >> (var_2.a.x % 32u))), 28304i), -1i, var_2.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1005f, -382f, 1171f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 1118f)), any(vec3<bool>(false, false, true))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-202f, global1.x, global1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-346f, global2.x, -813f)))))));
    let var_1 = ~(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~4294967295u, ~1u), _wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(arg_0.d, 50209u, global3[_wgslsmith_index_u32(19541u, 18u)], arg_2.b.x)), reverseBits(arg_2.b.x)) ^ _wgslsmith_div_u32(global3[_wgslsmith_index_u32(arg_2.b.x, 18u)], reverseBits(45812u)));
    let var_2 = Struct_2(false, arg_2.b ^ vec4<u32>(15756u, 79190u, min(global3[_wgslsmith_index_u32(1u, 18u)], var_1), var_1));
    var var_3 = Struct_1(_wgslsmith_div_vec4_u32(min(var_2.b, ~min(vec4<u32>(var_2.b.x, 1u, 42914u, var_1), arg_0.a)), arg_2.b), reverseBits(max(_wgslsmith_sub_i32(select(arg_0.c, global4.x, false), max(-1i, u_input.a)), -2147483647i)), abs(select(abs(global4.x) & ~3190i, global4.x, all(select(vec4<bool>(false, false, var_2.a, false), vec4<bool>(false, var_2.a, false, false), false)))), 13595u);
    global4 = _wgslsmith_sub_vec2_i32(-vec2<i32>(-6587i, reverseBits(var_3.c)), vec2<i32>(func_2(~arg_2.b | ~arg_2.b).b, -select(_wgslsmith_div_i32(4935i, u_input.a), -arg_0.c, arg_1)));
    return var_2.b;
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = arg_0;
    global0 = array<Struct_2, 5>();
    global3 = array<u32, 18>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-386f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 749f) + -1099f))), global1.x));
    var var_2 = Struct_1(func_4(func_2(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(88216u, 18u)], 18u)], global3[_wgslsmith_index_u32(1u, 18u)]) & vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 18u)], 18u)], global3[_wgslsmith_index_u32(0u, 18u)], 61693u, 10598u)), true, global0[_wgslsmith_index_u32(~(~0u), 5u)]) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 911u, global3[_wgslsmith_index_u32(87741u, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)]) & min(vec4<u32>(1212u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 711u, 1u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(63498u, 18u)], 18u)], 18u)], 73611u, 16291u, 38234u)), max(select(vec4<u32>(35941u, global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(874u, 18u)], 0u), vec4<u32>(20831u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8413u, 18u)], 18u)], 75880u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(70002u, 18u)], 18u)], 18u)]), var_0), vec4<u32>(1u, 4294967295u, 0u, 61227u)), vec4<u32>(reverseBits(59403u), 41596u, global3[_wgslsmith_index_u32(~4294967295u, 18u)], 4294967295u & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 18u)])) % vec4<u32>(32u)), _wgslsmith_div_i32(34421i, (func_2(vec4<u32>(6045u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13430u, 18u)], 18u)], 18u)], global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)])).c ^ (-45190i | u_input.a)) | global4.x), ~0i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(32362u | _wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 104540u), abs(39902u)), 18u)] >> (global3[_wgslsmith_index_u32(52042u, 18u)] % 32u));
    return ~var_2.d >> (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1279f)))))), -1468f, global2.x);
    let var_1 = Struct_1(vec4<u32>(func_1(false), ~74321u, 1u, func_2(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 22799u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20703u, 18u)], 18u)], 18u)], 88045u)), vec4<u32>(29215u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(52780u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39535u, 18u)], 18u)], 18u)], 18u)], 18u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)]), ~vec4<u32>(global3[_wgslsmith_index_u32(1u, 18u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(83227u, 18u)], 18u)], 18u)], 36006u))).a.x), -4200i | firstTrailingBit(_wgslsmith_add_i32(-45364i, _wgslsmith_sub_i32(global4.x, u_input.a))), 2147483647i, 28028u);
    let var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(~(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(61748u, 18u)], 20706u) >> (1u % 32u)), firstLeadingBit(4294967295u), ~4294967295u), firstLeadingBit(abs(var_1.a.zww) >> ((var_1.a.xxy & min(var_1.a.xwy, var_1.a.yxz)) % vec3<u32>(32u))));
    var var_3 = var_1.d;
    let var_4 = -2145f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(122f)), global1.x, -412f, 1311f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1002f, global1.x, global1.x) * vec4<f32>(var_4, 1201f, global1.x, global1.x))))), i32(-1i) * -12641i, reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global3[_wgslsmith_index_u32(4294967295u, 18u)], 65711u, var_1.d), _wgslsmith_add_vec4_u32(vec4<u32>(10867u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(41871u, global3[_wgslsmith_index_u32(4294967295u, 18u)], var_1.d, 0u)))), 4294967295u);
}

