struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(102908u, vec2<u32>(4294967295u, 4294967295u), 104049u), Struct_1(4294967295u, vec2<u32>(0u, 89603u), 4294967295u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec3<bool>, arg_3: vec2<i32>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~reverseBits(4294967295u), 2u)];
    let var_1 = u_input.b.yz;
    let var_2 = Struct_1(u_input.b.x, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 62761u), var_0.b, _wgslsmith_mod_vec2_u32(~(~u_input.b.wx), ~vec2<u32>(var_1.x, 72051u))), _wgslsmith_mod_u32(205u, abs(~var_0.a)) & ~min(40690u, ~74908u));
    let var_3 = vec2<bool>(arg_2.x, any(select(vec4<bool>(all(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false)), any(vec4<bool>(true, false, true, arg_2.x)), true, true && arg_2.x), !vec4<bool>(arg_2.x, true, false, true), select(vec4<bool>(false, arg_2.x, arg_2.x, true), select(vec4<bool>(false, arg_2.x, arg_2.x, false), vec4<bool>(true, true, arg_2.x, arg_2.x), false), any(vec2<bool>(arg_2.x, arg_2.x))))));
    var var_4 = global0[_wgslsmith_index_u32(u_input.b.x, 2u)];
    return var_3.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(68440u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 19148u), 2u)]);
    let var_1 = !vec4<bool>(!func_3(u_input.b.x, _wgslsmith_f_op_f32(-2337f + 590f), vec3<bool>(true, true, true), ~vec2<i32>(10498i, -6066i)), (select(false, false, true) && true) || !select(true, false, false), true, select(true, _wgslsmith_f_op_f32(f32(-1f) * -1095f) < _wgslsmith_f_op_f32(sign(532f)), true));
    var var_2 = vec2<i32>(u_input.a.x, -29424i);
    var_2 = -_wgslsmith_mult_vec2_i32(~(~firstTrailingBit(u_input.a)), vec2<i32>(~_wgslsmith_clamp_i32(1i, 32446i, 47945i), -min(-39898i, 2946i)));
    var var_3 = vec3<u32>(~max(_wgslsmith_mod_u32(u_input.b.x, var_0.a << (var_0.b.b.x % 32u)), firstTrailingBit(u_input.b.x & 1u)), u_input.b.x, _wgslsmith_div_u32(~77049u, _wgslsmith_dot_vec4_u32(u_input.b, select(vec4<u32>(75093u, 12536u, 97285u, 87612u), countOneBits(vec4<u32>(var_0.a, u_input.b.x, u_input.b.x, var_0.a)), vec4<bool>(true, true, false, var_1.x)))));
    return Struct_1(max(max((0u ^ var_3.x) << (_wgslsmith_add_u32(var_3.x, var_0.b.a) % 32u), var_3.x), 1u), ~min(u_input.b.xz, ~(~vec2<u32>(var_0.a, 27083u))), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = 0u;
    let var_1 = select(!select(!vec4<bool>(arg_2.x, true, true, false), !select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, false, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, arg_2.x, true)), all(vec4<bool>(true, false, true, arg_2.x))), !select(vec4<bool>(all(vec2<bool>(true, false)), arg_2.x, true, true), vec4<bool>(false, true, arg_2.x, false), select(select(vec4<bool>(true, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, false, true, arg_2.x), vec4<bool>(true, arg_2.x, false, true)), select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), true), select(vec4<bool>(true, arg_2.x, true, true), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, true)))), !any(select(!vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, true), !arg_2.x)));
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(~arg_0.c | 4294967295u, u_input.b.x), arg_0.b);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1865f), 1f) + _wgslsmith_f_op_f32(-575f - -2129f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f))), any(var_1.zw)))));
    return Struct_2(_wgslsmith_div_u32(select(~func_2().b.x, 1u, arg_2.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, arg_1.c, u_input.b.x), u_input.b.zwy), ~u_input.b.xwz)), arg_0);
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2) -> bool {
    let var_0 = vec4<bool>(true, true, select(any(!vec3<bool>(arg_1, arg_0.x, false)), !(abs(u_input.b.x) > (1u | arg_2.b.c)), arg_0.x), !all(arg_0));
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(18802u, u_input.b.x, 1u), ~firstTrailingBit(~u_input.b.wxz));
    global0 = array<Struct_1, 2>();
    let var_2 = vec4<bool>(arg_1, true, true, true);
    global0 = array<Struct_1, 2>();
    return any(arg_0.zwy);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = true || func_5(vec4<bool>(true, true, true, true), false, func_4(func_2(), func_2(), vec3<bool>(true, -13925i <= arg_1, false)));
    let var_1 = Struct_2(36418u, Struct_1(_wgslsmith_add_u32(func_2().b.x << (select(u_input.b.x, 4085u, false) % 32u), 9355u), select(vec2<u32>(~arg_2.a, arg_2.a), ~arg_2.b << (vec2<u32>(arg_2.a, u_input.b.x) % vec2<u32>(32u)), vec2<bool>(true, true)), _wgslsmith_div_u32(~min(u_input.b.x, u_input.b.x), 0u)));
    var var_2 = u_input.a.x;
    let var_3 = arg_0.x;
    var_2 = _wgslsmith_div_i32(~u_input.a.x, i32(-1i) * -2802i);
    return func_4(Struct_1(_wgslsmith_sub_u32(var_1.a, var_1.a) | var_1.a, ~_wgslsmith_div_vec2_u32(func_4(global0[_wgslsmith_index_u32(var_1.b.a, 2u)], Struct_1(0u, vec2<u32>(19284u, var_1.b.b.x), 4294967295u), vec3<bool>(false, true, false)).b.b, ~vec2<u32>(4294967295u, 4294967295u)), u_input.b.x), Struct_1(~func_2().c, func_2().b, u_input.b.x), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, false, true))))).b;
}

fn func_6(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1565f)) + -858f), -597f, true)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) - var_0);
    global0 = array<Struct_1, 2>();
    let var_2 = _wgslsmith_dot_vec3_i32(min(reverseBits(vec3<i32>(u_input.a.x, -23869i >> (arg_0.b.x % 32u), _wgslsmith_div_i32(-41621i, u_input.a.x))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-34681i, -25350i, 37602i), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), _wgslsmith_mult_i32(0i, 18833i), -10656i) & vec3<i32>(1i, -1i, max(u_input.a.x, u_input.a.x))), abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 1420i, 6309i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    var_1 = _wgslsmith_f_op_f32(-var_0);
    return vec4<bool>(!(!(!any(vec4<bool>(false, false, true, true)))), !(var_0 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1327f + 1000f))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), false))), any(vec2<bool>(true, true)));
}

fn func_7(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_2) -> StorageBuffer {
    global0 = array<Struct_1, 2>();
    var var_0 = firstTrailingBit(vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_clamp_i32(68262i, countOneBits(u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), (u_input.a.x ^ -5280i) << (_wgslsmith_sub_u32(12577u, arg_3.a) % 32u)), -28313i, select(-69084i, -(1i ^ u_input.a.x), func_3(_wgslsmith_sub_u32(arg_3.a, 1u), 167f, select(arg_1.xzx, arg_1.xxy, true), u_input.a))));
    var var_1 = Struct_2(76027u, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0, -748f, arg_0) - vec4<f32>(-307f, 1285f, -1106f, 793f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(441f, -1470f, -1628f, 1210f)))))), 1i, arg_3.b, min(min(u_input.a.x, 0i), u_input.a.x)));
    let var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 678f, 223f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1383f, -127f, -734f) + vec3<f32>(-1000f, 551f, 601f))))));
    return StorageBuffer(var_3.x, -1353f, -5061i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-124f, 445f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2258f - 1f)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) + _wgslsmith_f_op_f32(round(873f))));
    var var_1 = ~abs(vec2<u32>(~_wgslsmith_sub_u32(44928u, u_input.b.x), u_input.b.x));
    let var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(select(_wgslsmith_mod_u32(1u, 0u ^ _wgslsmith_mult_u32(1u, var_1.x)), ~reverseBits(~u_input.b.x), any(vec3<bool>(false, true, true)) | true)), 2u)];
    let x = u_input.a;
    s_output = func_7(var_0.x, select(func_6(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1036f, var_0.x, 3214f, var_0.x)), u_input.a.x, global0[_wgslsmith_index_u32(~47323u, 2u)], u_input.a.x)), vec4<bool>(select(true, false, true), !any(vec2<bool>(true, true)), true && func_6(Struct_1(var_1.x, vec2<u32>(var_1.x, 0u), 57397u)).x, -1000f > _wgslsmith_f_op_f32(1076f - var_0.x)), false), !func_6(Struct_1(~var_1.x, ~var_2.b, ~var_2.a)).zz, Struct_2(1u, func_1(_wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, 2200f, var_0.x)))), _wgslsmith_mult_i32(~u_input.a.x, ~4354i), func_4(Struct_1(18648u, var_2.b, var_2.b.x), Struct_1(4294967295u, var_2.b, var_2.b.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)).b, firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, u_input.a.x)))));
}

