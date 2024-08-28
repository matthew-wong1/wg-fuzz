struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(3470u, 1u, 0u);

var<private> global1: vec4<bool>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    global0 = vec3<u32>(global0.x, ~_wgslsmith_add_u32(global0.x, global0.x), global0.x);
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2079f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f - _wgslsmith_f_op_f32(step(1030f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(434f)) * _wgslsmith_div_f32(-1059f, -349f))))));
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(~u_input.a, (u_input.a & -1i) | _wgslsmith_sub_i32(u_input.a, u_input.a), firstLeadingBit(2147483647i)), u_input.a, i32(-1i) * -reverseBits(u_input.a)));
    return global0.x;
}

fn func_2(arg_0: u32) -> bool {
    global0 = _wgslsmith_mult_vec3_u32(min(vec3<u32>(~countOneBits(1u), arg_0, global0.x), vec3<u32>(48306u, ~(~arg_0), global0.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(min(arg_0, 4294967295u), ~arg_0, global0.x), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, arg_0, 129205u), vec3<u32>(arg_0, arg_0, arg_0) ^ vec3<u32>(arg_0, 20694u, 4294967295u))));
    global0 = max((~_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 4294967295u, 10076u), vec3<u32>(arg_0, arg_0, 80784u)) | max(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 1u, 1u), vec3<u32>(arg_0, 39352u, global0.x)), ~vec3<u32>(arg_0, 35143u, 4840u))) >> (((max(vec3<u32>(arg_0, 4294967295u, global0.x), vec3<u32>(0u, 646u, global0.x)) ^ vec3<u32>(1u, 22480u, 3434u)) >> (~(~vec3<u32>(global0.x, global0.x, 51133u)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(global0.x, ~abs(~0u), 4294967295u));
    let var_0 = vec2<bool>(true, max(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_0, arg_0, arg_0), vec4<u32>(global0.x, 1u, arg_0, 41191u)), ~global0.x) > _wgslsmith_clamp_u32(global0.x, func_3(), _wgslsmith_mod_u32(global0.x, ~0u)));
    global1 = select(vec4<bool>(false, !var_0.x, global1.x, true), vec4<bool>(any(select(select(vec4<bool>(true, true, false, global1.x), vec4<bool>(false, global1.x, false, var_0.x), vec4<bool>(global1.x, global1.x, true, global1.x)), vec4<bool>(true, true, true, true), true & var_0.x)), !var_0.x, any(!vec3<bool>(false, false, global1.x)), true | select(any(var_0), !global1.x, var_0.x | false)), true);
    global1 = !(!vec4<bool>(var_0.x, true, _wgslsmith_f_op_f32(step(-426f, 863f)) > 499f, true));
    return true;
}

fn func_1(arg_0: i32) -> bool {
    global1 = !vec4<bool>(global1.x, true, all(global1.xzx), func_2(reverseBits(global0.x)));
    var var_0 = reverseBits(~vec2<i32>((41554i & arg_0) ^ (u_input.a ^ u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 13839i), -vec2<i32>(u_input.a, -6i))));
    var var_1 = !select(vec3<bool>(true, true && any(vec4<bool>(global1.x, global1.x, true, global1.x)), ~1i != u_input.a), !select(global1.wyw, vec3<bool>(global1.x, global1.x, true), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x), global1.yzz)), true);
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(153f, -1603f, 520f), vec3<f32>(528f, -393f, 915f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 189f, 1346f), vec3<f32>(377f, 709f, 445f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-711f, 1083f, -1322f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 1099f))) + 1f), 587f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(trunc(669f))), _wgslsmith_f_op_f32(f32(-1f) * -258f)))));
    var var_3 = max(min(firstTrailingBit(4294967295u << (global0.x % 32u)) | abs(abs(4294967295u)), ~19255u), global0.x);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(select(~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(13095u, global0.x, 58310u), vec3<u32>(80748u, global0.x, 0u))), reverseBits(vec3<u32>(global0.x, select(4294967295u, global0.x, true), 1u)), vec3<bool>(global1.x, func_1(27855i), true)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-683f, _wgslsmith_f_op_f32(f32(-1f) * -1573f), -877f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1113f, 1392f, 787f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-648f, 854f, 655f)))))), Struct_1(~(-vec3<i32>(-2147483647i, u_input.a, u_input.a) | ~vec3<i32>(u_input.a, 15984i, u_input.a))), Struct_1(-_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.a, 27496i, u_input.a)), vec3<i32>(u_input.a, -1i, u_input.a))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 32564u, 62453u, global0.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, global0.x), vec4<u32>(4294967295u, 19280u, global0.x, var_0.x)))), Struct_1(select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 6104i, u_input.a), vec3<i32>(-1i, u_input.a, u_input.a)), ~u_input.a, u_input.a), vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-504i, 2147483647i, 2147483647i, u_input.a), vec4<i32>(41680i, u_input.a, -54531i, 1i)), 1i), global1.x)));
    var var_2 = true;
    let var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.x, 757f)) - var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1788f, 391f)) - _wgslsmith_f_op_f32(sign(var_1.a.x))) - var_1.a.x), var_1.a.x), !all(!select(vec4<bool>(global1.x, true, false, false), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))))));
    let var_4 = var_3.c;
    var var_5 = select(global1.zx, global1.yx, var_3.b);
    var var_6 = vec3<bool>(!(!(!(!global1.x))), (var_1.b.a.x <= u_input.a) & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f + -200f)) == _wgslsmith_f_op_f32(select(-1494f, var_3.c, var_5.x))), _wgslsmith_mod_u32(~var_0.x, ~6266u) >= ~_wgslsmith_dot_vec4_u32(var_1.d, vec4<u32>(var_0.x, 51699u, 48376u, var_1.d.x) >> (vec4<u32>(var_1.d.x, global0.x, 39795u, var_1.d.x) % vec4<u32>(32u))));
    var_2 = true && global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(-var_1.a.x))))));
}

