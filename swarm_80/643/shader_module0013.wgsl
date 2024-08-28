struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(668f, -1000f), vec2<f32>(-1000f, -1079f), vec2<f32>(1000f, -164f), vec2<f32>(-585f, -384f), vec2<f32>(1000f, -1320f), vec2<f32>(-1274f, -1278f), vec2<f32>(-571f, 1000f), vec2<f32>(959f, -115f), vec2<f32>(211f, 1195f), vec2<f32>(427f, -1899f), vec2<f32>(-263f, 312f), vec2<f32>(-924f, 1000f), vec2<f32>(-2882f, -1323f), vec2<f32>(-733f, -773f), vec2<f32>(1542f, 719f), vec2<f32>(-1599f, 177f), vec2<f32>(-829f, 1765f), vec2<f32>(-738f, 421f), vec2<f32>(1000f, 357f), vec2<f32>(-1756f, -112f), vec2<f32>(-253f, 1105f), vec2<f32>(-1230f, -252f), vec2<f32>(161f, -809f), vec2<f32>(444f, 1567f), vec2<f32>(-1474f, 1075f));

var<private> global1: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    var var_0 = true;
    global0 = array<vec2<f32>, 25>();
    global0 = array<vec2<f32>, 25>();
    var var_1 = Struct_1(max(~_wgslsmith_div_vec4_u32(~arg_0.a, vec4<u32>(arg_0.d, 30157u, arg_1.x, u_input.b.x)), countOneBits(~(u_input.c | vec4<u32>(1u, arg_1.x, arg_0.c.x, arg_0.a.x)))), vec3<f32>(1524f, 1552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(2687f * arg_0.b.x)))), vec3<u32>(u_input.c.x, reverseBits(~_wgslsmith_dot_vec4_u32(u_input.b, arg_0.a)), ~u_input.a.x), max(max(firstTrailingBit(_wgslsmith_clamp_u32(35432u, u_input.c.x, 63134u)), 0u), ~min(4561u, arg_1.x)), !vec2<bool>(select(true, arg_1.x < arg_1.x, arg_0.e.x), !arg_0.e.x && true));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.x, -421f), var_1.b.yz) + var_1.b.zz))), max(_wgslsmith_mod_vec2_i32(arg_2, countOneBits(max(arg_2, vec2<i32>(arg_2.x, arg_2.x)))), -arg_2), arg_0, ~select(firstLeadingBit(vec2<i32>(arg_2.x, arg_2.x)), select(~vec2<i32>(arg_2.x, 1502i), vec2<i32>(-2147483647i, arg_2.x), vec2<bool>(true, true)), all(vec2<bool>(var_1.e.x, false))));
    return var_1.b.x;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1436f)), 688f)));
    global0 = array<vec2<f32>, 25>();
    var var_1 = 1u;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1739f) - var_0)) - _wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a.x), vec3<f32>(var_0, var_0, var_0), vec3<u32>(53095u, u_input.c.x, 1u), countOneBits(u_input.a.x), vec2<bool>(false, false)), vec3<u32>(~24332u, abs(57170u), _wgslsmith_add_u32(0u, u_input.a.x)), reverseBits(vec2<i32>(0i, arg_0) | vec2<i32>(-2147483647i, 25307i)), false))));
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], ~firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(arg_0, arg_0), 30565i)), Struct_1(~(~u_input.a ^ max(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.a, 1449f, var_2.a))) * vec3<f32>(484f, var_2.a, -409f)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, 627f, var_0), vec3<f32>(var_0, -600f, 1199f)), vec3<f32>(var_2.a, var_0, 1601f)))), abs(~abs(u_input.c.zxw)), ~1u, select(vec2<bool>(false, false), vec2<bool>(true, true), u_input.b.x <= ~2376u)), vec2<i32>(-21791i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_0, arg_0) & arg_0, -1i, arg_0)));
    return Struct_3(517f);
}

fn func_4(arg_0: Struct_3) -> vec3<u32> {
    global1 = u_input.c.x;
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1271f) + _wgslsmith_f_op_f32(max(arg_0.a, arg_0.a))) + _wgslsmith_f_op_f32(-1713f + _wgslsmith_f_op_f32(arg_0.a - -161f))), arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_0.a, 341f)))), _wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(arg_0.a * 1091f))), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1158f, -259f, any(vec2<bool>(false, false)))) + _wgslsmith_f_op_f32(floor(arg_0.a)))), arg_0.a, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1897f + 1023f) * -1308f))));
    global0 = array<vec2<f32>, 25>();
    let var_1 = 767f;
    return ~abs(u_input.c.xxy);
}

fn func_1() -> vec4<f32> {
    var var_0 = ~_wgslsmith_dot_vec3_u32(func_4(func_2(12997i)), ~(u_input.c.zyy ^ u_input.b.wxy)) >> (36839u % 32u);
    var var_1 = func_2(_wgslsmith_add_i32(~(~countOneBits(2147483647i)), countOneBits(-1i)));
    var var_2 = ~u_input.b.x >> (min(5132u, _wgslsmith_sub_u32(~u_input.b.x, ~1u) | ~u_input.a.x) % 32u);
    let var_3 = u_input.a.x;
    var var_4 = _wgslsmith_sub_i32(~(~(2147483647i >> (var_3 % 32u))), select(1i, -(i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(var_1.a * -882f) > _wgslsmith_div_f32(-1662f, var_1.a))) ^ 20643i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -660f, _wgslsmith_f_op_f32(step(-919f, var_1.a)), _wgslsmith_f_op_f32(var_1.a + 911f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1954f, 380f, 849f, var_1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 105255u;
    let var_0 = -(_wgslsmith_sub_i32(abs(-28047i), 1i) >> ((firstLeadingBit(0u) ^ u_input.b.x) % 32u)) ^ _wgslsmith_mod_i32(0i, _wgslsmith_sub_i32(-33942i, 1i));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(func_1()));
    var var_2 = Struct_1(~vec4<u32>(func_4(Struct_3(var_1.a.x)).x, abs(u_input.a.x), u_input.c.x, 1u) << (~vec4<u32>(19444u, min(u_input.b.x, u_input.b.x), ~15330u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.c.x), u_input.a.wz)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(var_1.a.wyw, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 1287f, -193f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, -768f))))))), vec3<u32>(u_input.c.x, u_input.a.x >> (~u_input.a.x % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 51137u), vec4<u32>(0u, u_input.b.x, 34228u, 0u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 594u, u_input.a.x))), countOneBits(0u) & ~select(reverseBits(1u), ~u_input.a.x, all(vec3<bool>(false, true, false))), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(u_input.a.x != u_input.a.x, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(false, true, true)), false), _wgslsmith_f_op_f32(func_3(Struct_1(u_input.c, vec3<f32>(319f, -2077f, -1054f), vec3<u32>(55421u, u_input.a.x, 0u), u_input.a.x, vec2<bool>(true, true)), vec3<u32>(u_input.b.x, 36011u, u_input.a.x), min(vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_0)), var_0 > var_0)) != -456f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_1.a), vec4<i32>(countOneBits(-_wgslsmith_div_i32(var_0, var_0)), -var_0, 2147483647i, abs(1i)), 0u, var_2.c.x);
}

