struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29>;

var<private> global1: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    global1 = !any(!arg_0.d.xxz);
    global0 = array<vec3<u32>, 29>();
    global1 = false;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a))), all(arg_0.d.xwy) || (any(select(arg_0.d, vec4<bool>(arg_0.b, arg_0.b, true, false), vec4<bool>(true, false, false, arg_0.d.x))) & true), _wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, 2147483647i, arg_0.c.x, arg_0.c.x) >> (~u_input.a % vec4<u32>(32u)), ~(~vec4<i32>(-57662i, arg_0.c.x, arg_0.c.x, arg_0.c.x))) >> (reverseBits(vec4<u32>(~u_input.a.x, u_input.b.x, 106114u, 89037u)) % vec4<u32>(32u)), !arg_0.d);
    var var_1 = 1789i;
    return vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 11463u, _wgslsmith_mult_u32(u_input.a.x, 1u), ~22525u | u_input.b.x), _wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.b.x, 55863u, u_input.b.x)), u_input.a)), u_input.a.x);
}

fn func_3() -> f32 {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(select(1683f, _wgslsmith_f_op_f32(abs(-1587f)), true)), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(250f, -900f)) + -1313f))), _wgslsmith_f_op_f32(min(1574f, 1000f))), Struct_1(_wgslsmith_f_op_f32(-1082f - 339f), false, countOneBits(reverseBits(vec4<i32>(39672i, 2147483647i, -80573i, -1i))), select(vec4<bool>(false, true, true, 1u >= u_input.b.x), vec4<bool>(true, true, true, true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-115f, 277f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1364f, 288f) * vec2<f32>(-882f, 1851f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-205f, 1000f)), _wgslsmith_f_op_f32(1608f * _wgslsmith_f_op_f32(-2427f - 1122f)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(786f * 894f) + _wgslsmith_f_op_f32(-956f + -485f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -933f)), any(vec3<bool>(true, true, true)), ~vec4<i32>(1i, -38186i, 2147483647i, -38038i), vec4<bool>(true, true, true, true)), ~(~select(vec2<i32>(-167i, -20029i), vec2<i32>(15538i, -2147483647i), false)), true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-654f, 547f) - vec2<f32>(-260f, -578f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, 370f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, 346f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1402f)), _wgslsmith_div_f32(-317f, 432f)))))));
    var var_1 = !any(vec3<bool>(true, true, false));
    var_0 = Struct_3(var_0.a, Struct_1(var_0.e.x, var_0.b.b, ~_wgslsmith_add_vec4_i32(var_0.d.b.c ^ var_0.d.b.c, var_0.d.b.c | vec4<i32>(var_0.b.c.x, -1657i, var_0.d.b.c.x, var_0.d.b.c.x)), !var_0.b.d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a))), var_0.b.a), var_0.d, _wgslsmith_f_op_vec2_f32(select(var_0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_0.c.x, 654f)), _wgslsmith_f_op_f32(ceil(-351f)))), var_0.b.d.wz)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.a.x), true, ~(-vec4<i32>(var_0.d.b.c.x, _wgslsmith_mod_i32(0i, var_0.b.c.x), 2147483647i, _wgslsmith_add_i32(var_0.d.b.c.x, 0i))), vec4<bool>(!var_0.d.b.b, any(!vec4<bool>(var_0.b.b, false, var_0.b.d.x, false)) & any(vec3<bool>(var_0.d.d, false, var_0.d.d)), var_0.d.d, !all(var_0.d.b.d)));
    var var_3 = var_0.c.x != _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(select(1228f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_2.a, 358f, true)))), false)));
    return 1096f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(725f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1777f + 1184f))), -449f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-333f, -1254f, -259f, 158f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-613f, -820f, -2090f, -871f)), any(vec3<bool>(true, true, false)))))));
    let var_1 = Struct_2(389f, Struct_1(_wgslsmith_f_op_f32(var_0.x * var_0.x), any(vec4<bool>(any(vec4<bool>(false, true, true, true)), true, select(true, true, false), true)), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 53943i), -vec2<i32>(1i, 1i)), vec2<i32>(0i, _wgslsmith_add_i32(max(25525i, -1i), -93217i)), countOneBits(~(-vec2<i32>(-1i, 22126i)))), all(!vec3<bool>(any(vec4<bool>(true, false, false, true)), false, any(vec3<bool>(true, false, true)))));
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a + _wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_f32(f32(-1f) * -472f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(405f)))), var_1.a)), var_1.b, var_0.yy, Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(var_1.a - var_0.x)))), var_1.b, var_1.b.c.zz, any(var_1.b.d.wx) || (-1i > _wgslsmith_add_i32(8530i, var_1.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(-var_0.x)), -1152f)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-541f * -1609f) * _wgslsmith_f_op_f32(round(var_1.b.a))))) - var_2.b.a), var_2.d.b, ~(~(-var_1.b.c.wx)) | ((_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.b.c.x, -25653i), var_1.b.c.zy) ^ vec2<i32>(1i, -27529i)) >> (u_input.b % vec2<u32>(32u))), (_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(1u, 1u, 15104u)), ~u_input.a.zxz) >> (((4294967295u & u_input.b.x) | _wgslsmith_add_u32(0u, 24412u)) % 32u)) <= 105041u);
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0, vec4<f32>(var_1.b.a, _wgslsmith_f_op_f32(-var_1.a), 188f, _wgslsmith_div_f32(-611f, var_0.x)))), var_2.d.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.xz + var_0.xx) + vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.c.x)), _wgslsmith_f_op_f32(-var_2.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_2.c))))), var_1, vec2<f32>(319f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a * _wgslsmith_f_op_f32(-888f * var_3.a)) * var_3.a)), max(firstTrailingBit(u_input.a.x), u_input.a.x) == _wgslsmith_clamp_u32(~u_input.b.x, firstLeadingBit(~u_input.a.x), 1u), vec4<i32>(-(var_4.b.c.x ^ var_4.d.b.c.x), ~1i, 1i, _wgslsmith_sub_i32(var_2.b.c.x, countOneBits(var_1.b.c.x))) >> (select(vec4<u32>(reverseBits(104778u), u_input.a.x, _wgslsmith_mult_u32(4294967295u, u_input.a.x), max(4294967295u, u_input.b.x)), vec4<u32>(~u_input.a.x, u_input.a.x >> (u_input.a.x % 32u), 22925u, reverseBits(u_input.a.x)), vec4<bool>(var_2.d.b.d.x || false, true, any(vec2<bool>(var_3.b.d.x, var_1.d)), !var_1.d)) % vec4<u32>(32u)), !select(vec4<bool>(any(vec3<bool>(true, true, var_2.b.d.x)), select(false, false, true), var_2.d.d, var_2.d.d), var_1.b.d, !var_4.b.d));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, 1000f, arg_0.a)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, 1067f, -442f) * vec4<f32>(-547f, -2728f, arg_0.a, arg_0.a)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))), true, arg_0.c, !(!vec4<bool>(true, false, arg_0.b, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-110f, _wgslsmith_div_f32(-1741f, arg_0.a)))), Struct_2(-390f, arg_0, vec2<i32>(_wgslsmith_clamp_i32(-arg_0.c.x, ~(-2147483647i), -arg_0.c.x), -2147483647i), ~firstTrailingBit(5620u) == 59558u), vec2<f32>(arg_0.a, 310f));
    let var_1 = arg_0.c.xxw;
    var var_2 = true;
    let var_3 = var_0.d;
    var var_4 = _wgslsmith_f_op_vec3_f32(var_0.a.xzx - _wgslsmith_f_op_vec3_f32(round(var_0.a.wyy)));
    return StorageBuffer(vec4<i32>(_wgslsmith_div_i32(-var_3.c.x, func_2().c.x), _wgslsmith_add_i32(arg_0.c.x & 2147483647i, 0i), ~(-1i), ~(i32(-1i) * -2147483647i)) & arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(func_2().a + -1024f), 1782f, -866f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 19302i, -2147483647i, -1i), vec4<i32>(0i, -27122i, -23727i, 50084i))), i32(-1i) * -_wgslsmith_mod_i32(-1i, -1i), select(-2147483647i, 1i, true));
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_div_vec2_u32(~func_1(Struct_1(_wgslsmith_f_op_f32(1248f - -372f), true, vec4<i32>(var_0.x, -9830i, -1i, var_0.x) & vec4<i32>(8335i, var_0.x, var_0.x, 3020i), vec4<bool>(false, false, false, false))), min(abs(vec2<u32>(45399u, 0u)) | select(vec2<u32>(88376u, 1u), ~vec2<u32>(u_input.a.x, 7675u), vec2<bool>(true, false)), countOneBits(u_input.b)));
    global1 = true;
    var var_3 = (-vec3<i32>(var_0.x, abs(9367i), 1i) >> (select(vec3<u32>(1u, _wgslsmith_div_u32(u_input.b.x, u_input.a.x), 1u), vec3<u32>(_wgslsmith_sub_u32(var_2.x, var_2.x), 0u, 0u), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))) % vec3<u32>(32u))) | vec3<i32>(23556i, 49483i, var_0.x);
    let x = u_input.a;
    s_output = func_4(func_2(), any(!vec2<bool>(all(vec4<bool>(true, true, false, true)), true)));
}

