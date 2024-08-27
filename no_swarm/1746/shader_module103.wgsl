struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false));

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(true, vec2<f32>(-1055f, 1395f)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_4 {
    global1 = Struct_1(vec2<bool>((u_input.c & arg_1.x) == _wgslsmith_clamp_u32(_wgslsmith_mult_u32(42236u, 5724u), firstLeadingBit(29515u), ~3752u), arg_0));
    var var_0 = Struct_2(~abs(~(~vec4<u32>(15250u, u_input.c, 0u, u_input.c))), Struct_1(!global2.xz), -vec3<i32>(-1i, u_input.b.x, _wgslsmith_div_i32(2147483647i, u_input.b.x >> (arg_1.x % 32u))), _wgslsmith_f_op_f32(sign(global0.x)));
    var var_1 = Struct_2(var_0.a, Struct_1(global2.yz), abs(u_input.b >> (vec3<u32>(u_input.c, _wgslsmith_add_u32(55097u, 664u), ~var_0.a.x) % vec3<u32>(32u))), var_0.d);
    global2 = !(!vec3<bool>(u_input.b.x < _wgslsmith_add_i32(-1i, var_1.c.x), false, all(vec4<bool>(false, true, var_1.b.a.x, global2.x))));
    var_1 = Struct_2(~(~var_0.a), Struct_1(vec2<bool>(global1.a.x, true)), vec3<i32>(0i, i32(-1i) * -3784i, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    return global3[_wgslsmith_index_u32(~abs(41161u), 1u)];
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_4, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_3(Struct_2(vec4<u32>(select(~u_input.c, u_input.c, true), u_input.c, (10697u << (0u % 32u)) << ((u_input.c | u_input.c) % 32u), 1u), Struct_1(global2.xy), select(u_input.b, min(u_input.b, u_input.b), !select(vec3<bool>(global1.a.x, arg_2.a, false), vec3<bool>(true, global1.a.x, arg_2.a), global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(ceil(915f)), arg_2.a | arg_2.a)))), reverseBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, arg_1, u_input.a), vec4<i32>(arg_1, 31319i, arg_1, -8110i))) << (vec4<u32>(~1u, 79097u, 40378u, 24545u) % vec4<u32>(32u)), Struct_2(min(~(vec4<u32>(0u, 31751u, 1u, u_input.c) | vec4<u32>(1u, 1u, 8695u, u_input.c)), vec4<u32>(u_input.c, 24704u, u_input.c, u_input.c) << ((vec4<u32>(u_input.c, u_input.c, 28213u, u_input.c) | vec4<u32>(u_input.c, u_input.c, 1u, 40853u)) % vec4<u32>(32u))), Struct_1(global1.a), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.x * arg_3.x), 603f, true)) - global0.x)), Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.c, _wgslsmith_mod_u32(u_input.c, 21644u), _wgslsmith_div_u32(u_input.c, u_input.c), ~u_input.c), vec4<u32>(_wgslsmith_mod_u32(0u, 15922u), ~u_input.c, u_input.c, u_input.c)), Struct_1(global2.zz), u_input.b, -1291f), Struct_2(~vec4<u32>(_wgslsmith_add_u32(u_input.c, u_input.c), u_input.c, 1u, 1u), Struct_1(vec2<bool>(all(vec4<bool>(false, true, false, global2.x)), false)), select(abs(-u_input.b), u_input.b, vec3<bool>(arg_1 <= arg_1, false, !arg_2.a)), -1328f));
    var var_1 = ~(~firstTrailingBit(~max(u_input.c, u_input.c)));
    var_0 = Struct_3(var_0.c, vec4<i32>(firstTrailingBit(_wgslsmith_clamp_i32(var_0.b.x, -10715i, ~8835i)), _wgslsmith_dot_vec2_i32(reverseBits(-vec2<i32>(-1i, -4822i)), (vec2<i32>(-26433i, arg_1) | vec2<i32>(u_input.a, u_input.a)) << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, 2914u)) % vec2<u32>(32u))), arg_1, max(~_wgslsmith_mod_i32(var_0.e.c.x, arg_1), countOneBits(_wgslsmith_mult_i32(u_input.a, arg_1)))), var_0.a, Struct_2(reverseBits(countOneBits(vec4<u32>(4294967295u, var_0.c.a.x, var_0.e.a.x, 1u))), var_0.d.b, _wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, vec3<i32>(6372i, var_0.b.x, 8138i))), _wgslsmith_add_vec3_i32(abs(var_0.d.c), vec3<i32>(u_input.b.x, var_0.c.c.x, u_input.b.x)), vec3<i32>(var_0.e.c.x, ~1i, -1i)), arg_3.x), var_0.a);
    var var_2 = Struct_4(select(global2.x, var_0.c.b.a.x, func_2(false, select(~var_0.c.a.ww, ~vec2<u32>(var_0.c.a.x, 26475u), any(vec4<bool>(global2.x, arg_2.a, true, global2.x)))).a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(644f - _wgslsmith_f_op_f32(var_0.e.d + arg_2.b.x)), _wgslsmith_f_op_f32(-322f + _wgslsmith_f_op_f32(min(442f, -128f))))));
    let var_3 = -118f;
    return _wgslsmith_f_op_f32(f32(-1f) * -2456f);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: bool) -> Struct_4 {
    var var_0 = u_input.c;
    let var_1 = func_2(true, _wgslsmith_sub_vec2_u32(countOneBits(select(vec2<u32>(u_input.c, arg_1.a.x), arg_1.a.zw, global1.a.x)) & ((arg_1.a.zw ^ arg_1.a.yw) | vec2<u32>(arg_1.a.x, 26987u)), vec2<u32>(select(77622u, 62633u, false), 4294967295u)));
    let var_2 = func_2(arg_1.b.a.x, arg_1.a.zy);
    var var_3 = arg_0;
    let var_4 = arg_0;
    return func_2(var_1.a & !((19272u >= u_input.c) || false), arg_1.a.zy);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> vec4<u32> {
    let var_0 = func_2(!global1.a.x, vec2<u32>(_wgslsmith_add_u32(u_input.c, ~(~1u)), ~(~(~4294967295u))));
    var var_1 = Struct_1(global2.zx);
    var var_2 = func_4(Struct_5(vec3<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(func_3(var_0.b.x, 0i, global3[_wgslsmith_index_u32(0u, 1u)], vec3<f32>(global0.x, -918f, var_0.b.x)))), -506f, 1000f), _wgslsmith_f_op_f32(step(-1792f, 483f)), arg_0.zy), Struct_2(vec4<u32>(u_input.c, _wgslsmith_div_u32(u_input.c, 0u), abs(u_input.c), 7343u), Struct_1(!global2.xy), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x * var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.x, global0.x, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, var_0.b.x, global0.x), vec3<f32>(global0.x, global0.x, 167f))), vec3<f32>(1000f, 889f, var_0.b.x))))), !all(vec3<bool>(func_2(true, vec2<u32>(u_input.c, u_input.c)).a, false, global2.x)));
    let var_3 = Struct_4(!var_1.a.x, var_2.b);
    let var_4 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), ~(_wgslsmith_mult_vec3_u32(vec3<u32>(69263u, u_input.c, u_input.c), vec3<u32>(3085u, 4294967295u, u_input.c)) >> (vec3<u32>(u_input.c, 1u, u_input.c) % vec3<u32>(32u)))) >> (_wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c, 13524u), vec3<u32>(u_input.c, u_input.c, 4294967295u) ^ vec3<u32>(u_input.c, 44505u, 13915u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 7942u, 4294967295u), vec3<u32>(0u, u_input.c, 0u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 73899u), vec3<u32>(4294967295u, u_input.c, 23212u)) & ((vec3<u32>(u_input.c, u_input.c, u_input.c) ^ vec3<u32>(1u, u_input.c, 1631u)) & firstLeadingBit(vec3<u32>(1u, u_input.c, 81402u)))) % vec3<u32>(32u));
    return ~(firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(u_input.c, 53574u), _wgslsmith_add_u32(18194u, u_input.c), ~var_4.x, var_4.x)) | _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~var_4.x, 1324u, abs(4270u)), vec4<u32>(~60381u, var_4.x, u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, 4294967295u, var_4.x, 4294967295u), vec4<u32>(1u, 57838u, 0u, u_input.c)))));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<i32>) -> StorageBuffer {
    global1 = Struct_1(vec2<bool>(false && (_wgslsmith_f_op_f32(503f - arg_0) != -639f), -377f != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + 2297f), _wgslsmith_f_op_f32(942f + arg_0)))));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -1000f) * arg_0), u_input.c, -1i, vec4<i32>(27915i, arg_2.x, abs(countOneBits(-1475i)), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(-34742i), ~(-23554i), 1341i), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(-485f, max(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(56882u, 0u, u_input.c, 1u) << (vec4<u32>(4294967295u, u_input.c, 33606u, u_input.c) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, 80504u, u_input.c), vec4<u32>(u_input.c, u_input.c, 47053u, 2842u))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(29734u, 64441u, u_input.c, u_input.c), vec4<u32>(4294967295u, u_input.c, 99150u, 35767u)), _wgslsmith_add_vec4_u32(vec4<u32>(9088u, 66343u, 1u, 0u), vec4<u32>(0u, 55013u, u_input.c, u_input.c)), vec4<bool>(true, true, false, true))), func_1(u_input.b, u_input.a & 10964i)), ~(-vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.zz), ~u_input.b.x)));
}

