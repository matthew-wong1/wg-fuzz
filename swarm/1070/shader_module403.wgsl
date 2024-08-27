struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = global0.b.a;
    let var_1 = vec4<bool>(global0.b.d.x, !any(select(vec4<bool>(global0.d, global0.d, global0.d, global0.b.d.x), global0.b.d, !global0.d)), ((global0.c >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.b.x, 0u), global0.b.b.zy) % 32u)) ^ ~global0.c) >= global0.b.b.x, global0.d);
    var_0 = _wgslsmith_add_i32(22873i, _wgslsmith_dot_vec2_i32(u_input.a, ~u_input.a)) << (~_wgslsmith_sub_u32(20088u, ~(~18539u)) % 32u);
    var var_2 = _wgslsmith_clamp_u32(~(~_wgslsmith_mult_u32(~global0.c, min(global0.b.b.x, 0u))), abs(global0.b.b.x), global0.b.b.x);
    let var_3 = Struct_5(global0.b.c, global0.b, ~(~global0.b.b.x), global0.d);
    return false;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> vec4<bool> {
    var var_0 = false;
    let var_1 = true;
    var_0 = arg_0;
    global0 = Struct_5(-610f, global0.b, 0u, true);
    var_0 = func_3(_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-global0.b.c), true)));
    return select(!select(!select(global0.b.d, global0.b.d, vec4<bool>(arg_0, arg_0, true, global0.d)), !select(global0.b.d, vec4<bool>(arg_0, global0.b.d.x, var_1, arg_0), true), global0.b.d), select(select(select(!global0.b.d, select(global0.b.d, vec4<bool>(global0.d, global0.b.d.x, true, false), vec4<bool>(true, global0.b.d.x, true, var_1)), select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(false, true, arg_0, global0.b.d.x), true)), select(!vec4<bool>(arg_0, var_1, true, arg_0), global0.b.d, vec4<bool>(false, global0.b.d.x, true, var_1)), all(!vec3<bool>(false, var_1, arg_0))), select(select(global0.b.d, global0.b.d, vec4<bool>(true, true, true, true)), global0.b.d, false), all(!select(global0.b.d.zwz, global0.b.d.zzz, vec3<bool>(global0.b.d.x, true, global0.d)))), true);
}

fn func_1() -> f32 {
    global0 = Struct_5(_wgslsmith_f_op_f32(min(-376f, global0.b.c)), global0.b, ~global0.b.b.x, ((-165f <= global0.b.c) || (_wgslsmith_f_op_f32(1760f - -577f) != global0.b.c)) & global0.d);
    global0 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))) * global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1176f) * global0.b.c)), Struct_1(firstTrailingBit(global0.b.a), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.c, 37494u, 20529u, global0.b.b.x), ~vec4<u32>(global0.b.b.x, 0u, 1u, global0.c)), global0.b.b), -1600f, select(!vec4<bool>(global0.b.d.x, true, false, true), select(func_2(global0.d, Struct_3(global0.b.a), global0.c), global0.b.d, true), select(!vec4<bool>(global0.d, global0.d, global0.b.d.x, global0.b.d.x), select(vec4<bool>(false, true, false, global0.b.d.x), vec4<bool>(global0.b.d.x, global0.d, global0.b.d.x, global0.d), true), global0.b.d))), firstLeadingBit(~(~global0.b.b.x)), ~(-1i) <= -(~_wgslsmith_clamp_i32(0i, u_input.a.x, 0i)));
    var var_0 = all(!vec2<bool>(_wgslsmith_f_op_f32(select(-397f, global0.a, false)) == 1f, any(vec2<bool>(true, global0.b.d.x))));
    var var_1 = vec4<bool>(true, 28447u == global0.c, global0.d, true);
    global0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-584f - global0.a), global0.a))) + _wgslsmith_f_op_f32(max(global0.b.c, global0.b.c))), Struct_1(-1i, ~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(global0.c, global0.b.b.x, 11020u, 1u)), reverseBits(vec4<u32>(1u, 1u, 38912u, global0.b.b.x))), global0.a, !select(global0.b.d, vec4<bool>(var_1.x, false, var_1.x, false), any(vec2<bool>(global0.b.d.x, var_1.x)))), firstLeadingBit(_wgslsmith_mult_u32(~min(global0.c, 0u), _wgslsmith_div_u32(77863u, 4294967295u))), var_1.x);
    return -1426f;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: i32) -> vec2<f32> {
    global0 = Struct_5(_wgslsmith_f_op_f32(func_1()), Struct_1(16784i, reverseBits(~vec4<u32>(global0.c, 28221u, arg_1.b.b.x, arg_1.b.b.x)) & ~(~vec4<u32>(arg_1.b.b.x, 0u, arg_1.b.b.x, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-573f)) - _wgslsmith_f_op_f32(abs(arg_1.a.x))), func_2(global0.b.d.x, Struct_3(_wgslsmith_mod_i32(arg_1.b.a, 9121i)), _wgslsmith_dot_vec4_u32(vec4<u32>(87507u, arg_1.b.b.x, 1u, arg_1.b.b.x) >> (global0.b.b % vec4<u32>(32u)), global0.b.b & vec4<u32>(global0.b.b.x, global0.c, arg_1.b.b.x, 57900u)))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~1u, 4346u, 11770u | global0.b.b.x, global0.c), select(arg_1.b.b, vec4<u32>(arg_1.b.b.x, global0.b.b.x, global0.b.b.x, 4294967295u), arg_1.b.d) ^ (vec4<u32>(arg_1.b.b.x, 1u, global0.c, 4294967295u) << (vec4<u32>(arg_1.b.b.x, global0.c, 56648u, 78175u) % vec4<u32>(32u)))), ~vec4<u32>(_wgslsmith_sub_u32(0u, arg_1.b.b.x), _wgslsmith_mod_u32(global0.c, global0.b.b.x), 1u, ~arg_1.b.b.x)), !(!(global0.b.b.x != arg_1.b.b.x)));
    var var_0 = Struct_2(arg_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_1.a * arg_1.a))), _wgslsmith_f_op_vec4_f32(-arg_1.a), arg_1.b.d))), Struct_1(1i, vec4<u32>(_wgslsmith_mult_u32(arg_1.b.b.x, global0.c) | 83045u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1.b.b, global0.b.b), vec4<u32>(global0.b.b.x, arg_1.b.b.x, global0.c, global0.b.b.x)), arg_1.b.b.x, global0.b.b.x), -402f, arg_1.b.d));
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_i32(min(1i, u_input.a.x), -global0.b.a), ~_wgslsmith_sub_vec4_u32(vec4<u32>(71638u, var_0.c.b.x, 26410u, 63575u), ~global0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a)))), arg_1.b.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_1.a * vec4<f32>(arg_1.b.c, 355f, -223f, global0.b.c))))), arg_1.b);
    global0 = Struct_5(_wgslsmith_f_op_f32(-global0.b.c), Struct_1(-937i, vec4<u32>(var_0.a.b.x | 1u, ~(1u >> (var_0.a.b.x % 32u)), _wgslsmith_add_u32(0u, global0.c), var_1.c.b.x), 278f, !func_2(arg_0, Struct_3(39514i), _wgslsmith_mod_u32(global0.b.b.x, 4294967295u))), reverseBits(0u), true);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1586f)));
    return var_1.b.zw;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_5 {
    var var_0 = Struct_2(global0.b, arg_0, global0.b);
    let var_1 = select(~var_0.c.b.ww, vec2<u32>(var_0.a.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~global0.b.b.x, select(59773u, global0.c, false), 63462u, ~global0.c), max(~global0.b.b, global0.b.b))), global0.b.d.x);
    global0 = Struct_5(global0.a, Struct_1(2147483647i, firstTrailingBit(vec4<u32>(global0.b.b.x, 22687u, abs(var_1.x), 2838u)), arg_0.x, vec4<bool>(var_0.a.d.x, !(global0.b.d.x || true), true, true)), ~(_wgslsmith_dot_vec4_u32(reverseBits(var_0.a.b), ~vec4<u32>(global0.c, 3981u, 60198u, var_1.x)) >> (33929u % 32u)), var_0.c.d.x);
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(global0.b.a, arg_1.a, 14824i, u_input.a.x)), ~(vec4<i32>(33024i, 1i, -8733i, 2147483647i) | -vec4<i32>(-2147483647i, arg_1.a, 21880i, 2147483647i))), ~(~(_wgslsmith_add_vec4_u32(global0.b.b, vec4<u32>(50659u, 13020u, 0u, var_0.c.b.x)) & var_0.c.b)), _wgslsmith_f_op_f32(min(arg_0.x, 355f)), func_2(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, 394f)))), arg_1, var_1.x));
    global0 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -518f), Struct_1(global0.b.a, ~(~vec4<u32>(global0.b.b.x, var_2.b.x, 1u, 31336u)), arg_0.x, var_2.d), ~(~(~4294967295u ^ _wgslsmith_add_u32(var_2.b.x, var_1.x))), false);
    return Struct_5(-448f, var_2, _wgslsmith_sub_u32(var_0.a.b.x, var_0.a.b.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.b.c, global0.b.c, global0.b.c)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-778f, global0.a, global0.a, -1000f), vec4<f32>(global0.b.c, global0.b.c, global0.b.c, global0.b.c))), any(global0.b.d.zww))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1413f, global0.a, 164f, 179f) * vec4<f32>(1349f, -1000f, -248f, -1000f)))))), Struct_1(u_input.a.x, global0.b.b >> (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(global0.b.b, vec4<u32>(1u, global0.c, 1u, 1u)), ~vec4<u32>(12277u, global0.b.b.x, 1u, global0.b.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c)), global0.a)), vec4<bool>(true, firstTrailingBit(-1i) != global0.b.a, global0.b.d.x & (0u <= global0.b.b.x), true)));
    var var_1 = func_5(_wgslsmith_f_op_vec4_f32(floor(var_0.a)), Struct_3(0i), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.a, -248f)), _wgslsmith_f_op_f32(-global0.b.c))) < _wgslsmith_f_op_f32(func_1()), var_0, (u_input.a.x | -7578i) >> (firstTrailingBit(4700u) % 32u))));
    let var_2 = -2147483647i;
    var var_3 = ~_wgslsmith_dot_vec2_i32(u_input.a, max(reverseBits(u_input.a ^ vec2<i32>(2147483647i, var_1.b.a)), select(vec2<i32>(var_0.b.a, -5815i) >> (vec2<u32>(var_0.b.b.x, global0.b.b.x) % vec2<u32>(32u)), u_input.a >> (var_0.b.b.wx % vec2<u32>(32u)), vec2<bool>(false, var_0.b.d.x))));
    var var_4 = Struct_3(_wgslsmith_div_i32(_wgslsmith_mod_i32(abs(16250i), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-54008i, global0.b.a, -1i), vec3<i32>(35047i, 23003i, var_0.b.a)))), _wgslsmith_div_i32(~1i | -var_1.b.a, var_0.b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(var_2, -3803i), -var_2), ~reverseBits(u_input.a.x)), vec3<i32>(global0.b.a, var_2 & -26207i, var_0.b.a)), vec2<f32>(371f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-397f)), _wgslsmith_f_op_f32(-global0.b.c), all(var_0.b.d))) * _wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 46611u, ~var_0.b.b.x), vec3<u32>(firstTrailingBit(global0.c) ^ countOneBits(global0.b.b.x), global0.b.b.x, var_1.c)), select(~vec4<u32>(1u, ~2858u, _wgslsmith_sub_u32(2251u, 1u), 96175u), firstTrailingBit(~global0.b.b), var_1.b.d.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -358f), -296f, 1027f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

