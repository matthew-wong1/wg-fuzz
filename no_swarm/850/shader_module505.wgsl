struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-13038i, -26192i, -1i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<u32> {
    global0 = abs(vec3<i32>(2147483647i, abs(firstLeadingBit(_wgslsmith_mod_i32(global0.x, global0.x))), max(global0.x, 1i)));
    let var_0 = Struct_1(vec2<u32>(1u, 1u));
    var var_1 = var_0.a.x;
    var var_2 = Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, 0u), var_0.a));
    let var_3 = Struct_1(select(~min(~var_0.a, var_2.a), vec2<u32>(var_0.a.x, u_input.a), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))));
    return vec3<u32>(_wgslsmith_clamp_u32(min(var_0.a.x, u_input.a), abs(_wgslsmith_sub_u32(var_0.a.x, 4294967295u)), var_2.a.x) & (firstTrailingBit(133u | var_3.a.x) << (24128u % 32u)), ~(~_wgslsmith_mult_u32(var_3.a.x, 1u)), ~var_3.a.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_1.a), func_3());
    var var_1 = !(!select(vec2<bool>(any(vec2<bool>(true, true)), false), vec2<bool>(all(vec4<bool>(true, false, false, false)), any(vec2<bool>(false, true))), vec2<bool>(true, true)));
    var var_2 = 0u;
    var_1 = !vec2<bool>(!var_1.x, false | var_1.x);
    var var_3 = _wgslsmith_mult_vec2_u32(var_0.a.a, countOneBits(var_0.a.a));
    return Struct_1(min(arg_1.a, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1.a, arg_1.a, arg_1.a), arg_1.a)));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = Struct_2(func_2(global0.x, Struct_1(~_wgslsmith_clamp_vec2_u32(arg_0, arg_0, vec2<u32>(arg_0.x, arg_0.x))), ~u_input.a), abs(~vec3<u32>(4294967295u, firstTrailingBit(1u), func_2(2147483647i, Struct_1(vec2<u32>(u_input.a, arg_0.x)), u_input.a).a.x)));
    global0 = firstLeadingBit(_wgslsmith_mult_vec3_i32(abs(firstTrailingBit(~vec3<i32>(global0.x, 52905i, 34899i))), vec3<i32>(-1i) * -(vec3<i32>(global0.x, -20954i, global0.x) ^ vec3<i32>(48721i, global0.x, global0.x))));
    var var_1 = var_0.a;
    var_1 = func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, abs(_wgslsmith_dot_vec2_i32(global0.zx, global0.zx)), 0i), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, 10013i, -2147483647i)) >> (vec3<u32>(1u, arg_0.x, 1081u) % vec3<u32>(32u)), vec3<i32>(min(-2147483647i, global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, -2147483647i, -2147483647i), vec4<i32>(global0.x, global0.x, -2045i, global0.x)), firstLeadingBit(global0.x)), vec3<i32>(global0.x, -global0.x, 1i))), var_0.a, 18580u);
    var var_2 = (false && select(all(vec3<bool>(true, true, true)), any(vec2<bool>(false, true)) && any(vec2<bool>(true, true)), true)) || true;
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(global0.zy, ~global0.zx), select(global0.xy, global0.xz, any(vec3<bool>(true, true, true)))), max(-_wgslsmith_div_vec2_i32(global0.zx, vec2<i32>(-21253i, global0.x)), ~(~(~vec2<i32>(16721i, global0.x)))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool) -> Struct_1 {
    global0 = -_wgslsmith_add_vec3_i32(vec3<i32>(1i, -arg_0 & ~global0.x, global0.x), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-1i, arg_0, arg_0)) ^ vec3<i32>(arg_0, 0i, -37326i), vec3<i32>(_wgslsmith_div_i32(0i, -2147483647i), 53172i, arg_0 & arg_0)));
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), ~(~firstTrailingBit(~u_input.a)), 0u, func_2(-_wgslsmith_sub_i32(_wgslsmith_add_i32(0i, arg_0), global0.x ^ 1i), Struct_1(vec2<u32>(~u_input.a, _wgslsmith_div_u32(86184u, u_input.a))), ~u_input.a).a.x);
    var var_1 = func_2(arg_0, func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, -1i, -26953i) << (_wgslsmith_add_vec4_u32(vec4<u32>(37880u, 1106u, var_0.x, 22245u), vec4<u32>(77145u, 42634u, 53484u, var_0.x)) % vec4<u32>(32u)), vec4<i32>(global0.x & -16701i, _wgslsmith_add_i32(global0.x, arg_0), select(25368i, global0.x, arg_2), global0.x)), func_2(0i, func_2(~(-46755i), func_2(1i, Struct_1(var_0.xy), u_input.a), 1u), (4294967295u & u_input.a) >> (var_0.x % 32u)), u_input.a), 44251u);
    var_1 = func_2(global0.x, Struct_1(vec2<u32>(4294967295u ^ u_input.a, _wgslsmith_mod_u32(4294967295u, 24266u)) | ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_0.x), var_1.a)), _wgslsmith_dot_vec2_u32(var_1.a, _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.x, var_1.a.x) << (func_3().yy % vec2<u32>(32u)), var_0.zz, var_0.zx)));
    let var_2 = Struct_2(func_2(_wgslsmith_clamp_i32(global0.x, -1i, arg_0), Struct_1(_wgslsmith_add_vec2_u32(abs(var_0.zw), func_2(arg_0, Struct_1(var_1.a), 4939u).a)), 1u), var_0.yxz);
    return Struct_1(reverseBits(~(~vec2<u32>(11650u, var_0.x))));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2) -> vec3<i32> {
    global0 = vec3<i32>(firstLeadingBit(global0.x), -34282i, -50937i);
    global0 = _wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(-vec3<i32>(-7969i, -2147483647i, 0i), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(-4566i, global0.x, -2147483647i)), ~vec3<i32>(global0.x, global0.x, 0i))), ~vec3<i32>(-global0.x, 2147483647i, ~global0.x) >> (_wgslsmith_mod_vec3_u32(arg_2.b, vec3<u32>(u_input.a, arg_2.a.a.x, 20273u)) % vec3<u32>(32u)));
    var var_0 = vec3<bool>(!(!(arg_0 >= 37851u)) == any(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false))), true, select(all(vec2<bool>(true, true)), !all(vec2<bool>(true, true)), (arg_0 < u_input.a) || false) || any(vec2<bool>(arg_1.x < arg_1.x, true)));
    var var_1 = abs(vec3<i32>(~(~global0.x) | _wgslsmith_dot_vec2_i32(global0.xy, vec2<i32>(global0.x, global0.x)), 40289i, func_1(vec2<u32>(arg_2.b.x << (0u % 32u), 1u))));
    let var_2 = select(_wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, 2940i) << (max(arg_2.b.x, arg_2.a.a.x) % 32u), global0.x) ^ global0.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(max(vec2<i32>(global0.x, -12334i), var_1.yy), ~global0.xy), -4882i), var_1.x, ~global0.x), true);
    return vec3<i32>(max(-_wgslsmith_mod_i32(var_2, -37835i) >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(94554u, 87586u, 84437u, arg_2.a.a.x), vec4<u32>(arg_0, 1u, 37150u, arg_0)), min(1u, 12311u), any(vec4<bool>(false, var_0.x, true, var_0.x))) % 32u), _wgslsmith_mod_i32(-2147483647i, -2147483647i)), global0.x, reverseBits(var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(1i & global0.x, _wgslsmith_clamp_i32((global0.x >> (max(36741u, 4294967295u) % 32u)) & _wgslsmith_mult_i32(firstLeadingBit(-38657i), ~global0.x), -_wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, -46513i), global0.x), i32(-1i) * -2147483647i), -global0.x);
    var var_0 = _wgslsmith_add_u32(~21210u, u_input.a);
    var_0 = ~u_input.a;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, min(u_input.a, 15873u), u_input.a, ~u_input.a | ~0u), vec4<u32>(min(_wgslsmith_clamp_u32(u_input.a, ~u_input.a, ~4294967295u), u_input.a), select(u_input.a, 23207u & min(u_input.a, 1u), select(false, true, u_input.a <= u_input.a)), firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a))), u_input.a));
    global0 = func_5(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 38756u), ~vec4<u32>(u_input.a, 0u, 19933u, 4294967295u)), vec4<u32>(countOneBits(~u_input.a), _wgslsmith_div_u32(u_input.a, 11808u), 1u, 5683u)), vec4<f32>(-576f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1726f) + 504f))), -1354f, -457f), Struct_2(func_4(func_1(max(vec2<u32>(20435u, 1u), vec2<u32>(6877u, 20587u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1497f * 709f)), true), _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.a, 67663u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<bool>(false, false, true)), vec3<u32>(23305u, 11323u, 1u)) ^ (~vec3<u32>(2377u, u_input.a, 93977u) >> (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u)))));
    global0 = max(vec3<i32>(global0.x, _wgslsmith_sub_i32(~1i, min(_wgslsmith_div_i32(40242i, global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.x, 35178i, -37787i), vec4<i32>(global0.x, 2212i, global0.x, 2147483647i)))), firstLeadingBit(~global0.x)), firstLeadingBit(select(_wgslsmith_mod_vec3_i32(-vec3<i32>(global0.x, global0.x, global0.x), ~vec3<i32>(global0.x, -67341i, 0i)), vec3<i32>(global0.x, global0.x, abs(25940i)), vec3<bool>(true, true, true))));
    let var_2 = !select(vec3<bool>(!all(vec4<bool>(false, true, true, false)), true, ~u_input.a <= ~u_input.a), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), true), vec3<bool>(true, true, true));
    let var_3 = min(_wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(0i, abs(global0.x))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, global0.x))), countOneBits(firstLeadingBit(~global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -23591i, _wgslsmith_mod_i32(global0.x, -1i)), ~1i), vec3<u32>(u_input.a, ~6111u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 0u), func_2(global0.x, Struct_1(vec2<u32>(u_input.a, 40952u)), 13980u).a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-459f, 536f, var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -305f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1538f, 1288f, 1039f)))))), 415f, u_input.a);
}

