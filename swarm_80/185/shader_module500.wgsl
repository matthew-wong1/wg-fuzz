struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 21>;

var<private> global2: Struct_2 = Struct_2(Struct_1(1i, vec3<u32>(1u, 31252u, 1u), vec3<bool>(true, false, false), vec4<f32>(-505f, -1701f, -2165f, 647f), 4294967295u), vec2<f32>(418f, 1478f), vec2<i32>(24261i, -15436i), vec2<f32>(-702f, -966f));

var<private> global3: Struct_2 = Struct_2(Struct_1(34284i, vec3<u32>(4294967295u, 0u, 4294967295u), vec3<bool>(true, false, true), vec4<f32>(118f, -895f, -258f, 1194f), 0u), vec2<f32>(-984f, -1070f), vec2<i32>(2147483647i, 0i), vec2<f32>(-752f, -1000f));

var<private> global4: array<bool, 23> = array<bool, 23>(false, true, false, false, false, false, false, true, true, false, false, true, true, false, true, true, true, true, false, false, true, true, false);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> vec4<f32> {
    global1 = array<Struct_1, 21>();
    let var_0 = vec3<u32>(0u << ((~26520u & u_input.e.x) % 32u), _wgslsmith_add_u32(87666u >> (countOneBits(_wgslsmith_div_u32(1u, global3.a.b.x)) % 32u), firstLeadingBit(~firstTrailingBit(4898u))), 1u);
    global4 = array<bool, 23>();
    global3 = Struct_2(Struct_1(_wgslsmith_div_i32(u_input.b.x >> (3448u % 32u), 25021i << (1u % 32u)) | global3.a.a, _wgslsmith_mult_vec3_u32(~global3.a.b, arg_0), global2.a.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a.d.x)) - 725f), global3.d.x, global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x * global3.d.x) * -1086f)), _wgslsmith_clamp_u32(50272u, ~(~10830u), ~4294967295u | u_input.e.x)), global2.b, vec2<i32>(u_input.c, _wgslsmith_div_i32(global2.a.a, ~global2.a.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1596f)) * _wgslsmith_div_f32(1873f, global3.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(926f, _wgslsmith_f_op_f32(-1918f * global2.a.d.x)), _wgslsmith_f_op_f32(-global2.a.d.x)))));
    var var_1 = Struct_2(Struct_1(global2.c.x, ~arg_0, global2.a.c, global3.a.d, 1u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global3.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.a.d.zz, vec2<f32>(global2.a.d.x, global2.a.d.x))))))), u_input.d, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(floor(875f)), _wgslsmith_f_op_f32(step(global2.b.x, global2.a.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.a.d.x, 1196f), global3.b))))))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(813f, 3216f)) + _wgslsmith_f_op_f32(min(global2.a.d.x, _wgslsmith_f_op_f32(trunc(-222f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) * -1674f), global2.b.x, 781f) - vec4<f32>(_wgslsmith_f_op_f32(global3.a.d.x * _wgslsmith_f_op_f32(step(-427f, _wgslsmith_f_op_f32(sign(351f))))), -719f, global3.b.x, global3.a.d.x));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(~(~(~u_input.e) << (global3.a.b % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, -1720f)))));
    let var_3 = Struct_2(global3.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.b) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-995f, global2.b.x))) - vec2<f32>(2923f, global3.a.d.x)), vec2<f32>(-655f, -957f), global3.a.c.xz))), _wgslsmith_div_vec2_i32(countOneBits(reverseBits(-u_input.b.xz)), vec2<i32>(~_wgslsmith_mult_i32(global2.a.a, global2.a.a), -max(45643i, 1i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-265f, global3.d.x)));
    let var_4 = ~(~(~vec4<u32>(_wgslsmith_add_u32(25116u, 41645u), arg_2, _wgslsmith_add_u32(u_input.e.x, 4294967295u), arg_2)));
    return Struct_1(countOneBits(var_3.c.x), min(global2.a.b, global3.a.b), !select(!(!vec3<bool>(true, global3.a.c.x, false)), !select(var_3.a.c, var_3.a.c, vec3<bool>(var_3.a.c.x, global3.a.c.x, global4[_wgslsmith_index_u32(38193u, 23u)])), true), var_3.a.d, arg_2);
}

fn func_1() -> Struct_1 {
    var var_0 = global3.a.e;
    let var_1 = global2.a.c;
    global2 = Struct_2(func_2(1i, global2.a.d.wyw, ~_wgslsmith_mod_u32(4294967295u, 6391u)), global3.a.d.wz, -(~abs(_wgslsmith_add_vec2_i32(vec2<i32>(global2.a.a, global2.a.a), vec2<i32>(7361i, u_input.d.x)))), vec2<f32>(1223f, _wgslsmith_f_op_f32(f32(-1f) * -953f)));
    let var_2 = Struct_1(global3.c.x, global3.a.b, select(!vec3<bool>(88139u != global3.a.b.x, !global4[_wgslsmith_index_u32(1u, 23u)], true), select(!select(vec3<bool>(true, true, false), global3.a.c, var_1.x), select(!global3.a.c, global3.a.c, var_1.x), true), !global2.a.c.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-916f))), global3.a.d.x, global2.a.d.x, 1000f), _wgslsmith_add_u32(56963u, ~global3.a.b.x));
    global0 = global3.d.x;
    return Struct_1(i32(-1i) * -_wgslsmith_div_i32(64087i, ~var_2.a), ~(~vec3<u32>(22162u, 1u | global2.a.e, global2.a.b.x)), !vec3<bool>(all(select(var_2.c.zx, global2.a.c.zz, true)), all(select(var_2.c, vec3<bool>(global2.a.c.x, true, global4[_wgslsmith_index_u32(0u, 23u)]), global3.a.c.x)), true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, global2.a.d.x, 1000f, 2074f)) - _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(4294967295u, u_input.e.x, 77979u)))), vec4<f32>(var_2.d.x, global2.b.x, _wgslsmith_f_op_f32(global2.a.d.x * 836f), 492f), vec4<bool>(func_2(-16904i, global3.a.d.wxx, global3.a.b.x).c.x, !var_1.x, true, true))))), 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = ~vec4<u32>(min(global3.a.e, 67426u), select(global3.a.e, ~(39861u ^ arg_1.a.e), any(!vec4<bool>(global4[_wgslsmith_index_u32(global3.a.b.x, 23u)], arg_0.c.x, arg_0.c.x, global4[_wgslsmith_index_u32(62186u, 23u)]))), firstTrailingBit(~func_1().e), 0u);
    let var_2 = func_2(~_wgslsmith_add_i32(_wgslsmith_mod_i32(global3.a.a, min(42771i, 0i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.c.x, -33655i, global3.c.x), u_input.b), ~u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-260f, -1285f, _wgslsmith_f_op_f32(-global2.b.x)), vec3<f32>(_wgslsmith_f_op_f32(-global2.a.d.x), _wgslsmith_f_op_f32(global2.d.x - global2.b.x), _wgslsmith_f_op_f32(366f * 421f))))), global2.a.e);
    global3 = arg_1;
    let var_3 = abs(max(_wgslsmith_mod_vec3_i32(select(select(u_input.b, vec3<i32>(global3.c.x, global3.a.a, 2147483647i), vec3<bool>(false, true, global2.a.c.x)), ~vec3<i32>(-8012i, u_input.d.x, arg_0.a), global2.a.c), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.a, arg_1.c.x, var_2.a), u_input.b) >> (~u_input.e % vec3<u32>(32u))), -vec3<i32>(~12646i, arg_1.c.x, var_0.a.a)));
    return Struct_2(Struct_1(_wgslsmith_mod_i32(~0i, -2147483647i) << (_wgslsmith_mod_u32(8969u, _wgslsmith_mod_u32(arg_1.a.e, 0u)) % 32u), (~vec3<u32>(arg_0.e, var_0.a.e, 1u) ^ func_1().b) ^ arg_0.b, arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b.x - global2.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1460f, 1078f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f) * _wgslsmith_f_op_f32(select(1388f, arg_1.d.x, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.d.x, 947f)), _wgslsmith_div_f32(arg_1.d.x, global3.d.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~var_2.b.xx, ~vec2<u32>(2581u, var_1.x)), vec2<u32>(var_1.x, ~var_0.a.e))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.d, _wgslsmith_f_op_vec2_f32(select(global3.a.d.wz, vec2<f32>(global3.a.d.x, var_2.d.x), global2.a.c.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d.x, global3.b.x) * _wgslsmith_f_op_vec2_f32(step(global2.a.d.wx, vec2<f32>(-191f, global3.d.x))))), _wgslsmith_f_op_vec2_f32(-var_0.d))), vec2<i32>(func_1().a, i32(-1i) * -_wgslsmith_mod_i32(var_3.x, 2147483647i)), vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(firstTrailingBit(31157u), var_0.a.b.x, 1u))).x, var_0.a.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), Struct_2(Struct_1(global2.c.x, ~(vec3<u32>(u_input.e.x, 83685u, 40485u) & vec3<u32>(4294967295u, 1u, global3.a.e)), !func_1().c, func_2(global3.c.x, _wgslsmith_f_op_vec4_f32(func_3(global3.a.b)).xzx, ~global3.a.b.x).d, abs(~32861u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(global3.d.x - global2.d.x)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.b.x, 357f), vec2<f32>(global3.a.d.x, -634f)))))), vec2<i32>(16192i, global2.c.x), global2.a.d.zz));
    global3 = func_4(func_4(Struct_1(~2147483647i, vec3<u32>(var_0.a.b.x, 4294967295u, 4294967295u | global3.a.b.x), !(!global2.a.c), func_4(func_4(global1[_wgslsmith_index_u32(global2.a.b.x, 21u)], Struct_2(Struct_1(-1i, global3.a.b, var_0.a.c, vec4<f32>(174f, 374f, var_0.a.d.x, var_0.d.x), 17011u), global2.a.d.xy, vec2<i32>(global3.a.a, 18807i), vec2<f32>(var_0.b.x, -296f))).a, Struct_2(Struct_1(global3.c.x, global3.a.b, global3.a.c, vec4<f32>(-778f, global2.b.x, global2.d.x, var_0.b.x), u_input.e.x), vec2<f32>(642f, var_0.d.x), vec2<i32>(var_0.a.a, 0i), vec2<f32>(-1527f, -282f))).a.d, (u_input.e.x >> (var_0.a.e % 32u)) ^ (u_input.e.x ^ 0u)), Struct_2(Struct_1(-u_input.d.x, abs(vec3<u32>(global3.a.e, 21052u, 18642u)), func_4(Struct_1(global2.c.x, u_input.e, var_0.a.c, vec4<f32>(1406f, -784f, -1021f, -1120f), global2.a.e), Struct_2(global2.a, global2.d, vec2<i32>(global2.a.a, 678i), vec2<f32>(global2.b.x, global2.a.d.x))).a.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-557f, var_0.b.x, var_0.d.x, 699f) - global3.a.d), func_4(Struct_1(u_input.b.x, global2.a.b, global3.a.c, vec4<f32>(global3.b.x, global3.a.d.x, global3.a.d.x, -992f), 0u), Struct_2(global1[_wgslsmith_index_u32(1u, 21u)], global3.d, vec2<i32>(30585i, u_input.c), global2.d)).a.e), var_0.a.d.zx, vec2<i32>(func_2(-2147483647i, global2.a.d.xzw, 3605u).a, 1i), global3.d)).a, func_4(Struct_1(-34590i, vec3<u32>(4294967295u << (global3.a.e % 32u), ~1u, 1u), select(select(global3.a.c, global2.a.c, global4[_wgslsmith_index_u32(global3.a.e, 23u)]), func_4(global2.a, Struct_2(Struct_1(u_input.d.x, vec3<u32>(u_input.e.x, 36036u, 19077u), vec3<bool>(global4[_wgslsmith_index_u32(30500u, 23u)], global3.a.c.x, global3.a.c.x), global3.a.d, global2.a.e), global3.b, u_input.b.zz, var_0.a.d.zw)).a.c, global2.a.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-413f, global3.a.d.x, global3.a.d.x, global3.b.x)), ~(~1u)), func_4(Struct_1(firstLeadingBit(var_0.c.x), countOneBits(vec3<u32>(25347u, global3.a.b.x, global2.a.b.x)), global2.a.c, global3.a.d, global2.a.b.x >> (var_0.a.b.x % 32u)), Struct_2(Struct_1(1i, vec3<u32>(138163u, var_0.a.e, global2.a.b.x), global3.a.c, vec4<f32>(-795f, global3.b.x, global3.b.x, -2279f), global3.a.e), vec2<f32>(global3.b.x, global3.b.x), global3.c, _wgslsmith_div_vec2_f32(vec2<f32>(1556f, 941f), vec2<f32>(var_0.b.x, global3.d.x))))));
    var var_1 = func_4(func_1(), func_4(func_2(~global2.c.x, global3.a.d.xwy, u_input.e.x), func_4(var_0.a, Struct_2(Struct_1(global2.a.a, global2.a.b, global2.a.c, global2.a.d, global2.a.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, 710f)), var_0.c, var_0.b))));
    var var_2 = 435f;
    let var_3 = _wgslsmith_f_op_vec3_f32(-global2.a.d.www);
    global3 = func_4(Struct_1(-12014i, var_1.a.b, func_1().c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1757f), _wgslsmith_f_op_f32(abs(589f)), 732f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1467f)) * _wgslsmith_f_op_f32(var_1.a.d.x - 908f))), _wgslsmith_mod_u32(~1u, 18265u)), Struct_2(Struct_1(-2147483647i | var_1.a.a, ~global3.a.b >> (~vec3<u32>(23060u, var_0.a.b.x, global3.a.e) % vec3<u32>(32u)), var_1.a.c, vec4<f32>(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(select(-2703f, global2.b.x, var_0.a.c.x)), _wgslsmith_f_op_f32(-var_1.b.x), var_3.x), global2.a.b.x), _wgslsmith_f_op_vec2_f32(-global2.b), firstLeadingBit(global2.c), func_1().d.wy));
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -817f)), _wgslsmith_f_op_f32(-func_2(global3.c.x & 1i, vec3<f32>(global2.a.d.x, var_3.x, -2425f), _wgslsmith_div_u32(17086u, 1u)).d.x), true)), _wgslsmith_f_op_f32(-func_4(Struct_1(-var_0.c.x, func_1().b, !vec3<bool>(var_0.a.c.x, true, false), global3.a.d, global3.a.b.x), func_4(Struct_1(-1i, vec3<u32>(0u, 1u, u_input.e.x), global2.a.c, global3.a.d, global2.a.e), Struct_2(var_1.a, global3.d, vec2<i32>(0i, -1i), var_3.xy))).b.x)));
    var var_4 = vec4<bool>(true, all(!func_1().c.xz), func_1().c.x, 1u >= countOneBits(_wgslsmith_div_u32(~36187u, _wgslsmith_dot_vec3_u32(global3.a.b, var_0.a.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d.x, var_0.a.d.x, var_3.x, 1229f)))), vec4<f32>(func_4(Struct_1(-1i, vec3<u32>(25177u, 0u, 0u), global3.a.c, vec4<f32>(var_1.a.d.x, 1716f, global2.a.d.x, var_1.d.x), u_input.e.x), Struct_2(Struct_1(u_input.d.x, vec3<u32>(104431u, global2.a.e, u_input.e.x), var_4.wwz, var_1.a.d, global3.a.b.x), var_3.zy, vec2<i32>(global2.a.a, global3.a.a), vec2<f32>(734f, -271f))).d.x, _wgslsmith_f_op_vec4_f32(func_3(var_0.a.b)).x, global3.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))));
}

