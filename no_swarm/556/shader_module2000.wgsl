struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 17936u;

var<private> global1: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(4967i, 25346i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(4294967295u, 24852u), 35849u), min(abs(~vec2<u32>(14079u, 2516u)), firstTrailingBit(~vec2<u32>(48269u, 0u)))) ^ _wgslsmith_sub_vec2_u32(~abs(~vec2<u32>(0u, 89830u)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 4294967295u), select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), all(vec3<bool>(false, true, true)))));
    var var_1 = var_0 | var_0;
    var var_2 = select(select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, true, true), true), select(vec4<bool>(any(vec3<bool>(false, true, false)), false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), true, u_input.a == 28655i, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), true)), !select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, false, false)), vec4<bool>(true, var_1.x != var_0.x, true, false)), !(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false))));
    global0 = ~(~(~0u >> (var_1.x % 32u))) & (~(~reverseBits(3281u)) >> (1u % 32u));
    var var_3 = Struct_1(vec4<i32>(u_input.a, -14907i, 0i, -(0i >> (abs(0u) % 32u))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1120f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-118f, 951f))), 2167f))), global1[_wgslsmith_index_u32(var_1.x, 1u)] ^ global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0.x, ~var_1.x), 1u)], u_input.a, -33736i);
    return vec4<i32>(1i, -2147483647i, 38238i, ~1i) << (select(vec4<u32>(~_wgslsmith_div_u32(var_0.x, var_0.x), ~var_1.x, var_0.x, _wgslsmith_mod_u32(firstLeadingBit(0u), ~var_0.x)), ~select(reverseBits(vec4<u32>(0u, 4294967295u, 4294967295u, var_1.x)), vec4<u32>(31857u, 65969u, 23852u, var_0.x), select(vec4<bool>(false, true, var_2.x, true), vec4<bool>(false, var_2.x, true, false), var_2.x)), select(select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), select(vec4<bool>(true, true, var_2.x, false), vec4<bool>(false, var_2.x, false, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), !var_2.x), vec4<bool>(1261f >= var_3.b.x, var_2.x, any(vec3<bool>(var_2.x, var_2.x, true)), true), !vec4<bool>(var_2.x, var_2.x, true, var_2.x))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = Struct_1(select(-firstTrailingBit(select(vec4<i32>(-1i, u_input.a, u_input.a, -1i), vec4<i32>(-1i, -1i, 19563i, 2147483647i), arg_0.x)), func_3() & vec4<i32>(u_input.a, -25261i, ~u_input.a, -2147483647i), arg_0), vec3<f32>(-757f, _wgslsmith_f_op_f32(floor(838f)), 247f), vec2<i32>(2147483647i, ~(~abs(u_input.a))), u_input.a, _wgslsmith_dot_vec4_i32(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2390i, u_input.a, 604i, u_input.a), vec4<i32>(u_input.a, -64793i, 1i, u_input.a))), func_3()));
    global1 = array<vec2<i32>, 1>();
    var var_1 = ~select(~vec3<u32>(1u, 1u, 1u), select(reverseBits(~vec3<u32>(7002u, 66434u, 21645u)), ~vec3<u32>(1u, 80411u, 1u), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.xzz);
    var var_2 = countOneBits(~vec4<u32>(var_1.x, var_1.x, max(1u, firstTrailingBit(var_1.x)), _wgslsmith_clamp_u32(17426u, 53358u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 27571u, 26063u), vec3<u32>(var_1.x, 1u, 1u)))));
    var_1 = firstLeadingBit(~var_2.xzx);
    return _wgslsmith_mult_u32(var_2.x, var_2.x) | var_1.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = -29493i;
    global1 = array<vec2<i32>, 1>();
    var_0 = -18756i;
    global0 = 60017u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2)))) * arg_2);
    return Struct_1(firstLeadingBit(_wgslsmith_div_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(22757i, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, 32629i, u_input.a))), ~vec4<i32>(-32123i, u_input.a, -2147483647i, 0i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a, -2147483647i, -13174i), vec4<i32>(1i, 6844i, 4434i, u_input.a)))), vec3<f32>(-418f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(805f)))), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-arg_2))), -(firstLeadingBit(_wgslsmith_mult_vec2_i32(global1[_wgslsmith_index_u32(arg_0.x, 1u)], global1[_wgslsmith_index_u32(arg_1, 1u)])) << (_wgslsmith_mod_vec2_u32(arg_0, vec2<u32>(0u, 1u) << (vec2<u32>(arg_1, 21954u) % vec2<u32>(32u))) % vec2<u32>(32u))), reverseBits(u_input.a | u_input.a), countOneBits(u_input.a));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    global1 = array<vec2<i32>, 1>();
    var var_0 = func_4(vec2<u32>(countOneBits(func_2(!vec4<bool>(arg_1, arg_1, false, arg_1))), _wgslsmith_sub_u32(43464u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(38789u, 18508u))) << (~6795u % 32u)), 1u, 602f);
    let var_1 = _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(28734u, 4269u, 4294967295u), vec3<u32>(1u, 3003u, 54838u)))), ~vec2<u32>(4294967295u, ~0u));
    var var_2 = 260f;
    var var_3 = func_4(_wgslsmith_clamp_vec2_u32(var_1, _wgslsmith_clamp_vec2_u32(firstLeadingBit(var_1), vec2<u32>(7462u, 4294967295u) ^ var_1, ~vec2<u32>(var_1.x, 1u)), vec2<u32>(var_1.x, var_1.x ^ var_1.x)) << (reverseBits(var_1) % vec2<u32>(32u)), 4294967295u, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_div_f32(var_0.b.x, arg_0.b.x)))));
    return ~reverseBits(reverseBits(1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(1i << (_wgslsmith_sub_u32(26068u, func_1(Struct_1(vec4<i32>(u_input.a, -119252i, u_input.a, u_input.a), vec3<f32>(1054f, -2111f, -267f), global1[_wgslsmith_index_u32(56495u, 1u)], 2147483647i, u_input.a), false, vec3<f32>(-1168f, 1245f, 633f))) % 32u), -2400i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(2748f, 1178f), _wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(f32(-1f) * -211f), -1274f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2811f), _wgslsmith_f_op_f32(1000f - -475f), _wgslsmith_f_op_f32(-484f - -325f), 977f))) * vec4<f32>(-465f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -780f), _wgslsmith_f_op_f32(sign(-596f)), true)), 271f, -1852f)));
    var var_2 = 5986i;
    var_2 = 1i;
    global1 = array<vec2<i32>, 1>();
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1618f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-256f)))))), -175f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))))));
    let var_3 = -387f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(43459u >> (1u % 32u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 111821u), vec2<u32>(39700u, 6780u)), min(41450u, 31527u)), min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_add_vec4_u32(vec4<u32>(~16586u, 0u, ~33016u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(59209u, 28790u, 40265u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), _wgslsmith_dot_vec2_u32(vec2<u32>(func_2(vec4<bool>(true, false, true, false)), 17898u), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(61568u, 4294967295u)), ~select(vec2<u32>(1u, 21598u), vec2<u32>(1u, 1u), false))), ~reverseBits(i32(-1i) * -21509i));
}

