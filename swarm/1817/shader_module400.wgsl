struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
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

var<private> global0: Struct_3;

var<private> global1: bool = false;

var<private> global2: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5) -> vec3<bool> {
    global0 = Struct_3(arg_0.a.a, arg_0.a.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-201f - -576f), _wgslsmith_f_op_f32(arg_0.a.c - 1102f))))))));
    let var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i << (u_input.b % 32u), ~28320i, -24167i)), reverseBits(vec3<i32>(0i, global0.a.a, 733i)) ^ abs(~vec3<i32>(15591i, arg_0.a.a.a, arg_0.a.a.a))), 30730i, ~1i, firstTrailingBit(select(-(i32(-1i) * -11809i), _wgslsmith_dot_vec2_i32(vec2<i32>(-15692i, global0.a.a), abs(vec2<i32>(-8818i, global0.a.a))), global0.b.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0.a.c)), arg_0.a.c)))));
    let var_2 = _wgslsmith_f_op_f32(-arg_0.a.c);
    global1 = global0.b.x;
    return select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, global0.b.x, global0.b.x), !vec3<bool>(global0.b.x, global0.b.x, global0.b.x), arg_0.a.b.x), global0.b.x), vec3<bool>(any(select(vec3<bool>(arg_0.a.b.x, false, false), !vec3<bool>(false, global0.b.x, false), true && arg_0.a.b.x)), false, false), !(!vec3<bool>(any(arg_0.a.b), true, arg_0.a.b.x)));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    var var_0 = func_3(Struct_5(Struct_3(global0.a, select(!global0.b, vec2<bool>(false, true), global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-906f))))));
    var var_1 = -_wgslsmith_mod_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(global0.a.a, 0i, global0.a.a), vec3<i32>(-1i, global0.a.a, arg_0.x)), firstLeadingBit(vec3<i32>(-2147483647i, -9306i, global0.a.a) << (vec3<u32>(u_input.a.x, 43089u, 724u) % vec3<u32>(32u)))) & -(firstTrailingBit(vec3<i32>(global0.a.a, -1i, -2147483647i) << (vec3<u32>(64520u, u_input.b, u_input.b) % vec3<u32>(32u))) ^ vec3<i32>(2147483647i, -arg_0.x, -2013i));
    var var_2 = _wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f)))), -1000f)), true));
    var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(firstTrailingBit(max(vec3<i32>(2147483647i, var_1.x, 12799i), vec3<i32>(global0.a.a, var_1.x, var_1.x)))), select(select(~vec3<i32>(28497i, 1i, 31503i), vec3<i32>(global0.a.a, 30864i, global0.a.a) >> (vec3<u32>(u_input.a.x, u_input.b, 26570u) % vec3<u32>(32u)), select(vec3<bool>(false, global0.b.x, false), vec3<bool>(false, true, true), true)), vec3<i32>(_wgslsmith_mod_i32(-13011i, -2147483647i), 3237i << (u_input.b % 32u), _wgslsmith_sub_i32(var_1.x, 1i)), var_0.x), vec3<i32>(firstTrailingBit(global0.a.a | global0.a.a), global0.a.a, ~(-22077i) >> (~u_input.a.x % 32u))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(countOneBits(vec3<i32>(-1i, -22219i, var_1.x))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, var_1.x, arg_0.x), vec3<i32>(-36488i, global0.a.a, arg_0.x))), vec3<i32>(40685i, var_1.x, 1i)));
    let var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(abs(u_input.a << (_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, vec2<u32>(56729u, u_input.b)) % vec2<u32>(32u))), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(5526u, u_input.a.x), u_input.a) | ~vec2<u32>(4294967295u, 10325u))), u_input.b, u_input.b);
    return 1000f;
}

fn func_1(arg_0: vec3<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.c, global0.c), _wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(vec2<i32>(global0.a.a, 0i))))), global0.c, _wgslsmith_f_op_f32(floor(global0.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.c, -1888f, 1638f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, 2818f, global0.c, global0.c)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(907f, var_0.x, 761f, 1130f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.c - 1317f), -1000f, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(847f, global0.c, var_0.x, global0.c)))), !global0.b.x));
    let var_1 = select(vec2<bool>(true, true), global0.b, !any(select(!vec4<bool>(false, global0.b.x, true, global0.b.x), select(vec4<bool>(false, global0.b.x, true, true), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), false), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 1303f, global0.c, 2096f))) * vec4<f32>(global0.c, _wgslsmith_f_op_f32(var_0.x * var_0.x), -870f, _wgslsmith_f_op_f32(-1833f - 323f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(973f, _wgslsmith_div_f32(var_0.x, 1057f), _wgslsmith_f_op_f32(select(var_0.x, -829f, false)), _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, -890f, global0.c) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(global0.c)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_div_f32(-115f, 955f)) + vec4<f32>(_wgslsmith_f_op_f32(step(-833f, 1496f)), _wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_f_op_f32(select(global0.c, global0.c, global0.b.x)), var_0.x))), false));
    var var_3 = Struct_5(Struct_3(global0.a, select(vec2<bool>(false && global0.b.x, global0.b.x), select(select(vec2<bool>(false, false), vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(global0.b.x, false)), !vec2<bool>(var_1.x, global0.b.x), vec2<bool>(false, true)), vec2<bool>(false, true && var_1.x)), 174f));
    return vec2<i32>(-1i, 49862i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -min(select(-_wgslsmith_mod_vec2_i32(vec2<i32>(global0.a.a, 2147483647i), vec2<i32>(19151i, 120i)), ~abs(vec2<i32>(global0.a.a, -34871i)), global0.b), func_1(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 12694u), vec3<u32>(72367u, u_input.a.x, u_input.a.x))));
    let var_1 = select(select(!vec4<bool>(true, select(false, true, true), true, global0.b.x), !vec4<bool>(true, false, func_3(Struct_5(Struct_3(global0.a, vec2<bool>(true, true), -2011f))).x, global0.b.x || global0.b.x), global0.b.x), vec4<bool>(global0.b.x, -reverseBits(global0.a.a) != ~var_0.x, false, global0.b.x), all(vec2<bool>(global0.b.x, global0.b.x | global0.b.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c)) - _wgslsmith_f_op_f32(global0.c + 236f)) + _wgslsmith_f_op_f32(-481f - _wgslsmith_f_op_f32(-1041f + -714f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(2295f)), global0.c)))));
    global2 = true;
    var var_3 = vec2<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b >> (7904u % 32u), u_input.b, u_input.a.x, u_input.b), min(vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.a.x) & vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x), vec4<u32>(u_input.b, 38222u, u_input.a.x, u_input.b) | vec4<u32>(4294967295u, u_input.b, 4294967295u, 55401u)))) | _wgslsmith_clamp_vec2_u32((vec2<u32>(4294967295u, u_input.b) & vec2<u32>(0u, 1u)) << (firstLeadingBit(select(u_input.a, u_input.a, global0.b.x)) % vec2<u32>(32u)), vec2<u32>(0u, 0u), vec2<u32>(~u_input.a.x, ~4294967295u));
    let var_4 = var_1.x;
    let var_5 = Struct_1(~(min(-2147483647i, global0.a.a) << (_wgslsmith_add_u32(u_input.b, ~u_input.b) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.c * 1000f));
}

