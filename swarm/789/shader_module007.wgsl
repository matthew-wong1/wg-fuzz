struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 4>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec4<bool>) -> i32 {
    let var_0 = vec2<i32>(78167i, arg_1.x);
    global0 = Struct_1(global0.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1982f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.c.x)))), -1852f), 132f, vec3<u32>((~arg_0.e | ~51715u) & _wgslsmith_div_u32(countOneBits(52724u), 59631u), _wgslsmith_dot_vec2_u32(global0.d.zz, arg_0.d) << (~(~global0.d.x) % 32u), arg_0.e), u_input.a.x >> (global0.d.x % 32u));
    let var_1 = !((0i & _wgslsmith_div_i32(~arg_0.a, 1797i)) != global0.e);
    var var_2 = 4294967295u;
    var var_3 = firstTrailingBit(vec3<u32>(global0.d.x, 23518u, arg_0.e));
    return u_input.a.x;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: bool, arg_3: u32) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, -1591f, global0.a) - vec3<f32>(1119f, global0.c, global0.b.x)) + _wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(1051f, global0.a, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -510f), global0.a), !(!vec3<bool>(arg_0, arg_0, false))))), global0.b.x, global0.d, abs(~0i));
    global0 = Struct_1(global0.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(global0.a + global0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b.x)), global0.b.x)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) + global0.b)))), _wgslsmith_f_op_f32(min(global0.b.x, -301f)), _wgslsmith_mult_vec3_u32(global0.d, vec3<u32>(~(~arg_3), abs(4294967295u), _wgslsmith_mult_u32(15183u, arg_3))), global0.e);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(global0.a)), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(1268f * global0.b.x)))), global0.a), 1443f, ~(~global0.d) >> (_wgslsmith_add_vec3_u32(vec3<u32>(5221u, arg_3 ^ 1u, global0.d.x), _wgslsmith_sub_vec3_u32(~global0.d, _wgslsmith_div_vec3_u32(vec3<u32>(arg_3, global0.d.x, 21730u), vec3<u32>(arg_3, global0.d.x, 0u)))) % vec3<u32>(32u)), 11960i);
    var var_1 = global1[_wgslsmith_index_u32(1u, 4u)];
    return arg_3;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>) -> f32 {
    var var_0 = Struct_4(arg_0.b.a.x, Struct_3(arg_0.b.a, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.b.c, arg_0.b.c)) + vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.c)), global0.b.x, _wgslsmith_f_op_f32(trunc(1256f)), _wgslsmith_f_op_f32(f32(-1f) * -1055f)))), _wgslsmith_dot_vec4_i32(~abs(u_input.a), vec4<i32>(13981i, 1i, arg_1.x, -max(u_input.a.x, u_input.a.x))), firstTrailingBit(~_wgslsmith_mod_vec2_u32(~arg_0.d, _wgslsmith_add_vec2_u32(global0.d.yx, vec2<u32>(global0.d.x, 16551u)))), ~_wgslsmith_mult_u32(max(35763u, 1u), 0u ^ _wgslsmith_sub_u32(arg_0.d.x, arg_0.e)));
    var_0 = global1[_wgslsmith_index_u32(~var_0.e, 4u)];
    var var_1 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-37623i, 1i, arg_0.a, countOneBits(~u_input.a.x)), _wgslsmith_mod_vec4_i32(select(-vec4<i32>(u_input.a.x, arg_0.a, 1i, arg_1.x), min(vec4<i32>(-16870i, global0.e, -33355i, 2147483647i), u_input.a), true), countOneBits(vec4<i32>(arg_0.a, 0i, u_input.a.x, -46730i)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1819f, global0.c), arg_0.b.c.x)))), vec3<f32>(arg_0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - global0.c) - 1276f), _wgslsmith_f_op_f32(var_0.b.c.x - var_0.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-719f * 1962f))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d.x, 4294967295u, 4294967295u), vec3<u32>(34331u, var_0.d.x, 50600u)) | _wgslsmith_add_vec3_u32(global0.d, vec3<u32>(9002u, 0u, 42312u)), firstLeadingBit(~arg_1.x << (4294967295u % 32u))), !vec3<bool>(all(select(vec4<bool>(false, var_0.b.b, var_0.b.b, true), vec4<bool>(false, true, var_0.b.b, var_0.b.b), vec4<bool>(false, var_0.b.b, true, false))), var_0.b.b, all(vec2<bool>(true, arg_0.b.b)) || true), firstTrailingBit(_wgslsmith_mod_u32(arg_0.d.x, func_3(true, u_input.a, false, var_0.d.x)) << (~(~arg_0.d.x) % 32u)), _wgslsmith_f_op_f32(-global0.b.x));
    var var_2 = _wgslsmith_dot_vec2_u32(select(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(var_0.e, var_1.b.d.x)), vec2<u32>(_wgslsmith_mod_u32(19164u, 19238u), ~var_1.b.d.x)), firstLeadingBit(_wgslsmith_add_vec2_u32(abs(vec2<u32>(var_0.e, global0.d.x)), vec2<u32>(32235u, 4294967295u))), vec2<bool>(any(select(vec2<bool>(false, arg_0.b.b), vec2<bool>(false, true), var_1.c.xy)), true)), abs(vec2<u32>(1u, var_0.d.x)));
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(826u) & _wgslsmith_mod_u32(var_1.b.d.x, ~var_0.e), ~arg_0.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~75270u, min(var_0.e, global0.d.x), 22674u), vec3<u32>(abs(var_0.d.x), _wgslsmith_mult_u32(var_0.e, global0.d.x), ~arg_0.e))), var_1.b.d);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1375f - -2146f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(727f, -735f) - _wgslsmith_div_f32(global0.a, 622f)))), var_0.b.c.x), _wgslsmith_f_op_f32(-global0.b.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = Struct_4(2147483647i, Struct_3(vec3<i32>(arg_3.e, arg_3.e, func_2(Struct_4(2147483647i, Struct_3(vec3<i32>(2147483647i, 2147483647i, 29541i), true, vec4<f32>(400f, arg_0.a, arg_0.b.x, -692f)), -2147483647i, vec2<u32>(1u, 1209u), 24727u), vec3<i32>(-15058i, u_input.a.x, arg_3.e), vec4<bool>(arg_1.b.b, arg_1.b.b, true, true)) >> ((arg_0.d.x ^ 4294967295u) % 32u)), arg_1.b.b, arg_1.b.c), _wgslsmith_add_i32(abs(abs(~1i)), -2147483647i), _wgslsmith_mult_vec2_u32(arg_1.d ^ arg_1.d, _wgslsmith_sub_vec2_u32(vec2<u32>(global0.d.x, 4294967295u) | vec2<u32>(0u, 1u), _wgslsmith_clamp_vec2_u32(global0.d.xx, arg_0.d.yy, vec2<u32>(62433u, 4294967295u)))) ^ arg_1.d, 14178u);
    let var_1 = true;
    let var_2 = firstTrailingBit(~abs(firstLeadingBit(max(vec4<u32>(arg_1.e, var_0.e, 0u, 4294967295u), vec4<u32>(4294967295u, 33706u, global0.d.x, arg_3.d.x)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-331f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -269f)))), arg_0.b, _wgslsmith_f_op_f32(func_4(Struct_4(-19196i, Struct_3(-var_0.b.a, arg_0.e == 1i, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.c.x, arg_1.b.c.x, -114f, -1699f)))), countOneBits(arg_3.e), select(reverseBits(vec2<u32>(1336u, arg_3.d.x)), abs(vec2<u32>(arg_1.d.x, 1u)), select(vec2<bool>(arg_1.b.b, false), vec2<bool>(true, true), arg_1.b.b)), func_3(true, vec4<i32>(var_0.a, -1i, var_0.b.a.x, 35233i), false, 1u) | 27483u), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(global0.e, -2147483647i, u_input.a.x), reverseBits(vec3<i32>(-1i, arg_3.e, -1i)))))), global0.d, ~_wgslsmith_dot_vec2_i32(u_input.a.zz, firstTrailingBit(-vec2<i32>(global0.e, 0i))));
    global1 = array<Struct_4, 4>();
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b.x))), _wgslsmith_f_op_f32(-global0.a), arg_3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1369f * arg_2), _wgslsmith_f_op_f32(sign(1433f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 4>();
    var var_0 = Struct_4(-global0.e, Struct_3(reverseBits(u_input.a.xxz), any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), global0.d.x >= 49297u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a, global0.b.x, global0.c, global0.a), vec4<f32>(global0.b.x, 572f, -1181f, 1392f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(-647f, global0.b, 220f, vec3<u32>(global0.d.x, global0.d.x, global0.d.x), 20306i), global1[_wgslsmith_index_u32(global0.d.x, 4u)], global0.a, Struct_1(365f, vec3<f32>(global0.b.x, global0.b.x, -1102f), -1671f, vec3<u32>(global0.d.x, 34158u, 41107u), u_input.a.x))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.c, 681f, 1000f, 268f)))))), firstTrailingBit(-1i), countOneBits(global0.d.xy), global0.d.x);
    let var_1 = var_0.b.c.xw;
    var var_2 = Struct_2(-38468i, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-686f, global0.b.x, var_0.b.c.x))))), 1f, ~abs(vec3<u32>(global0.d.x, var_0.e, global0.d.x)), 1i), vec3<bool>(var_0.b.b, !var_0.b.b, var_0.b.b), global0.d.x, global0.a);
    global0 = Struct_1(_wgslsmith_f_op_f32(541f - var_2.b.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.b.c.zyz))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_2.b.b + var_0.b.c.yyz)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-1088f * 875f), -154f, -477f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1806f - -101f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.c.x), _wgslsmith_f_op_f32(sign(1655f))), all(!var_2.c)))), global0.d, -1i);
    var var_3 = Struct_4(u_input.a.x, Struct_3(select(~max(var_0.b.a, var_0.b.a), ~(-u_input.a.zwx), true), var_2.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(810f, var_2.b.c, -1565f, var_2.b.b.x) * var_0.b.c), var_0.b.c))), abs((u_input.a.x ^ abs(2147483647i)) ^ _wgslsmith_mod_i32(~(-12098i), var_0.b.a.x >> (var_2.d % 32u))), vec2<u32>(4294967295u, _wgslsmith_div_u32(780u, 6142u)), ~var_0.d.x);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -689f);
    let var_5 = i32(-1i) * -var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(~max(~vec4<i32>(30493i, -2147483647i, var_3.b.a.x, 61635i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.b.e, u_input.a.x, 19105i, var_2.b.e) | vec4<i32>(var_2.b.e, -1i, 0i, 1i), ~vec4<i32>(-1400i, 40854i, u_input.a.x, 0i))));
}

