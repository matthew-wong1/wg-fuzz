struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: Struct_4,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(165f, 619f, -739f, -532f), vec4<f32>(1364f, -178f, 121f, 1468f), vec4<f32>(473f, -683f, -318f, 732f), vec4<f32>(538f, -694f, -1806f, -450f));

var<private> global1: array<vec4<i32>, 3>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    var var_0 = min(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, firstTrailingBit(u_input.a), 52319u), reverseBits(~vec3<u32>(u_input.a, u_input.a, 1u))), 0u, ~(~(~22896u)), _wgslsmith_add_u32(~28120u, u_input.a)), countOneBits(vec4<u32>(reverseBits(u_input.a) & countOneBits(u_input.a), ~u_input.a, reverseBits(1u), 1u)));
    global0 = array<vec4<f32>, 4>();
    var var_1 = Struct_2(Struct_1(~max(vec4<u32>(u_input.a, 0u, var_0.x, 20472u), vec4<u32>(1u, u_input.a, 0u, var_0.x)) & _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 23008u), vec4<u32>(0u, 4294967295u, 1u, 102314u)), vec4<u32>(28403u, u_input.a, var_0.x, u_input.a)), u_input.a, any(vec4<bool>(true, true, true, true)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(abs(global1[_wgslsmith_index_u32(83556u, 3u)]), vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, -58245i)), ~vec4<i32>(2147483647i, u_input.c, u_input.c, -39772i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-2541f, 1131f)))) + _wgslsmith_f_op_f32(f32(-1f) * -886f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -809f), 127f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2128f, _wgslsmith_div_f32(-829f, -794f))))), select(!vec4<bool>(true, true, u_input.b.x < -52189i, true), vec4<bool>(any(vec4<bool>(true, false, true, true)) & all(vec4<bool>(false, true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), false), !(!any(vec4<bool>(true, true, true, false)))), Struct_1(vec4<u32>(var_0.x, u_input.a, u_input.a, 40128u), 1730u, false != all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, ~var_0.x), 3u)] | vec4<i32>(u_input.b.x & u_input.b.x, u_input.b.x, 2147483647i, -1i), _wgslsmith_f_op_f32(abs(223f))), Struct_1(vec4<u32>(var_0.x ^ u_input.a, _wgslsmith_mult_u32(34889u, u_input.a), 0u, 66317u) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(49893u, u_input.a, var_0.x, 1u)), 22307u, select(true, false, (u_input.a & 4294967295u) <= ~1u), select(global1[_wgslsmith_index_u32(u_input.a, 3u)], global1[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(u_input.a, 61604u), u_input.a), 3u)], select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -665f))));
    let var_2 = Struct_5(_wgslsmith_dot_vec3_u32(~(~(~var_0.yxx)), vec3<u32>(firstLeadingBit(var_0.x) ^ u_input.a, 0u, _wgslsmith_sub_u32(var_1.d.a.x << (var_0.x % 32u), var_1.a.a.x))), select(var_1.c.yy, vec2<bool>(false, false), false), Struct_4(abs(var_1.e.a.x), 24258i, Struct_2(var_1.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.e, var_1.b.x) - vec2<f32>(var_1.b.x, var_1.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.e, var_1.e.e) + var_1.b)), select(var_1.c, !var_1.c, var_1.a.c || false), var_1.a, Struct_1(vec4<u32>(var_0.x, var_0.x, var_1.a.a.x, var_0.x), 1u, false, var_1.d.d, -2700f))), Struct_3(-139f));
    var var_3 = _wgslsmith_sub_u32(29348u, _wgslsmith_add_u32(var_1.e.a.x, select(~var_0.x, _wgslsmith_mod_u32(var_1.a.b >> (38993u % 32u), var_1.e.b), true)));
    return var_2.c.c.d.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec4<u32>) -> vec3<u32> {
    var var_0 = true && arg_0.c;
    let var_1 = u_input.b;
    let var_2 = true;
    var var_3 = Struct_2(Struct_1(vec4<u32>(~(~0u), ~_wgslsmith_clamp_u32(u_input.a, 4294967295u, arg_3.x), 64005u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.b, 4294967295u, 1u), ~7557u)), arg_0.a.x, var_2, max(_wgslsmith_mod_vec4_i32(vec4<i32>(-11972i, -43906i, 1i, 0i), global1[_wgslsmith_index_u32(39479u, 3u)]), ~global1[_wgslsmith_index_u32(43331u, 3u)]) ^ ~vec4<i32>(var_1.x, arg_0.d.x, arg_0.d.x, var_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e, -341f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, 1852f)))), ~arg_3.x > (_wgslsmith_mult_u32(u_input.a, 0u) >> (~u_input.a % 32u)))), select(vec4<bool>(true, !select(true, false, arg_0.c), all(vec3<bool>(true, true, arg_0.c)), true), vec4<bool>(!arg_0.c, !all(vec3<bool>(true, false, arg_0.c)), all(!vec3<bool>(arg_0.c, arg_0.c, arg_0.c)), all(vec4<bool>(true, var_2, var_2, var_2)) | (0u == u_input.a)), vec4<bool>(!arg_0.c, false, all(vec2<bool>(arg_0.c, false)), arg_0.d.x > (arg_0.d.x | var_1.x))), arg_0, arg_0);
    let var_4 = arg_0.a.x;
    return ~(vec3<u32>(arg_3.x, var_3.d.a.x, firstLeadingBit(~4294967295u)) & (vec3<u32>(13847u << (u_input.a % 32u), arg_3.x, var_3.a.a.x) >> (arg_3.wxx % vec3<u32>(32u))));
}

fn func_2() -> i32 {
    let var_0 = countOneBits(~(vec4<u32>(25323u, firstLeadingBit(57898u), u_input.a, u_input.a >> (u_input.a % 32u)) ^ ~(~vec4<u32>(24908u, u_input.a, 4294967295u, u_input.a))));
    global1 = array<vec4<i32>, 3>();
    var var_1 = func_4(Struct_1(max(func_3(), ~vec4<u32>(u_input.a, var_0.x, u_input.a, 19039u)), ~countOneBits(u_input.a), select(true | any(vec4<bool>(false, true, false, true)), true, false), firstLeadingBit(abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1744f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1142f, -1632f)) - vec2<f32>(1581f, -1043f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(696f, 998f))) - vec2<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 21880i == u_input.c)), -987f)), Struct_3(125f), vec4<u32>(1u, 4294967295u, u_input.a, _wgslsmith_div_u32(~(~35875u), ~102u)));
    global0 = array<vec4<f32>, 4>();
    var var_2 = func_3().x;
    return firstTrailingBit(select(u_input.b.x, _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))), any(vec2<bool>(true, true))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_1.c.b), _wgslsmith_f_op_vec2_f32(-arg_1.c.b))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.x, -1117f))))));
    let var_1 = arg_1.b;
    let var_2 = !(!arg_0.c.e.c);
    global0 = array<vec4<f32>, 4>();
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-812f, _wgslsmith_f_op_f32(-arg_0.c.b.x))) + 1421f)));
    return StorageBuffer(var_3.a, abs(countOneBits(1u & arg_1.a) ^ ~0u), 1801f, arg_0.c.d.a.xz);
}

fn func_1() -> StorageBuffer {
    global0 = array<vec4<f32>, 4>();
    return func_5(Struct_4(abs(_wgslsmith_mod_u32(u_input.a, u_input.a) | ~5978u), ~select(_wgslsmith_sub_i32(-20234i, -1i), func_2(), true), Struct_2(Struct_1(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(1634u, u_input.a), vec2<u32>(u_input.a, u_input.a)), true, -global1[_wgslsmith_index_u32(u_input.a, 3u)], -226f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(627f, -2586f), vec2<f32>(877f, 1029f), vec2<bool>(false, true)))), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), Struct_1(vec4<u32>(61926u, u_input.a, 27708u, 0u), u_input.a | u_input.a, true, global1[_wgslsmith_index_u32(52496u, 3u)], _wgslsmith_div_f32(-280f, 333f)), Struct_1(vec4<u32>(u_input.a, 40471u, u_input.a, u_input.a), firstTrailingBit(u_input.a), true, global1[_wgslsmith_index_u32(16135u, 3u)], -1472f))), Struct_4(min(select(~4294967295u, firstLeadingBit(75233u), true), 24661u), -_wgslsmith_div_i32(59198i, -36745i) | reverseBits(select(-2147483647i, 0i, true)), Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(2525u, u_input.a, 30647u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), firstLeadingBit(u_input.a), any(vec4<bool>(false, false, true, false)), countOneBits(global1[_wgslsmith_index_u32(28322u, 3u)]), -1402f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-472f, -958f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(453f, 400f) - vec2<f32>(885f, -2757f))), vec4<bool>(true, true, false, any(vec2<bool>(false, true))), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 21609u, u_input.a, 0u), vec4<u32>(u_input.a, 1u, 0u, 4294967295u)), 1040u, true, ~vec4<i32>(u_input.c, 27485i, u_input.b.x, 59448i), 677f), Struct_1(func_3(), ~6077u, true, vec4<i32>(u_input.c, u_input.c, u_input.b.x, u_input.c), _wgslsmith_f_op_f32(min(721f, 1124f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, 1u), 4u)], vec4<f32>(_wgslsmith_f_op_f32(trunc(434f)), _wgslsmith_f_op_f32(trunc(230f)), 1f, _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a), 4u)])), global0[_wgslsmith_index_u32(4294967295u, 4u)], select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~(32157u | select(u_input.a, 37801u | u_input.a, true)), abs(_wgslsmith_add_u32(~0u, 0u)), 1u, 16128u);
    var var_1 = u_input.a;
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(-u_input.b.x, _wgslsmith_sub_i32(2147483647i >> (~var_0.x % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(9697i, u_input.b.x, 2147483647i), -vec3<i32>(8867i, u_input.c, -21313i)))), -8625i);
    let x = u_input.a;
    s_output = func_1();
}

