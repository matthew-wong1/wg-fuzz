struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -417f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = Struct_4(vec2<i32>(~_wgslsmith_mult_i32(reverseBits(u_input.b), arg_1.b.d & 2147483647i), -4674i));
    var var_1 = Struct_2(arg_1.b, vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1650f), 428f));
    var var_2 = arg_1.c;
    var var_3 = (~(_wgslsmith_sub_vec4_i32(vec4<i32>(-7669i, var_1.a.d, var_0.a.x, u_input.b), vec4<i32>(var_0.a.x, 41574i, 1i, 9364i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.b.d, var_0.a.x, arg_1.b.d, var_0.a.x), vec4<i32>(20316i, -2147483647i, 15552i, arg_1.b.d))) | select(firstLeadingBit(vec4<i32>(u_input.b, var_1.a.d, -66901i, 1i)) << (firstTrailingBit(vec4<u32>(69279u, var_1.a.a.x, u_input.a, 4294967295u)) % vec4<u32>(32u)), select(-vec4<i32>(u_input.b, 13800i, 24679i, -14509i), ~vec4<i32>(u_input.b, -2147483647i, 36769i, -23488i), vec4<bool>(true, true, arg_1.c, arg_1.b.b)), !select(vec4<bool>(false, false, var_1.a.e, arg_0), vec4<bool>(true, var_1.a.e, true, true), arg_1.b.c.x))) >> (vec4<u32>(8732u, ~var_1.a.a.x, ~(~u_input.a), ~(~_wgslsmith_add_u32(var_1.a.a.x, 29047u))) % vec4<u32>(32u));
    var var_4 = Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.b, _wgslsmith_f_op_vec3_f32(var_1.b * var_1.b), vec3<bool>(arg_0, arg_1.b.e, arg_1.b.b)))) - _wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(-1294f, -1552f, 1038f))));
    return vec3<bool>(true, !(select(reverseBits(2147483647i), -881i, !var_1.a.e) < ~var_0.a.x), all(!vec3<bool>(all(vec4<bool>(true, var_4.a.b, true, arg_0)), true, any(vec4<bool>(false, true, true, true)))));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(arg_2.a, ~_wgslsmith_sub_i32(u_input.b, 2507i) <= -u_input.b, vec3<bool>(any(func_3(false, Struct_3(arg_2.a, arg_2, false))), !arg_0, true), arg_2.d, 1774i < min(firstLeadingBit(u_input.b), _wgslsmith_div_i32(arg_1.x, 2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(1f * 398f), 431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2386f) + _wgslsmith_f_op_f32(f32(-1f) * -728f)))));
    var var_1 = vec4<bool>(-355i == firstLeadingBit(_wgslsmith_mult_i32(min(var_0.a.d, arg_2.d), abs(11498i))), true, var_0.b.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -348f)) * 935f), !(!arg_2.b) & true);
    var_0 = Struct_2(Struct_1(abs(vec2<u32>(4294967295u, 33470u) ^ vec2<u32>(u_input.a, var_0.a.a.x)), !arg_2.b, vec3<bool>(true, true, true), ~u_input.b, all(!var_0.a.c) | var_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1246f, -1540f, 820f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, var_0.b.x, -133f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 1766f, var_0.b.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)))));
    var_0 = Struct_2(Struct_1(reverseBits(arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -250f) > _wgslsmith_f_op_f32(round(397f)), select(func_3(false, Struct_3(vec2<u32>(4294967295u, 1u), Struct_1(var_0.a.a, arg_2.e, var_0.a.c, 0i, true), false)), func_3(!var_1.x, Struct_3(vec2<u32>(u_input.a, var_0.a.a.x), Struct_1(vec2<u32>(arg_2.a.x, 75728u), arg_0, var_0.a.c, u_input.b, false), false)), !func_3(true, Struct_3(arg_2.a, var_0.a, true))), u_input.b, !any(vec4<bool>(false, arg_2.c.x, false, var_1.x))), var_0.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -769f, -363f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1389f * _wgslsmith_f_op_f32(f32(-1f) * -1648f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(456f * _wgslsmith_f_op_f32(-var_0.b.x)), -100f, arg_0)), _wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -971f) + _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(1000f * 440f))))));
    return _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(77257u, _wgslsmith_clamp_u32(arg_2.a.x, var_0.a.a.x, var_0.a.a.x), arg_2.a.x, ~u_input.a)), _wgslsmith_mult_vec4_u32(~(~(vec4<u32>(arg_2.a.x, u_input.a, u_input.a, u_input.a) & vec4<u32>(var_0.a.a.x, 0u, u_input.a, var_0.a.a.x))), select(vec4<u32>(arg_2.a.x, arg_2.a.x, var_0.a.a.x, ~0u), ~vec4<u32>(4294967295u, var_0.a.a.x, 48945u, 20207u), vec4<bool>(all(vec4<bool>(false, arg_2.e, arg_2.c.x, var_0.a.b)), var_0.a.d != -1i, !arg_0, any(vec3<bool>(true, false, true))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-1038f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(531f, 1026f)));
    let var_1 = Struct_1(vec2<u32>(~firstTrailingBit(func_2(false, vec4<i32>(u_input.b, -1i, u_input.b, 11240i), Struct_1(vec2<u32>(u_input.a, 4294967295u), true, vec3<bool>(true, false, true), 1i, true))), 0u), true, vec3<bool>(any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), all(vec2<bool>(true, true)) | true, false && (firstLeadingBit(1u) != ~u_input.a)), 0i, true);
    var var_2 = ~vec3<i32>(1i, ~(-(i32(-1i) * -1i)), -1i);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-324f * _wgslsmith_f_op_f32(max(148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1145f + 886f))))) - _wgslsmith_f_op_f32(1485f - _wgslsmith_div_f32(1f, 1f)));
    let var_3 = Struct_4(min(vec2<i32>(u_input.b & _wgslsmith_clamp_i32(1i, 4264i, 53824i), u_input.b), var_2.zx));
    return 1838f;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = abs(~vec4<u32>(75138u, 1u, 0u, _wgslsmith_add_u32(51774u, ~u_input.a)));
    let var_1 = select(~var_0.wz, vec2<u32>(_wgslsmith_mod_u32(1u, firstTrailingBit(1u)), ~u_input.a | 1u) ^ var_0.zw, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-540f)), arg_1)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, arg_1))));
    var var_2 = ~_wgslsmith_add_u32(abs(arg_3.a.x), 1u >> (_wgslsmith_clamp_u32(1u, 4294967295u, firstLeadingBit(var_0.x)) % 32u));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(548f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))));
    let var_3 = vec4<i32>(firstTrailingBit(u_input.b), reverseBits(firstTrailingBit(-arg_3.b.d)), ~(-2147483647i), arg_3.b.d);
    return Struct_2(Struct_1(vec2<u32>(1u, ~44978u) & vec2<u32>(reverseBits(u_input.a), ~var_0.x), false, select(arg_3.b.c, !arg_3.b.c, false), _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b.d, u_input.b, u_input.b), var_3.xyx), firstTrailingBit(min(-1i, arg_3.b.d))), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_1, arg_2))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1384f, arg_2, arg_1) * vec3<f32>(-276f, -1000f, arg_1)) * vec3<f32>(arg_2, arg_2, arg_2)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(292f, -699f, arg_1) + vec3<f32>(1607f, -962f, -1784f)) - vec3<f32>(-853f, arg_2, -243f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-537f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-522f, -1000f)), -894f, u_input.b > 0i)) * 2067f), _wgslsmith_f_op_f32(func_1()), 1f, Struct_3(abs(abs(vec2<u32>(1u, u_input.a))), Struct_1(max(vec2<u32>(u_input.a, 20801u) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, 7873u)), true, vec3<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(true, true, false)), true), ~u_input.b, false), all(vec3<bool>(true, true, true))));
    var var_1 = reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.a.a.x, var_0.a.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, var_0.a.a.x), vec3<u32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x))) >> (u_input.a % 32u));
    let var_2 = vec2<i32>(2147483647i, countOneBits(var_0.a.d | _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.a.d, -44286i, -86489i), ~u_input.b)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), var_0.b.x)));
    var_1 = ~var_0.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a, ~max(~(~vec3<u32>(54700u, 0u, u_input.a)), abs(~vec3<u32>(var_0.a.a.x, 0u, 4294967295u))), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(~vec4<i32>(var_2.x, u_input.b, var_2.x, var_2.x), -vec4<i32>(0i, var_2.x, -1i, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - 989f)));
}

