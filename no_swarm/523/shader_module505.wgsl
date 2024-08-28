struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(1u, 1u, 0u, 0u, 42075u, 1u, 0u, 5912u, 4294967295u, 58007u, 44773u, 0u, 12888u, 1u, 1u, 1u, 0u, 1u, 0u, 97261u, 1u, 52853u, 8401u, 1u, 4294967295u, 4294967295u, 4294967295u, 0u, 12105u, 46509u, 38009u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    global0 = array<u32, 31>();
    var var_0 = Struct_2(Struct_1(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 0i, 0i, 7132i), vec4<i32>(2147483647i, u_input.a, -30849i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) | firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_div_f32(-995f, _wgslsmith_f_op_f32(f32(-1f) * -427f)), firstLeadingBit(vec2<i32>(abs(-7900i), u_input.a))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(!all(vec2<bool>(false, false)), all(vec4<bool>(false, false, true, true)) && true), select(vec2<bool>(false, any(vec3<bool>(false, false, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(true, true)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1448f)), _wgslsmith_f_op_f32(-1000f - -468f), _wgslsmith_div_f32(307f, 943f)))), select(vec2<bool>(!all(vec4<bool>(false, false, true, true)), _wgslsmith_add_i32(u_input.a, u_input.a) <= u_input.a), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), false)), vec4<bool>(!all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b, u_input.b), 31u)] <= global0[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 31u)], true, !((u_input.b ^ 23357u) != 3719u)));
    global0 = array<u32, 31>();
    var var_1 = ~reverseBits(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 6306u), vec2<u32>(u_input.b, u_input.b))) >> (~(vec2<u32>(8222u, global0[_wgslsmith_index_u32(4294967295u, 31u)]) >> (vec2<u32>(65330u, 65863u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = Struct_5(var_0.d, 537f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.zy) - vec2<f32>(var_0.c.x, var_0.a.b)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b, -1529f)))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(var_0.c.xz))))), var_0.e, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(var_0.c.zx)), _wgslsmith_f_op_vec2_f32(-var_0.c.yy))));
    return -firstLeadingBit(-6760i ^ ~firstLeadingBit(u_input.a));
}

fn func_2() -> vec2<bool> {
    var var_0 = ~1u;
    global0 = array<u32, 31>();
    let var_1 = Struct_3(Struct_1(~vec4<i32>(-u_input.a, func_3(), -27602i, 0i), -320f, -vec2<i32>(_wgslsmith_mod_i32(u_input.a, 0i), reverseBits(1i))), 65316i | func_3(), abs(firstLeadingBit(vec4<u32>(max(u_input.b, 19107u), global0[_wgslsmith_index_u32(66482u, 31u)], ~global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1854u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)]), 31u)]))), true || (all(vec4<bool>(true, true, true, true)) || true));
    let var_2 = all(vec3<bool>(all(!vec3<bool>(var_1.d, var_1.d, false)), (var_1.d && var_1.d) | true, any(vec3<bool>(true, var_1.d, var_1.d)) | (var_1.a.c.x == u_input.a))) & var_1.d;
    let var_3 = var_1.a;
    return select(vec2<bool>(all(vec3<bool>(select(var_1.d, var_2, true), true, true)), true), vec2<bool>(any(select(vec2<bool>(var_2, var_2), vec2<bool>(var_1.d, var_1.d), vec2<bool>(false, var_2))) || (var_1.c.x > _wgslsmith_clamp_u32(0u, 53632u, 19801u)), all(select(vec4<bool>(var_1.d, var_1.d, false, var_2), vec4<bool>(var_2, false, var_1.d, true), true)) | any(select(vec4<bool>(var_1.d, false, var_2, true), vec4<bool>(var_2, var_2, var_2, true), var_2))), false);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    global0 = array<u32, 31>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-22629i, u_input.a, -57966i, -11272i), vec4<i32>(32222i, -1i, u_input.a, u_input.a)) | countOneBits(vec4<i32>(-38716i, -2147483647i, -24938i, u_input.a)), vec4<i32>(~u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(58251i, 1i)), 67856i)), arg_2.x, vec2<i32>(33897i, u_input.a)), !vec2<bool>(arg_1.x, arg_3 | all(vec2<bool>(arg_0.x, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 476f, arg_2.x)) + vec3<f32>(arg_2.x, arg_2.x, arg_2.x))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x))), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -767f) + _wgslsmith_f_op_f32(arg_2.x * arg_2.x)))), vec2<bool>(arg_0.x || !arg_0.x, true), select(select(!select(vec4<bool>(false, false, arg_3, arg_3), vec4<bool>(false, false, arg_0.x, arg_3), true), vec4<bool>(arg_0.x & arg_3, false && arg_3, arg_0.x, arg_2.x < arg_2.x), vec4<bool>(true, arg_3 | arg_3, all(vec3<bool>(arg_3, arg_3, arg_0.x)), arg_1.x | arg_1.x)), !select(!vec4<bool>(arg_3, arg_3, true, true), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), arg_3 & false), select(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(false, arg_0.x, true, false), vec4<bool>(arg_3, false, arg_3, true)), vec4<bool>(arg_1.x, true, true, arg_0.x), vec4<bool>(arg_3, false, true, false)), vec4<bool>(true, !arg_0.x, !arg_0.x, true), select(vec4<bool>(false, arg_0.x, false, false), select(vec4<bool>(false, false, arg_1.x, false), vec4<bool>(arg_0.x, arg_3, arg_1.x, arg_3), vec4<bool>(false, arg_0.x, true, false)), true))));
    let var_1 = ~(global0[_wgslsmith_index_u32(u_input.b, 31u)] & 1u);
    let var_2 = Struct_1(vec4<i32>(reverseBits(2147483647i), ~1i, -_wgslsmith_div_i32(countOneBits(1i), u_input.a), -1i), 758f, ~vec2<i32>(-30862i, ~firstLeadingBit(u_input.a)));
    let var_3 = var_0.a.c;
    return var_2;
}

fn func_1(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_4(Struct_3(func_4(func_2(), vec2<bool>(false, false & arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1522f, 2022f) + vec2<f32>(-695f, 649f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1190f, -671f) * vec2<f32>(-1000f, -1742f))), arg_0.x), u_input.a, ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, 1029u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(132370u, 31u)], 31u)]), vec4<u32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8627u, 31u)], 31u)], 31u)], u_input.b))), true), func_4(vec2<bool>(u_input.b >= 16102u, select(true, false | arg_0.x, arg_0.x)), !(!select(vec2<bool>(arg_0.x, arg_0.x), arg_0, vec2<bool>(true, arg_0.x))), vec2<f32>(732f, 1f), false), vec4<f32>(-1948f, -189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1119f, 349f)) + _wgslsmith_f_op_f32(f32(-1f) * -1356f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(460f))))), Struct_2(Struct_1(_wgslsmith_add_vec4_i32(-vec4<i32>(0i, 0i, u_input.a, 30406i), ~vec4<i32>(u_input.a, u_input.a, u_input.a, -36336i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(529f, 1245f) + _wgslsmith_f_op_f32(-1000f * -1312f)), min(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), ~vec2<i32>(u_input.a, u_input.a))), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1301f, -1542f, -1121f) + vec3<f32>(710f, 1000f, -1014f)))), select(arg_0, !arg_0, arg_0.x), vec4<bool>(!any(arg_0), arg_0.x, false, arg_0.x | arg_0.x)), firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(-56021i, 1i), abs(i32(-1i) * -1i), u_input.a)));
    let var_1 = vec4<i32>(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(var_0.b.a.wzz ^ vec3<i32>(var_0.e.x, var_0.e.x, u_input.a), abs(vec3<i32>(u_input.a, -623i, 2147483647i))), -var_0.a.a.a.x), -_wgslsmith_add_i32(~(-1i), _wgslsmith_mult_i32(abs(0i), _wgslsmith_add_i32(u_input.a, u_input.a))), var_0.e.x, ~2147483647i);
    let var_2 = vec3<i32>(var_1.x, 13086i, _wgslsmith_mult_i32(abs(select(~var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 37576i), vec3<i32>(u_input.a, 1024i, -2147483647i)), var_0.d.e.x)), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(var_1.x, var_0.e.x, 6512i, var_0.a.a.c.x)), var_0.b.a)));
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    return true;
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3) -> vec2<f32> {
    global0 = array<u32, 31>();
    var var_0 = arg_1.a.b;
    var_0 = _wgslsmith_f_op_f32(max(1f, arg_0.b));
    var var_1 = _wgslsmith_f_op_f32(-1457f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1571f * _wgslsmith_f_op_f32(-533f - _wgslsmith_f_op_f32(select(-849f, arg_0.e.x, true)))) * 446f));
    let var_2 = u_input.b;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.b, _wgslsmith_div_f32(arg_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x)))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec2<bool>(arg_0.d.x, arg_0.a.x), arg_0.d.yz, vec2<f32>(arg_0.b, -1762f), arg_0.d.x).b * arg_1.a.b), _wgslsmith_f_op_f32(max(-1662f, _wgslsmith_f_op_f32(sign(arg_1.a.b))))), 1025f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2263f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-140f + 1273f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(func_5(Struct_5(vec2<bool>(true, func_1(vec2<bool>(false, false))), _wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(-1117f, -1491f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -2090f), vec2<f32>(var_0.x, var_0.x), false)))))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1515f, var_0.x)))))))), Struct_3(func_4(vec2<bool>(true, true), select(func_2(), vec2<bool>(true, true), all(vec4<bool>(false, true, false, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-916f, 551f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.x))), true), u_input.a, _wgslsmith_add_vec4_u32(~(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], u_input.b, 1u)), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], ~0u, ~global0[_wgslsmith_index_u32(u_input.b, 31u)], u_input.b)), true)));
    var_0 = vec2<f32>(-528f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = vec2<f32>(var_0.x, -554f);
    let var_1 = Struct_5(vec2<bool>(true, true), _wgslsmith_f_op_f32(step(1f, -3333f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(342f, -1268f) - vec2<f32>(458f, -160f)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 1977f)))))), vec4<bool>(all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), false != any(func_2()), false, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(64087u, 31u)], 1u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 31u)], 31u)], 52197u, 1u, u_input.b), vec4<bool>(true, false, true, false)), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 124776u, u_input.b, u_input.b) ^ vec4<u32>(30928u, 22527u, global0[_wgslsmith_index_u32(17424u, 31u)], 21775u)) < _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)], 1u), ~1u, _wgslsmith_mult_u32(u_input.b, global0[_wgslsmith_index_u32(1u, 31u)]))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - var_0.x))))), var_0.x));
    let var_2 = max(~(~vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], ~4294967295u, 11845u)), ~(vec3<u32>(~u_input.b, reverseBits(u_input.b), 0u) >> (firstLeadingBit(~vec3<u32>(global0[_wgslsmith_index_u32(0u, 31u)], 42733u, u_input.b)) % vec3<u32>(32u))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -351f), var_1.e.x))));
    var var_3 = Struct_4(Struct_3(Struct_1(-(~vec4<i32>(u_input.a, -1i, 12748i, u_input.a)), var_0.x, vec2<i32>(23650i, abs(u_input.a))), firstLeadingBit(max(u_input.a, 1i)), vec4<u32>(var_2.x, 4294967295u, max(_wgslsmith_mod_u32(31481u, u_input.b), _wgslsmith_mult_u32(0u, 1u)), var_2.x), !(var_1.d.x | all(vec4<bool>(true, var_1.d.x, true, var_1.a.x)))), Struct_1(vec4<i32>(-(~(-2147483647i)), 1i, -func_4(vec2<bool>(false, var_1.d.x), var_1.d.zy, var_1.e, var_1.d.x).a.x, firstTrailingBit(~u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(194f - 1f)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(13062i, u_input.a) >> (var_2.yx % vec2<u32>(32u)), vec2<i32>(u_input.a, -19224i) ^ vec2<i32>(u_input.a, u_input.a)), u_input.a)), vec4<f32>(-985f, -110f, var_1.e.x, var_0.x), Struct_2(func_4(var_1.d.yx, !var_1.d.xy, _wgslsmith_f_op_vec2_f32(min(var_1.c, vec2<f32>(var_0.x, 649f))), var_2.x >= global0[_wgslsmith_index_u32(9625u, 31u)]), vec2<bool>(!(!var_1.a.x), select(true, false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 1266f, var_0.x))))), select(select(vec2<bool>(true, true), vec2<bool>(var_1.d.x, var_1.a.x), vec2<bool>(var_1.d.x, false)), vec2<bool>(false, false), !var_1.a.x), !var_1.d), countOneBits(-(~countOneBits(vec3<i32>(-25497i, -22451i, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.e)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1479f - -1333f), _wgslsmith_f_op_f32(max(1000f, -400f))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, 246f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1434f, var_3.b.b)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_3.c, var_3.c))))), 304f, countOneBits(4294967295u));
}

