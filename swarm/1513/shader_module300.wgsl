struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(-1442f, 89303u, 0u, 53311u, vec2<bool>(true, true));

var<private> global2: Struct_1;

var<private> global3: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(0u, 21998u, 0u, 1u), vec4<u32>(37130u, 41193u, 17850u, 65672u), vec4<u32>(0u, 52796u, 3189u, 1u), vec4<u32>(1u, 48988u, 1u, 6954u), vec4<u32>(74627u, 25681u, 0u, 59737u), vec4<u32>(69624u, 10361u, 73083u, 7061u), vec4<u32>(46646u, 76000u, 36176u, 23230u), vec4<u32>(19720u, 0u, 11670u, 1u), vec4<u32>(6218u, 16507u, 0u, 1u), vec4<u32>(83984u, 0u, 4294967295u, 0u), vec4<u32>(1u, 19301u, 1u, 0u), vec4<u32>(1u, 1u, 29904u, 39824u), vec4<u32>(4294967295u, 28869u, 1u, 4294967295u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = any(global1.e);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -225f))), 0u, 4294967295u, _wgslsmith_dot_vec2_u32(~((vec2<u32>(global1.d, 72007u) | vec2<u32>(1u, arg_0)) & ~vec2<u32>(1u, global2.c)), _wgslsmith_add_vec2_u32(~(vec2<u32>(global1.b, 0u) << (vec2<u32>(4445u, arg_0) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 17u), ~vec2<u32>(global1.c, 15266u)))), !(!select(select(vec2<bool>(global1.e.x, false), global1.e, true), !vec2<bool>(global2.e.x, global1.e.x), select(false, global2.e.x, global2.e.x))));
    var_0 = select(var_1.e.x, any(!vec3<bool>(true, all(vec3<bool>(false, false, var_1.e.x)), global1.e.x & var_1.e.x)), all(!vec3<bool>(var_1.e.x, true, all(vec4<bool>(global1.e.x, var_1.e.x, false, var_1.e.x)))));
    global2 = var_1;
    var var_2 = var_1;
    return 4294967295u;
}

fn func_2() -> f32 {
    var var_0 = vec3<u32>(global2.b, func_3(29618u), ~(~global2.c >> (59988u % 32u))) >> ((firstTrailingBit(vec3<u32>(~global1.d, _wgslsmith_div_u32(1u, 4294967295u), 46116u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(3523u, global1.b, ~1u), select(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.b, 86908u, global2.b), vec3<u32>(0u, global2.d, 85645u)), ~vec3<u32>(global2.b, 1u, global1.d), true), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(225u, global2.b, 4294967295u), vec3<u32>(30548u, 0u, global2.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 32357u, global1.c), vec3<u32>(global2.b, global2.d, 81073u))))) % vec3<u32>(32u));
    let var_1 = -2147483647i;
    let var_2 = Struct_1(global2.a, _wgslsmith_clamp_u32(global1.c, global2.c, _wgslsmith_mult_u32(1u, global2.c | 24908u)) | ~(global1.b ^ global1.c), var_0.x, global2.d, vec2<bool>(false, _wgslsmith_f_op_f32(-global1.a) != _wgslsmith_f_op_f32(sign(-1135f))));
    global3 = array<vec4<u32>, 13>();
    global2 = var_2;
    return _wgslsmith_f_op_f32(max(1016f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1036f, var_2.a))) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, global1.a), _wgslsmith_f_op_f32(sign(1251f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - _wgslsmith_f_op_f32(global2.a + var_2.a))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    global0 = all(vec4<bool>(true, true, true, any(vec3<bool>(!global1.e.x, global2.e.x, global1.e.x))));
    var var_1 = -_wgslsmith_sub_vec2_i32(vec2<i32>(max(57859i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, 2147483647i), vec3<i32>(u_input.b, u_input.b, -63999i))), i32(-1i) * -2147483647i), vec2<i32>(~u_input.a.x, u_input.d ^ 1i));
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0)) * 213f), ~min(countOneBits(25885u), ~(global2.c ^ 118689u)), _wgslsmith_add_u32(~global2.c, min(1u, global1.b)), _wgslsmith_add_u32(60367u, 29228u), !global2.e);
    var_1 = u_input.a.yy;
    return Struct_1(785f, ~_wgslsmith_add_u32(~_wgslsmith_add_u32(global1.d, 4294967295u), abs(0u)), global2.c, 2223u, vec2<bool>(any(vec3<bool>(!global1.e.x, true, false)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_add_vec2_u32(~(~vec2<u32>(1236u, var_0.d)) & firstLeadingBit(vec2<u32>(~25818u, ~var_0.c)), ~(countOneBits(vec2<u32>(146610u, var_0.c)) >> (vec2<u32>(var_0.d, var_0.d) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b, vec2<u32>(1u, firstTrailingBit(_wgslsmith_sub_u32(~global2.d, ~1u))), ~(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(10234u, 4294967295u, 41905u)), vec3<u32>(4294967295u, var_1.x, 0u)) >> (firstLeadingBit(vec3<u32>(var_0.c, var_0.d, var_1.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, global1.a, _wgslsmith_f_op_f32(577f + global2.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(661f, var_0.a, var_0.a)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, -1000f, global2.a), vec3<f32>(global1.a, global1.a, global2.a)))))), _wgslsmith_f_op_f32(func_2()));
}

