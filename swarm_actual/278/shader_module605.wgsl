struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> vec3<bool> {
    return vec3<bool>(-2147483647i > ~global0.a.x, global0.b, global0.d);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<i32> {
    global0 = arg_1.a;
    var var_0 = _wgslsmith_dot_vec2_i32(min(vec2<i32>(~2526i, 0i), vec2<i32>(~_wgslsmith_add_i32(50943i, arg_1.a.a.x), -u_input.d)), global0.a);
    global0 = Struct_1(vec2<i32>(-60617i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.a.x, u_input.d, u_input.d), ~vec3<i32>(u_input.d, u_input.d, global0.a.x)) & (1i << ((arg_0.x << (global0.c % 32u)) % 32u))), (all(!vec2<bool>(true, arg_1.a.b)) | global0.b) | (global0.d | arg_1.a.b), 27682u ^ global0.c, false);
    global0 = arg_1.a;
    var_0 = global0.a.x;
    return global0.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<u32> {
    global0 = Struct_1(vec2<i32>(-_wgslsmith_mod_i32(arg_1.a.x, -23861i), (u_input.d >> (u_input.b.x % 32u)) & firstTrailingBit(u_input.d)) ^ func_3(vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, arg_1.c), abs(arg_1.c), 88258u << (global0.c % 32u)), Struct_2(Struct_1(global0.a, arg_1.b, 22243u, arg_1.d), _wgslsmith_clamp_u32(4294967295u, 0u, u_input.b.x), u_input.b.zz)), any(vec2<bool>(all(select(vec4<bool>(arg_1.d, arg_1.d, true, true), vec4<bool>(true, arg_1.d, true, true), vec4<bool>(arg_1.d, false, arg_0.x, true))), true)), select(reverseBits(~4294967295u), global0.c, false), global0.d);
    var var_0 = Struct_2(Struct_1(vec2<i32>(global0.a.x, -arg_1.a.x & max(u_input.d, 10298i)), arg_0.x, global0.c, !(global0.c > arg_1.c)), 4294967295u, u_input.c.wy);
    var var_1 = -6558i;
    let var_2 = select(!vec3<bool>(!(!arg_0.x), false, global0.b), !(!arg_0), !vec3<bool>(arg_1.b, arg_1.b, global0.b));
    let var_3 = arg_1.c;
    return u_input.c.zyy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f - -454f));
    let var_1 = func_2(func_1(), Struct_1(~global0.a, global0.d, ~u_input.a, global0.d));
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.x, -u_input.d, i32(-1i) * -(~1i), 28008i), -countOneBits(vec4<i32>(max(global0.a.x, -16251i), _wgslsmith_dot_vec3_i32(vec3<i32>(13465i, 2147483647i, 11589i), vec3<i32>(25055i, u_input.d, u_input.d)), -17686i, _wgslsmith_mult_i32(u_input.d, global0.a.x))));
    var var_3 = Struct_1(vec2<i32>(~0i, ~(-2147483647i) ^ _wgslsmith_sub_i32(min(var_2.x, var_2.x), abs(global0.a.x))), select(false, any(select(!vec4<bool>(true, global0.b, global0.b, false), select(vec4<bool>(global0.d, true, false, global0.d), vec4<bool>(global0.d, false, global0.b, global0.d), global0.d), select(vec4<bool>(global0.d, global0.d, global0.b, global0.b), vec4<bool>(false, true, global0.b, true), false))), any(select(select(vec4<bool>(global0.d, true, false, global0.d), vec4<bool>(false, global0.d, true, false), true), vec4<bool>(global0.d, true, false, global0.b), vec4<bool>(false, false, global0.d, true)))), _wgslsmith_sub_u32(92299u, _wgslsmith_clamp_u32(min(55613u, 13227u), 1u >> (u_input.c.x % 32u), func_2(vec3<bool>(global0.b, global0.d, true), Struct_1(global0.a, false, 0u, global0.b)).x)) << (11659u % 32u), !all(!vec3<bool>(global0.b, true, global0.b)));
    global0 = Struct_1(firstTrailingBit(~global0.a), true, u_input.c.x, !(!(global0.d | false)) != any(!(!vec3<bool>(var_3.d, global0.d, var_3.d))));
    var_0 = 498f;
    var_3 = Struct_1(vec2<i32>(~u_input.d >> (0u % 32u), _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, _wgslsmith_div_i32(7862i, var_3.a.x)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_2.x, var_3.a.x, u_input.d), var_2.ywx, vec3<bool>(true, global0.b, true)), ~var_2.yxy))), !all(vec3<bool>(global0.d, true, !global0.d)), abs(global0.c), !(func_1().x || (108f >= _wgslsmith_f_op_f32(step(815f, 583f)))));
    var var_4 = _wgslsmith_mod_u32(u_input.c.x, ~reverseBits(var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-153f * -501f), _wgslsmith_div_f32(-859f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(908f)), _wgslsmith_f_op_f32(648f * 2268f)))), !global0.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-650f, -641f) - _wgslsmith_f_op_f32(select(-846f, -998f, var_3.b)))), 330f)), firstLeadingBit(~_wgslsmith_sub_vec2_u32(var_1.xy & vec2<u32>(15362u, 13117u), vec2<u32>(14139u, 53594u))), ~41318u, 30578i);
}

