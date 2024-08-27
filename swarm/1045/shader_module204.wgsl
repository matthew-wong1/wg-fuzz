struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(484f, -359f, -586f, -780f);

var<private> global1: Struct_2;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_3(vec3<i32>(_wgslsmith_add_i32(~global1.d, 0i), -2147483647i, global1.d << (u_input.e % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -593f, false))), arg_1.b, vec3<bool>(arg_1.b.c, !(!arg_1.c.x) || global1.c.x, -2147483647i < arg_1.d));
    let var_1 = ~_wgslsmith_div_vec3_u32(arg_1.b.d, var_0.c.d);
    global0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 262f)), -485f)) + _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(2155f)))), arg_1.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(497f))))), _wgslsmith_f_op_f32(f32(-1f) * -1775f));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1152f, _wgslsmith_f_op_f32(exp2(var_0.b)), _wgslsmith_f_op_f32(ceil(1000f)), -310f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -651f), -1652f, -1000f, _wgslsmith_f_op_f32(-global0.x)) - vec4<f32>(_wgslsmith_f_op_f32(step(var_0.b, 443f)), -1000f, 1f, _wgslsmith_f_op_f32(-global0.x)))));
    let var_2 = arg_1;
    return var_2;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>) -> f32 {
    global1 = Struct_2(-386f, Struct_1(~u_input.e, false, !global1.b.b, _wgslsmith_mult_vec3_u32(~global1.b.d, firstTrailingBit(vec3<u32>(global1.b.a, 8349u, 1u))) >> (_wgslsmith_mult_vec3_u32(~global1.b.d, global1.b.d) % vec3<u32>(32u))), vec2<bool>(all(arg_1.xz), select(arg_1.x | all(vec2<bool>(arg_1.x, global1.b.c)), all(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, global1.c.x), vec4<bool>(false, global1.b.c, global1.c.x, false), false)), true)), -59582i);
    global1 = func_2(~global1.b.d.zy, Struct_2(-147f, global1.b, !select(vec2<bool>(true, true), !arg_1.zz, true), ~(-u_input.c)), reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.b.a, 0u), global1.b.d.zz) >> (global1.b.d.xy % vec2<u32>(32u)), ~reverseBits(global1.b.d.yx))));
    var var_0 = global1.a;
    return global0.x;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_2(271f, func_2(_wgslsmith_div_vec2_u32(func_2(arg_0.xy, func_2(arg_0.ww, Struct_2(-1422f, Struct_1(4294967295u, true, global1.c.x, vec3<u32>(arg_1.a, u_input.e, arg_0.x)), global1.c, u_input.a), vec2<u32>(arg_0.x, u_input.e)), arg_1.d.zz).b.d.zy, max(~arg_0.wx, arg_0.xz)), func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.b.a, 0u), arg_1.d.yy) & (arg_1.d.zz | vec2<u32>(48909u, global1.b.a)), func_2(vec2<u32>(4899u, 1u), Struct_2(global1.a, arg_1, global1.c, u_input.d), ~arg_0.yx), vec2<u32>(19710u, _wgslsmith_sub_u32(4294967295u, arg_1.a))), firstLeadingBit(arg_1.d.xz)).b, select(func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(1673u, 49569u), _wgslsmith_add_vec2_u32(global1.b.d.xz, global1.b.d.yy)), func_2(abs(vec2<u32>(arg_0.x, 4294967295u)), func_2(global1.b.d.zy, Struct_2(global0.x, arg_1, vec2<bool>(true, global1.b.b), 20378i), vec2<u32>(arg_1.d.x, arg_0.x)), vec2<u32>(4294967295u, arg_0.x)), _wgslsmith_add_vec2_u32(func_2(arg_1.d.zx, Struct_2(-1286f, Struct_1(u_input.e, true, global1.b.b, arg_1.d), vec2<bool>(arg_1.b, arg_1.b), u_input.c), arg_1.d.yy).b.d.xy, func_2(global1.b.d.xz, Struct_2(-1000f, global1.b, global1.c, u_input.a), arg_1.d.zx).b.d.zx)).c, !select(vec2<bool>(true, true), global1.c, !global1.c), arg_1.c & false), _wgslsmith_mult_i32(~abs(u_input.d), firstTrailingBit(_wgslsmith_add_i32(u_input.a, global1.d))) & _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.d, 1i, u_input.d, global1.d), vec4<i32>(1i, -1i, 1i, global1.d)) | (vec4<i32>(u_input.c, global1.d, -11175i, u_input.c) ^ vec4<i32>(-20391i, 0i, 2147483647i, 23876i)), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-1i, -2147483647i, -55954i, global1.d)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, 0i, global1.d, u_input.a), vec4<i32>(-1i, u_input.c, 0i, -3968i), vec4<i32>(-43018i, global1.d, -1i, 1i)))));
    let var_1 = ~_wgslsmith_mod_i32(var_0.d, -min(~u_input.a, 2147483647i));
    global1 = Struct_2(_wgslsmith_f_op_f32(func_1(vec2<i32>(-global1.d, ~global1.d | 1i), select(!(!vec4<bool>(var_0.c.x, true, global1.c.x, false)), vec4<bool>(all(var_0.c), true, false, all(vec3<bool>(true, var_0.c.x, true))), select(vec4<bool>(false, true, global1.c.x, var_0.b.c), vec4<bool>(true, global1.b.b, true, false), !arg_1.b)))), global1.b, global1.c, _wgslsmith_dot_vec4_i32(~(-max(vec4<i32>(u_input.d, global1.d, var_1, global1.d), vec4<i32>(0i, global1.d, 0i, 0i))), -(firstTrailingBit(vec4<i32>(-36622i, var_1, -11853i, -4868i)) ^ (vec4<i32>(u_input.c, global1.d, global1.d, global1.d) >> (arg_0 % vec4<u32>(32u))))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1330f, arg_2)))) * global1.a)));
    var var_3 = ~select(firstTrailingBit(min(vec4<i32>(global1.d, -1i, global1.d, 6823i), -vec4<i32>(36196i, global1.d, global1.d, var_0.d))), vec4<i32>(1i & global1.d, ~2147483647i >> (1u % 32u), max(var_0.d, select(-2734i, 39113i, var_0.b.b)), _wgslsmith_mult_i32(~var_0.d, var_0.d)), !select(select(vec4<bool>(false, false, false, arg_1.b), vec4<bool>(var_0.c.x, false, arg_1.c, global1.c.x), global1.b.b), !vec4<bool>(false, true, true, arg_1.c), select(vec4<bool>(arg_1.b, var_0.b.b, global1.c.x, false), vec4<bool>(true, var_0.c.x, true, var_0.c.x), false)));
    return _wgslsmith_mod_u32(~select(firstTrailingBit(8564u), _wgslsmith_mult_u32(arg_1.d.x, arg_1.a), !arg_1.c) ^ 0u, _wgslsmith_sub_u32(min(var_0.b.d.x, global1.b.d.x), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_mult_vec2_u32(~(~(~global1.b.d.zy)), abs(vec2<u32>(global1.b.a, _wgslsmith_add_u32(0u, 1u)))));
    let var_1 = Struct_1(51207u, !(!(_wgslsmith_f_op_f32(func_1(vec2<i32>(global1.d, global1.d), vec4<bool>(global1.b.c, global1.c.x, global1.c.x, false))) >= _wgslsmith_f_op_f32(global0.x - global0.x))), global1.a < _wgslsmith_f_op_f32(trunc(global1.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(1u, func_3(vec4<u32>(var_0.x, 4294967295u, var_0.x, global1.b.d.x), global1.b, -372f, vec3<f32>(global0.x, 1436f, global1.a))), var_0.x | u_input.e, 20514u), ~vec3<u32>(29725u, 56425u << (1u % 32u), ~0u)));
    global1 = Struct_2(_wgslsmith_f_op_f32(global0.x * global1.a), func_2(var_0, Struct_2(_wgslsmith_f_op_f32(1687f + global0.x), func_2(vec2<u32>(0u, var_1.d.x), func_2(vec2<u32>(1u, 54004u), Struct_2(global0.x, Struct_1(4294967295u, false, true, vec3<u32>(14917u, var_1.a, 4294967295u)), vec2<bool>(global1.b.b, global1.b.b), 40534i), vec2<u32>(var_0.x, var_0.x)), var_1.d.xz).b, !vec2<bool>(global1.c.x, var_1.b), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global1.d, global1.d, u_input.a), vec4<i32>(30913i, -1i, 61859i, u_input.d))), vec2<u32>(_wgslsmith_mult_u32(var_0.x, ~var_1.a), firstLeadingBit(22154u))).b, select(vec2<bool>(_wgslsmith_div_i32(global1.d, -1i) != global1.d, global1.b.c), vec2<bool>(any(vec4<bool>(true, global1.c.x, false, var_1.b)), any(vec4<bool>(var_1.c, false, false, false))), !(!select(vec2<bool>(true, global1.c.x), vec2<bool>(var_1.c, true), false))), -func_2(select(_wgslsmith_mult_vec2_u32(var_1.d.yz, vec2<u32>(global1.b.d.x, var_1.d.x)), reverseBits(var_1.d.xy), global1.d == u_input.c), func_2(vec2<u32>(0u, 30065u), func_2(var_1.d.yx, Struct_2(global1.a, Struct_1(43566u, global1.c.x, global1.b.b, vec3<u32>(u_input.b, var_0.x, u_input.e)), vec2<bool>(global1.b.c, global1.b.b), 16495i), vec2<u32>(u_input.b, 75256u)), ~vec2<u32>(global1.b.d.x, var_0.x)), reverseBits(vec2<u32>(50071u, 9439u))).d);
    var var_2 = Struct_3(vec3<i32>(firstLeadingBit(-global1.d), abs(2147483647i), _wgslsmith_mod_i32(-firstTrailingBit(u_input.c), _wgslsmith_div_i32(-19051i, ~0i))), global0.x, Struct_1(1u, var_1.b, true, var_1.d & reverseBits(global1.b.d >> (vec3<u32>(u_input.e, var_0.x, var_1.d.x) % vec3<u32>(32u)))), !select(!vec3<bool>(false, global1.c.x, global1.c.x), !(!vec3<bool>(var_1.b, true, global1.b.c)), any(vec4<bool>(true, false, global1.b.b, true))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a)) * _wgslsmith_f_op_f32(f32(-1f) * -559f));
    let var_4 = countOneBits(_wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(0i, global1.d, var_2.a.x, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, -2147483647i, 5141i), vec4<i32>(1i, var_2.a.x, 1i, 21331i)))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-1i, global1.d), _wgslsmith_sub_i32(-1i, global1.d), -58373i, -11924i), _wgslsmith_sub_vec4_i32(vec4<i32>(-32136i, global1.d, -2147483647i, u_input.d) >> (vec4<u32>(4999u, 6855u, 20249u, u_input.b) % vec4<u32>(32u)), select(vec4<i32>(-15745i, -42243i, -1i, u_input.d), vec4<i32>(23899i, 6808i, u_input.d, 1i), vec4<bool>(var_2.c.c, true, false, true))))));
    var var_5 = 51130u;
    var_2 = Struct_3(var_4.yxy, _wgslsmith_f_op_f32(trunc(global0.x)), Struct_1(~select(_wgslsmith_add_u32(4294967295u, 0u), 68937u, true), true, !(func_2(global1.b.d.xy, Struct_2(500f, Struct_1(0u, var_2.c.c, false, var_2.c.d), vec2<bool>(true, global1.b.c), var_4.x), vec2<u32>(17042u, 8181u)).b.b || var_1.c), vec3<u32>(var_1.a, reverseBits(firstLeadingBit(24218u)), 1u)), select(!var_2.d, var_2.d, var_1.c));
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3, -671f, !(var_2.d.x && var_2.d.x) && false)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

