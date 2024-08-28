struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2;

var<private> global2: bool;

var<private> global3: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false));

var<private> global4: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_mult_u32(max(reverseBits(u_input.b), 4294967295u) ^ 39284u, ~global1.d.a), global1.b.b & true);
    var_0 = global1.b;
    var var_1 = Struct_3(firstLeadingBit(i32(-1i) * -(5099i >> (0u % 32u))));
    global3 = array<vec4<bool>, 4>();
    let var_2 = arg_0;
    return ~33392u;
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = ~_wgslsmith_sub_u32(~func_3(vec3<bool>(global1.b.b, false, true), Struct_4(global1.b, -10798i, true, Struct_1(u_input.b, false), vec3<u32>(global1.d.a, 26357u, global1.b.a)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(global1.d.b, true, global1.d.b)), arg_0.x), abs(13922u));
    let var_1 = Struct_2(-678f, global1.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-491f, _wgslsmith_f_op_f32(-112f + global1.a)))), vec2<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c.x, global1.a, global1.b.b))))), Struct_1(~_wgslsmith_add_u32(88873u, u_input.b), false));
    let var_2 = var_1.d;
    let var_3 = var_2.a & abs(global1.d.a);
    let var_4 = !select(select(!(!vec3<bool>(var_1.b.b, var_1.d.b, var_2.b)), select(!vec3<bool>(true, false, var_2.b), !vec3<bool>(var_2.b, global1.b.b, true), false), !vec3<bool>(var_2.b, true, true)), vec3<bool>(any(global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 4u)]), select(true, var_2.b, true), var_2.b), !select(!vec3<bool>(false, var_1.d.b, global1.d.b), !vec3<bool>(var_1.d.b, var_2.b, var_1.b.b), global1.d.b));
    return arg_0.x <= abs(_wgslsmith_dot_vec3_i32(select(arg_0, vec3<i32>(arg_0.x, arg_0.x, 2147483647i), var_1.d.b) & ~arg_0, _wgslsmith_mult_vec3_i32(arg_0, _wgslsmith_add_vec3_i32(arg_0, arg_0))));
}

fn func_1() -> f32 {
    global0 = false;
    let var_0 = Struct_4(global1.d, max(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(1i, -1i, 0i, -2147483647i)) | -vec4<i32>(-61917i, -2147483647i, -32554i, -1i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 30977i, 0i, 1i), vec4<i32>(35249i, -11884i, 58045i, -2147483647i), vec4<i32>(-3083i, -8479i, -2147483647i, -1i))), select(-13086i, ~_wgslsmith_mult_i32(-14023i, 1i), !global1.b.b && (-180f != global1.c.x))), true, Struct_1(~34113u, func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 61716i, -2147483647i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(-25128i, -2147483647i, -20688i)) << (~vec3<u32>(4294967295u, u_input.a.x, global1.d.a) % vec3<u32>(32u)))), vec3<u32>(21605u, u_input.a.x, 14377u));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, global1.c.x, 309f, -1085f) - vec4<f32>(global1.a, global1.a, 219f, 2579f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-567f, global1.a, global1.c.x, global1.a), vec4<f32>(global1.c.x, 343f, global1.c.x, global1.a))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(786f * -1135f), _wgslsmith_f_op_f32(-global1.a), 930f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(958f))), global1.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a - global1.a))), 450f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, 1f, -621f, global1.c.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(765f, _wgslsmith_f_op_f32(global1.a + global1.c.x), _wgslsmith_f_op_f32(select(-1000f, global1.c.x, false)), _wgslsmith_f_op_f32(global1.a * global1.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.c.x, -975f, -1298f, global1.c.x))) * vec4<f32>(1571f, global1.a, global1.a, -691f)))));
    let var_2 = any(vec3<bool>(!((global1.b.a << (u_input.a.x % 32u)) >= 24652u), var_0.d.b, var_1.x != -747f));
    global1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -648f), global1.d, vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.c.x)), _wgslsmith_f_op_f32(-var_1.x)), Struct_1(_wgslsmith_mult_u32(abs(36561u), _wgslsmith_dot_vec2_u32(vec2<u32>(23095u, 0u), countOneBits(vec2<u32>(10936u, 1u)))), var_0.b == var_0.b));
    return _wgslsmith_f_op_f32(950f * _wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(-809f, _wgslsmith_f_op_f32(f32(-1f) * -878f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x)))))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_2.a, arg_2.a)), 1f)), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1018f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1546f, arg_2.c.x, global1.c.x) * vec3<f32>(-1011f, 933f, 1522f)) * vec3<f32>(arg_2.c.x, 759f, 662f))))));
    var var_2 = !(!(0u >= u_input.a.x));
    global4 = _wgslsmith_f_op_f32(select(arg_2.c.x, arg_2.c.x, !all(vec2<bool>(true, true))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1287f, -1020f, _wgslsmith_f_op_f32(sign(var_1.x)), global1.a));
    return Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(567f)), _wgslsmith_f_op_f32(var_1.x + global1.a))), Struct_1(0u, func_2(max(~arg_3, vec3<i32>(-2147483647i, 2147483647i, arg_0) ^ vec3<i32>(-22207i, -22633i, 0i)))), global1.c, global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(-global1.a);
    global4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.c.x))))));
    var var_0 = func_4(1i, _wgslsmith_mod_i32(select(-5200i, 1i, false) & 1i, -2147483647i) << (10967u % 32u), Struct_2(_wgslsmith_f_op_f32(func_1()), global1.b, global1.c, Struct_1(_wgslsmith_sub_u32(~u_input.a.x, select(u_input.b, u_input.b, global1.b.b)), true)), ~(-vec3<i32>(1i, 1i, 1i)));
    let var_1 = func_4(countOneBits(1i), -39743i, func_4(firstTrailingBit(27238i), firstLeadingBit(i32(-1i) * -38075i), Struct_2(_wgslsmith_f_op_f32(-global1.c.x), func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(-4255i, 9855i, 32930i), vec3<i32>(-15241i, 42981i, 25206i)), 11015i, func_4(2147483647i, 0i, Struct_2(-1431f, var_0.b, global1.c, global1.d), vec3<i32>(4207i, 41828i, -17423i)), vec3<i32>(-29244i, 159i, -1i) << (vec3<u32>(global1.d.a, 4294967295u, 0u) % vec3<u32>(32u))).d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1137f, -229f))) * vec2<f32>(var_0.a, var_0.a)), Struct_1(~66399u, u_input.b != 0u)), vec3<i32>(_wgslsmith_mod_i32(~13828i, firstLeadingBit(0i)), _wgslsmith_add_i32(2147483647i, -46275i), 1i)), max(vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(-vec3<i32>(13146i, -22530i, 0i), vec3<i32>(i32(-1i) * -99i, -35020i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 2147483647i, 2959i), vec4<i32>(-1371i, 0i, -14551i, -48427i))), reverseBits(max(vec3<i32>(-24636i, -19963i, -66068i), vec3<i32>(0i, -7754i, -2147483647i)))))).d;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_0.a, -904f, true)), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(round(-948f)), -130f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global1.c.x + global1.c.x), var_0.a, _wgslsmith_f_op_f32(min(var_0.c.x, -847f)), _wgslsmith_f_op_f32(trunc(-569f))), vec4<f32>(_wgslsmith_f_op_f32(round(global1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1461f), _wgslsmith_f_op_f32(-var_0.a), var_0.c.x), _wgslsmith_f_op_f32(select(var_0.c.x, 1852f, var_0.d.b)) < _wgslsmith_f_op_f32(f32(-1f) * -320f))))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(873f, global1.a, global1.a, -852f) * vec4<f32>(var_0.a, var_0.a, var_2.x, -579f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1172f, var_0.c.x, -186f, var_0.c.x), vec4<f32>(var_2.x, var_0.a, 1068f, var_2.x), vec4<bool>(var_1.b, true, false, var_1.b))))), vec4<f32>(var_2.x, var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_f_op_f32(-global1.a))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c.x, -1926f, global1.c.x, var_0.c.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.c.x, var_2.x, global1.a, var_2.x))), !var_1.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(global1.b.a, 65348u, var_0.b.a)), vec3<u32>(22118u, abs(41566u), 0u)), vec3<u32>(var_0.b.a, ~var_0.d.a, u_input.b), 2147483647i, _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(-62076i) ^ select(2147483647i, -5i, var_0.b.b), 1i, reverseBits(1i), -(~(-50012i))), vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -38104i, -1i, 2147483647i), vec4<i32>(2147483647i, -2147483647i, -19267i, -12300i))), -2147483647i, _wgslsmith_sub_i32(i32(-1i) * -42483i, 1i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -36952i, 26665i), vec3<i32>(2147483647i, 5632i, 19387i)))));
}

