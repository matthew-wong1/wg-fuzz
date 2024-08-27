struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec4<bool> {
    global1 = arg_1.c;
    var var_0 = !(!(!vec2<bool>(all(vec2<bool>(true, true)), arg_0 == 1730f)));
    let var_1 = ~(~countOneBits(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(0i, 1i, -5983i)), vec3<i32>(0i, 2147483647i, 19334i))));
    global1 = !(_wgslsmith_f_op_f32(ceil(-422f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -119f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    var var_2 = Struct_2(true, !(arg_1.c || true), ~firstTrailingBit(1958u) <= ~u_input.a.x, arg_1.d);
    return !select(vec4<bool>(var_2.b, arg_1.a, true, var_0.x), !vec4<bool>(arg_1.c, arg_1.a, arg_0 <= arg_0, true), !select(!vec4<bool>(var_2.c, var_0.x, var_2.c, true), vec4<bool>(var_0.x, true, false, var_0.x), true));
}

fn func_2() -> i32 {
    let var_0 = any(select(vec4<bool>(true, !any(vec4<bool>(true, true, false, false)), select(true, true, true), true), select(func_3(_wgslsmith_f_op_f32(444f * 600f), Struct_2(false, true, true, u_input.a)), vec4<bool>(true, func_3(-1355f, Struct_2(true, true, false, vec2<u32>(u_input.a.x, 34955u))).x, true, true), false), !all(vec3<bool>(true, true, true))));
    let var_1 = Struct_2(all(select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), false), vec3<bool>(false, var_0, true), vec3<bool>(var_0, true, false))) || true, (any(vec2<bool>(true, true)) | true) || !var_0, true, vec2<u32>(countOneBits(u_input.a.x), 26839u));
    let var_2 = Struct_1(select(countOneBits(~vec4<i32>(1i, 10143i, 19204i, 875i)), vec4<i32>(-2147483647i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -14398i, 0i), vec3<i32>(-38326i, -36895i, 0i)), _wgslsmith_clamp_i32(-21912i, 41950i, 2147483647i)), var_1.c) ^ -(~_wgslsmith_div_vec4_i32(vec4<i32>(-13722i, 58i, -12168i, 3541i), vec4<i32>(11842i, -1i, 19400i, 1i))));
    let var_3 = var_1;
    var var_4 = 1260f;
    return ~((-1i & abs(0i ^ var_2.a.x)) ^ (_wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.a.x, var_2.a.x, -2147483647i), -var_2.a.zyz) >> (firstTrailingBit(9022u & var_3.d.x) % 32u)));
}

fn func_1() -> vec4<bool> {
    var var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(14121i), -64454i), 1i >> (0u % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-1i, 29129i)), _wgslsmith_div_i32(-2147483647i, -2147483647i), select(7575i, -1i, true)), func_2()), vec4<i32>(-max(0i, 28544i), ~(-46044i), _wgslsmith_add_i32(i32(-1i) * -15884i, -1i), 1i));
    var var_1 = vec3<i32>(~(~(-8342i) >> (_wgslsmith_mod_u32(4294967295u, u_input.a.x) % 32u)), _wgslsmith_clamp_i32(1i | _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -85204i, -12270i), vec4<i32>(61445i, 2147483647i, 2147483647i, 63188i)), firstLeadingBit(1i), 30534i), _wgslsmith_mult_i32(0i, -(-2147483647i >> (u_input.a.x % 32u)))) ^ vec3<i32>(~(3603i | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(0i, 2147483647i))), 1i, 1i);
    var var_2 = vec3<bool>(false, 11486u == max(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 5609u, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, 103405u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(35454u, u_input.a.x, u_input.a.x)))), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)));
    var_2 = select(vec3<bool>(var_2.x, var_2.x, ~12502i > _wgslsmith_div_i32(var_1.x, var_1.x)), vec3<bool>(-2147483647i <= _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1.x, var_1.x), var_1.x), true, any(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)))), vec3<bool>(false, select(all(!vec4<bool>(var_2.x, false, var_2.x, var_2.x)), true, false), u_input.a.x <= u_input.a.x));
    global1 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f * _wgslsmith_div_f32(820f, 1381f))) - -923f), Struct_2(true && var_2.x, all(vec3<bool>(true, var_2.x == var_2.x, any(vec3<bool>(var_2.x, var_2.x, var_2.x)))), !(var_1.x < ~var_1.x), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(5279u, 14351u))), ~_wgslsmith_sub_vec2_u32(u_input.a, u_input.a)))).x;
    return vec4<bool>(!(true | var_2.x), !(true || var_2.x), !any(select(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(true, true, var_2.x, true), vec4<bool>(true, var_2.x, var_2.x, var_2.x), true), vec4<bool>(false, true, false, var_2.x))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1094f + 439f), _wgslsmith_f_op_f32(f32(-1f) * -712f), _wgslsmith_f_op_f32(245f - 283f), _wgslsmith_f_op_f32(f32(-1f) * -433f))))));
    global0 = all(!select(vec4<bool>(false, true, true, true), func_1(), vec4<bool>(false, false, true, false))) && select(!(!func_3(var_0.x, Struct_2(false, false, false, u_input.a)).x), true, true);
    let var_1 = select(!vec2<bool>(func_3(_wgslsmith_f_op_f32(min(-157f, 529f)), Struct_2(false, false, false, u_input.a)).x, true), func_1().xx, select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(any(func_1().xzx), select(false, false, true)), !vec2<bool>(62040u >= u_input.a.x, all(vec2<bool>(true, true)))));
    let var_2 = Struct_1(abs(-(~vec4<i32>(-2147483647i, 0i, -1397i, 25885i))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 982f, 615f, 185f)))), _wgslsmith_f_op_f32(round(var_0.x)), min(~(var_2.a.x & (-8572i << (1u % 32u))), max(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.x, 1i), var_2.a.wz)), -var_2.a.x << (_wgslsmith_sub_u32(7260u, u_input.a.x) % 32u))));
}

