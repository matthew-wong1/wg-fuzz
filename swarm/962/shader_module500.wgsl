struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-2166f, -206f, 322f), vec3<f32>(1362f, 1070f, 1421f), vec3<f32>(349f, 891f, -1388f), vec3<f32>(-1000f, 473f, 1006f), vec3<f32>(-248f, 261f, -325f), vec3<f32>(-252f, 1161f, -888f), vec3<f32>(-687f, -473f, 1288f), vec3<f32>(-734f, 439f, -1252f), vec3<f32>(-1241f, -1626f, 741f), vec3<f32>(-1041f, 1000f, 1730f), vec3<f32>(-1000f, 323f, -1716f), vec3<f32>(2403f, -1000f, 316f), vec3<f32>(155f, -778f, -268f), vec3<f32>(650f, 952f, 282f), vec3<f32>(-1000f, 702f, -3125f), vec3<f32>(-301f, 657f, 411f), vec3<f32>(758f, -1098f, 569f), vec3<f32>(-772f, -1561f, -704f), vec3<f32>(801f, 1583f, 477f), vec3<f32>(-456f, 1706f, 1478f), vec3<f32>(-801f, -1000f, -1991f), vec3<f32>(402f, -707f, 126f), vec3<f32>(-854f, 352f, -1012f), vec3<f32>(-2265f, 454f, -1416f), vec3<f32>(2060f, -486f, 2301f), vec3<f32>(-995f, -830f, -211f), vec3<f32>(192f, -349f, 363f), vec3<f32>(1000f, 499f, -1075f), vec3<f32>(976f, 3072f, 1157f), vec3<f32>(-1499f, -574f, -750f), vec3<f32>(-186f, 1297f, -156f));

var<private> global1: Struct_5;

var<private> global2: u32 = 30197u;

var<private> global3: u32;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<bool> {
    global0 = array<vec3<f32>, 31>();
    var var_0 = Struct_2(Struct_1(vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), !all(vec2<bool>(false, false)), select(true, false, all(vec2<bool>(true, false))), true && (global1.b.a.x > global1.b.a.x)), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, 26402u >= u_input.b.x, true)), ~_wgslsmith_div_u32(~u_input.b.x, ~4294967295u), 29364u, 0i));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(262f, 769f, all(vec4<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, true)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * global1.a))), global1.b);
    var var_2 = -_wgslsmith_clamp_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.a.e, var_0.a.e, u_input.a), vec4<i32>(var_0.a.e, 0i, var_0.a.e, var_0.a.e)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-14398i, u_input.a, var_0.a.e), vec3<i32>(-44164i, 17993i, var_0.a.e)), min(var_0.a.e, var_0.a.e), abs(u_input.a), _wgslsmith_mod_i32(2147483647i, u_input.a)), !(!vec4<bool>(false, var_0.a.a.x, var_0.a.b.x, false))), ~(-vec4<i32>(-50633i, 2147483647i, var_0.a.e, 707i)), reverseBits(~vec4<i32>(var_0.a.e, var_0.a.e, var_0.a.e, 2147483647i) | (vec4<i32>(var_0.a.e, 26754i, 57101i, var_0.a.e) >> (vec4<u32>(70162u, 0u, u_input.b.x, 0u) % vec4<u32>(32u)))));
    var_0 = Struct_2(Struct_1(!select(select(var_0.a.a, vec4<bool>(false, var_0.a.b.x, false, var_0.a.a.x), var_0.a.b.x), var_0.a.a, var_0.a.b), vec4<bool>(!(var_0.a.a.x && true), firstLeadingBit(var_0.a.d) != 0u, true, all(vec3<bool>(false, var_0.a.b.x, true))), _wgslsmith_add_u32(_wgslsmith_div_u32(~var_0.a.d, ~u_input.b.x), 4294967295u), reverseBits(global1.b.a.x), 1i));
    return vec4<bool>(!(!var_0.a.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 4818i, 2147483647i), vec3<i32>(-1i, -2147483647i, var_0.a.e)), 2147483647i >> (global1.b.a.x % 32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0.a.e, 34400i, u_input.a), vec4<i32>(var_0.a.e, var_2.x, -14387i, -1i)), -vec4<i32>(-1i, u_input.a, -58913i, var_2.x), ~vec4<i32>(16211i, u_input.a, u_input.a, -1i))) < -1i, select(!var_0.a.a.x, all(select(select(var_0.a.a.xx, var_0.a.a.xy, var_0.a.b.xw), vec2<bool>(var_0.a.a.x, var_0.a.b.x), var_0.a.a.x | var_0.a.b.x)), abs(abs(var_1.b.a.x)) == ~var_1.b.a.x), var_0.a.a.x);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(func_3(), !vec4<bool>(true, true, (u_input.b.x > 3935u) != any(vec2<bool>(false, true)), false), ~u_input.b.x, 0u, -_wgslsmith_add_i32(_wgslsmith_sub_i32(~u_input.a, u_input.a >> (global1.b.a.x % 32u)), 0i));
    let var_1 = _wgslsmith_add_vec3_i32(reverseBits((~vec3<i32>(var_0.e, -2147483647i, 28485i) & max(vec3<i32>(var_0.e, -36106i, var_0.e), vec3<i32>(var_0.e, -28434i, u_input.a))) ^ select(select(vec3<i32>(var_0.e, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -76023i), var_0.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -881i, var_0.e), vec3<i32>(49574i, -13094i, u_input.a)), vec3<bool>(true, var_0.a.x, false))), _wgslsmith_mod_vec3_i32(~(-vec3<i32>(23633i, -26129i, u_input.a)), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, var_0.e, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(15807i, 1i, var_0.e), vec3<i32>(u_input.a, -3452i, var_0.e))) & _wgslsmith_mod_vec3_i32(-vec3<i32>(var_0.e, -2147483647i, u_input.a), vec3<i32>(-2147483647i, -22223i, -1i))));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a)))), Struct_3(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 50363u), _wgslsmith_add_u32(var_0.c, 36504u)), 0u, var_0.c >> (_wgslsmith_mult_u32(27417u, 58013u) % 32u), global1.b.a.x)));
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-961f, 1000f), -992f, true | var_0.b.x)) * -912f) <= _wgslsmith_f_op_f32(var_2.a - global1.a), !var_0.a.x);
    let var_4 = select(var_0.a, select(!var_0.b, select(!(!vec4<bool>(true, false, var_3.x, false)), select(var_0.b, vec4<bool>(true, var_0.a.x, false, var_3.x), var_0.b), any(!vec3<bool>(var_0.b.x, var_3.x, var_3.x))), select(vec4<bool>(true, func_3().x, true, true), vec4<bool>(true, true, true, any(vec3<bool>(var_3.x, true, var_3.x))), any(vec2<bool>(var_3.x, var_3.x)))), func_3());
    return ~(i32(-1i) * -18333i);
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    return !vec4<bool>(arg_0.e.b.x, all(select(vec4<bool>(arg_0.e.a.x, arg_0.e.a.x, arg_0.e.b.x, arg_0.e.a.x), !arg_0.e.b, arg_0.e.a.x)), !(!(-763f >= arg_0.d.x)), -2147483647i < func_2());
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_3 {
    global2 = ~(~reverseBits(4742u));
    let var_0 = !(!func_1(Struct_4(~arg_3.zx, arg_2.a.wwz, max(arg_3.x, u_input.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a, global1.a), vec2<f32>(global1.a, -128f), arg_0.b.x)), arg_0)).yyx);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global1.a, 939f), _wgslsmith_f_op_f32(-global1.a)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-176f, global1.a), vec2<f32>(-1223f, global1.a))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a))), -308f)));
    var var_2 = max(u_input.b.x, ~u_input.b.x) ^ 0u;
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 17534u;
    global1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - global1.a)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2507f)))), func_4(Struct_1(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), 1584f < global1.a), select(vec4<bool>(true, true, true, true), func_1(Struct_4(vec2<i32>(u_input.a, 14687i), vec3<u32>(u_input.b.x, 56090u, global1.b.a.x), -2147483647i, vec2<f32>(global1.a, -1458f), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), 4294967295u, 0u, 2022i))), true), select(_wgslsmith_dot_vec3_u32(u_input.b.wwx, vec3<u32>(12710u, 75729u, global1.b.a.x)), max(104622u, 16755u), u_input.a < u_input.a), ~(~u_input.b.x), reverseBits(1i)), 0u, global1.b, vec4<i32>(~(~1i), ~_wgslsmith_mult_i32(u_input.a, u_input.a), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i) << (global1.b.a.zw % vec2<u32>(32u)), vec2<i32>(26387i, u_input.a) | vec2<i32>(u_input.a, 2147483647i)))));
    var var_0 = vec3<bool>(!all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true)) && true, any(func_3().wxz), true);
    var var_1 = global1.b.a.x;
    var var_2 = var_0.yx;
    var var_3 = Struct_3(vec4<u32>(32058u & global1.b.a.x, _wgslsmith_dot_vec4_u32(~u_input.b, ~u_input.b & vec4<u32>(32432u, global1.b.a.x, global1.b.a.x, 1u)), u_input.b.x, ~global1.b.a.x));
    var_2 = vec2<bool>(_wgslsmith_clamp_i32(firstTrailingBit(15188i), max(-10069i, 1i), 0i) >= (~_wgslsmith_add_i32(1i, -2147483647i) | (u_input.a ^ 0i)), countOneBits(~_wgslsmith_add_u32(1u, u_input.b.x)) > ~firstTrailingBit(~u_input.b.x));
    var var_4 = 2285f;
    global2 = _wgslsmith_mult_u32(59167u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(47671u, 4294967295u, var_3.a.x, var_3.a.x) << (global1.b.a % vec4<u32>(32u)), select(u_input.b, vec4<u32>(var_3.a.x, 4294967295u, global1.b.a.x, u_input.b.x), vec4<bool>(var_2.x, false, var_2.x, false)), ~global1.b.a)));
}

