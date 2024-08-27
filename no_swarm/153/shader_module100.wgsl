struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(379f, 1447f, -498f), vec3<f32>(253f, -336f, 2010f), vec3<f32>(301f, 203f, -1991f), vec3<f32>(-892f, -505f, 1347f), vec3<f32>(-863f, 1434f, 644f), vec3<f32>(1000f, -283f, 1030f), vec3<f32>(-523f, -645f, 1409f), vec3<f32>(-1457f, 849f, 676f), vec3<f32>(-870f, 1335f, 3471f), vec3<f32>(1607f, 131f, -1226f), vec3<f32>(426f, 119f, 531f), vec3<f32>(-955f, 936f, -1000f), vec3<f32>(-2435f, -1212f, 1202f), vec3<f32>(-690f, 119f, -467f), vec3<f32>(-399f, 2204f, 717f), vec3<f32>(-342f, -601f, 620f), vec3<f32>(-376f, -543f, 2374f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<u32>) -> bool {
    var var_0 = vec4<bool>(arg_2 == (any(select(vec2<bool>(false, true), vec2<bool>(arg_2, false), false)) && all(!vec4<bool>(true, true, false, arg_2))), any(!select(vec3<bool>(false, false, true), vec3<bool>(arg_2, false, arg_2), any(vec3<bool>(true, true, true)))), all(vec2<bool>(false, !any(vec2<bool>(false, false)))), !any(!vec3<bool>(arg_2, false, arg_2)));
    let var_1 = 1627f;
    global0 = array<vec3<f32>, 17>();
    var var_2 = u_input.a;
    let var_3 = max(countOneBits(arg_3.xxx), max(_wgslsmith_add_vec3_u32(firstLeadingBit(arg_3.zzz), ~(~vec3<u32>(12938u, arg_3.x, 57989u))), vec3<u32>(countOneBits(33726u), 1u, arg_3.x) & ((arg_3.xxz ^ vec3<u32>(arg_3.x, 4294967295u, 68590u)) ^ arg_3.wxy)));
    return var_0.x & true;
}

fn func_2(arg_0: i32) -> bool {
    global0 = array<vec3<f32>, 17>();
    var var_0 = vec4<bool>(true || (1i < -firstTrailingBit(-2147483647i)), all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, u_input.a < -2147483647i)) & !(any(vec3<bool>(false, false, false)) && any(vec3<bool>(false, false, false))), all(vec4<bool>(!any(vec4<bool>(true, true, true, true)), 1u < u_input.b, true, func_3(i32(-1i) * -2147483647i, vec4<f32>(-628f, -980f, -498f, -1000f), all(vec3<bool>(true, true, false)), vec4<u32>(4294967295u, 17217u, u_input.b, u_input.b)))));
    let var_1 = Struct_1(abs(abs(vec4<u32>(u_input.b, 23795u, u_input.b, u_input.b))) & vec4<u32>(~u_input.b | ~0u, u_input.b, 0u & _wgslsmith_mod_u32(u_input.b, 1u), 4294967295u), true, vec3<i32>(arg_0, u_input.a, ~(-2147483647i)), var_0.wx, select(vec2<i32>(1i, -(u_input.a | u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(abs(arg_0), arg_0), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_0, -2147483647i))), _wgslsmith_f_op_f32(392f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) >= _wgslsmith_f_op_f32(-1201f * _wgslsmith_f_op_f32(floor(157f)))));
    var_0 = !select(vec4<bool>(any(select(var_0.xwx, vec3<bool>(false, true, false), var_0.zzw)), any(!vec4<bool>(false, var_1.d.x, true, true)), true, !var_0.x), !select(!vec4<bool>(var_0.x, false, false, var_1.d.x), vec4<bool>(true, true, true, var_1.b), !vec4<bool>(var_0.x, var_1.d.x, false, false)), vec4<bool>(var_1.d.x, var_1.d.x || any(vec3<bool>(true, var_0.x, false)), true, ~u_input.b <= var_1.a.x));
    var var_2 = Struct_1(~(var_1.a << (~firstTrailingBit(vec4<u32>(54170u, 7578u, var_1.a.x, 4294967295u)) % vec4<u32>(32u))), var_0.x, var_1.c, select(select(var_0.zw, var_1.d, true), select(var_0.yw, !(!var_1.d), all(!vec4<bool>(true, true, var_1.d.x, false))), !var_0.zx), -firstTrailingBit(-var_1.e));
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1349f, _wgslsmith_f_op_f32(f32(-1f) * -868f), -219f))));
    global0 = array<vec3<f32>, 17>();
    var var_1 = vec2<i32>(-1i) * -select(vec2<i32>(~0i, -2147483647i), -abs(vec2<i32>(u_input.a, u_input.a)), func_2(-2147483647i) != true);
    var var_2 = (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, ~u_input.b, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(119397u, 66046u, 0u), vec3<u32>(19694u, 1u, u_input.b)) >> (vec3<u32>(15041u, u_input.b, 0u) % vec3<u32>(32u))) << (select(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 1u), ~vec3<u32>(5654u, 44026u, u_input.b)), min(vec3<u32>(4294967295u, 28632u, u_input.b), vec3<u32>(u_input.b, 23265u, 1u)) >> (~vec3<u32>(23912u, u_input.b, 10779u) % vec3<u32>(32u)), true) % vec3<u32>(32u))) | ~abs(abs(vec3<u32>(u_input.b, u_input.b, 1u)));
    var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_2.x, 26025u), countOneBits(2015u), var_2.x) << ((vec3<u32>(1u, u_input.b, u_input.b) & vec3<u32>(4294967295u, 1u, 4294967295u)) % vec3<u32>(32u)), vec3<u32>(var_2.x, _wgslsmith_clamp_u32(var_2.x, 45692u, u_input.b), u_input.b) << (vec3<u32>(firstLeadingBit(var_2.x), ~31857u, ~var_2.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(14778u, 1u, abs(u_input.b)), reverseBits(firstLeadingBit(vec3<u32>(var_2.x, u_input.b, u_input.b)))));
    return Struct_1(vec4<u32>(var_2.x, ~var_2.x, ~(4294967295u << (u_input.b % 32u)), u_input.b) | _wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(1u), 6607u << (var_2.x % 32u), ~u_input.b, _wgslsmith_div_u32(u_input.b, var_2.x)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 85178u, 57369u), 49539u, 23430u, 21250u)), all(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true))), vec3<i32>(~(-2147483647i ^ u_input.a), var_1.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-49319i, u_input.a, -29029i), vec3<i32>(var_1.x, -2646i, -2147483647i))) & max(-(vec3<i32>(u_input.a, -31598i, 0i) >> (vec3<u32>(var_2.x, 0u, 1u) % vec3<u32>(32u))), firstTrailingBit(min(vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(u_input.a, u_input.a, u_input.a)))), select(vec2<bool>(func_2(28961i), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), -vec2<i32>(abs(firstTrailingBit(u_input.a)), (-59350i << (0u % 32u)) | ~var_1.x));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> i32 {
    global0 = array<vec3<f32>, 17>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))))), -1143f, arg_1, _wgslsmith_f_op_f32(exp2(arg_1)));
    var var_1 = -4559i;
    let var_2 = 1u;
    var var_3 = -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_2, arg_2, u_input.a), vec4<i32>(~(-35496i), arg_2 << (u_input.b % 32u), arg_2, _wgslsmith_sub_i32(arg_2, arg_2))) >> (var_2 % 32u);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 17>();
    var var_0 = abs(vec3<i32>(u_input.a, func_4(func_1(), _wgslsmith_f_op_f32(trunc(1040f)), 1i), (1i & u_input.a) | _wgslsmith_sub_i32(8634i, u_input.a))) ^ (_wgslsmith_div_vec3_i32(select(-vec3<i32>(u_input.a, -1i, u_input.a), firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -2147483647i)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), func_1().c) ^ vec3<i32>(u_input.a, _wgslsmith_mod_i32(~2147483647i, i32(-1i) * -5234i), -(-6711i << (u_input.b % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-830f, _wgslsmith_f_op_f32(sign(-689f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1267f - -1268f) - _wgslsmith_f_op_f32(-1855f + 819f)))));
}

