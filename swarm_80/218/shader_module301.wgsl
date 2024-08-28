struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: Struct_1 = Struct_1(false, vec2<i32>(6602i, 2678i), 4294967295u);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(any(select(!(!vec3<bool>(arg_1, true, true)), !vec3<bool>(false, global1.a, false), arg_2.a)), vec2<i32>(~u_input.e.x & 35023i, arg_0.x), 62599u);
    let var_1 = vec4<u32>(_wgslsmith_add_u32(var_0.c, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.b, 2279u, u_input.b), max(vec3<u32>(55629u, 4294967295u, arg_2.c), u_input.a), false), abs(vec3<u32>(arg_2.c, u_input.b, var_0.c)))), ~global1.c, 87197u, arg_2.c);
    var var_2 = global1.a;
    global0 = array<i32, 11>();
    let var_3 = true;
    return arg_2;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: bool) -> u32 {
    global1 = func_1(reverseBits(vec4<i32>(-global0[_wgslsmith_index_u32(4294967295u, 11u)], -global1.b.x, -49059i, -1i)) | (_wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 11u)], -38525i), vec4<i32>(2009i, 6313i, u_input.d, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.c, global0[_wgslsmith_index_u32(global1.c, 11u)], -11137i), vec4<i32>(global0[_wgslsmith_index_u32(52363u, 11u)], -25538i, u_input.c, global0[_wgslsmith_index_u32(74340u, 11u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 3836i, -1i, 21561i))) << (min(vec4<u32>(75300u, u_input.a.x, global1.c, 11371u) ^ vec4<u32>(global1.c, global1.c, 39923u, 0u), vec4<u32>(u_input.b, u_input.b, 8777u, 0u)) % vec4<u32>(32u))), !(!((false && arg_1.x) || (arg_1.x & global1.a))), func_1(~firstLeadingBit(vec4<i32>(2147483647i, global1.b.x, 2147483647i, global1.b.x)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-24671i, -1i, 21348i, 23971i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.d, global0[_wgslsmith_index_u32(5542u, 11u)], u_input.e.x), vec4<i32>(-1i, global1.b.x, -2147483647i, u_input.c), vec4<i32>(-25119i, global0[_wgslsmith_index_u32(29929u, 11u)], 16603i, 2147483647i))), true, Struct_1(_wgslsmith_f_op_f32(-295f * -107f) <= _wgslsmith_f_op_f32(step(-1000f, 712f)), vec2<i32>(-2147483647i, firstLeadingBit(u_input.c)), 46157u)));
    let var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-select(vec4<i32>(global1.b.x, 0i, global0[_wgslsmith_index_u32(18412u, 11u)], u_input.c), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, 0i, 9021i, -38929i), vec4<i32>(-10516i, u_input.e.x, -40372i, global0[_wgslsmith_index_u32(global1.c, 11u)])), true), vec4<i32>(countOneBits(-19421i), -1i, 1i, 54608i) & (vec4<i32>(global1.b.x, u_input.e.x, u_input.e.x, 1i) & ~vec4<i32>(global1.b.x, global1.b.x, 15886i, u_input.d))), u_input.c);
    global1 = Struct_1(!global1.a, _wgslsmith_mod_vec2_i32(vec2<i32>(-_wgslsmith_sub_i32(var_0, u_input.d), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c, 6384i), global0[_wgslsmith_index_u32(~4294967295u, 11u)])), vec2<i32>(~(~var_0), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, -1i, 8859i, var_0)), vec4<i32>(var_0, global0[_wgslsmith_index_u32(u_input.b, 11u)], global1.b.x, var_0)))), 46312u);
    global1 = Struct_1(u_input.e.x > reverseBits(func_1(vec4<i32>(-55883i, var_0, var_0, 1i) & vec4<i32>(3552i, 0i, global0[_wgslsmith_index_u32(59127u, 11u)], u_input.e.x), any(vec4<bool>(arg_1.x, true, arg_0.x, arg_2)), Struct_1(false, vec2<i32>(-1i, var_0), 45235u)).b.x), -u_input.e, ~u_input.a.x);
    let var_1 = Struct_2(~(~global1.c), vec3<u32>(4294967295u, 17650u, ~32730u), _wgslsmith_mod_i32(0i, -16543i), min(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.b), u_input.b << (70648u % 32u)), ~u_input.b, ~u_input.b | (51067u << (global1.c % 32u))), _wgslsmith_sub_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global1.c, u_input.a.x), vec3<u32>(global1.c, u_input.a.x, 74162u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 63291u, global1.c), vec3<u32>(31929u, 70354u, 1u))), firstTrailingBit(u_input.a) | _wgslsmith_sub_vec3_u32(vec3<u32>(8021u, 0u, global1.c), u_input.a))));
    return _wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32((vec4<u32>(global1.c, 10684u, var_1.d.x, u_input.a.x) & vec4<u32>(u_input.a.x, 0u, 47714u, 81056u)) ^ (vec4<u32>(4294967295u, u_input.a.x, 0u, 17940u) | vec4<u32>(4294967295u, 0u, 19215u, global1.c)), select(firstTrailingBit(vec4<u32>(u_input.b, var_1.d.x, global1.c, 0u)), select(vec4<u32>(18791u, var_1.b.x, 61899u, var_1.a), vec4<u32>(var_1.a, var_1.d.x, 15364u, var_1.b.x), global1.a), global1.a)) | abs(global1.c));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec2<i32> {
    var var_0 = Struct_2(arg_1.c, vec3<u32>(arg_0.d.x | func_3(select(vec2<bool>(global1.a, global1.a), vec2<bool>(arg_1.a, false), global1.a), vec3<bool>(global1.a, true, true), false), abs(~(~46321u)), arg_0.b.x), -1i, vec3<u32>(~(_wgslsmith_dot_vec2_u32(arg_0.b.yx, vec2<u32>(4294967295u, global1.c)) << (abs(arg_1.c) % 32u)), u_input.b >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(global1.c, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c, arg_1.c, arg_1.c, arg_0.a), vec4<u32>(global1.c, 74439u, global1.c, u_input.b))) % 32u), (u_input.b & min(global1.c, 34642u)) ^ ~43495u));
    var var_1 = select(!(!select(select(vec3<bool>(false, false, arg_1.a), vec3<bool>(false, arg_1.a, true), global1.a), select(vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(false, false, false), true), true)), vec3<bool>(true, func_1(select(vec4<i32>(var_0.c, var_0.c, global1.b.x, -43782i), ~vec4<i32>(2147483647i, 16160i, arg_1.b.x, arg_0.c), false == global1.a), arg_1.a, arg_1).a, global1.a), true);
    global1 = func_1(vec4<i32>(-37021i, 26381i, -27361i, _wgslsmith_sub_i32(~(-10060i), arg_1.b.x)), (_wgslsmith_add_i32(~(-29890i), -29475i) | ~(~arg_0.c)) <= (-select(-1i, -1481i, false) >> ((countOneBits(var_0.b.x) | ~var_0.b.x) % 32u)), Struct_1(all(vec4<bool>(func_1(vec4<i32>(33392i, 28862i, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(41272u, 11u)]), global1.a, arg_1).a, !var_1.x, false, true)), vec2<i32>(arg_1.b.x << (_wgslsmith_mod_u32(var_0.d.x, arg_1.c) % 32u), global0[_wgslsmith_index_u32(1u, 11u)]), ~138164u));
    global0 = array<i32, 11>();
    global1 = Struct_1(!arg_1.a & (select(any(vec4<bool>(true, true, var_1.x, true)), global1.a || true, true) | var_1.x), vec2<i32>(-1i) * -(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(-1i, 0i)) << (~arg_0.d.xz % vec2<u32>(32u))), _wgslsmith_mod_u32(var_0.b.x, 10988u));
    return vec2<i32>(2147483647i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 11>();
    let var_0 = func_1(~(-vec4<i32>(global1.b.x, 21459i, u_input.c, u_input.c << (19550u % 32u))), true, Struct_1(false, _wgslsmith_div_vec2_i32(-vec2<i32>(0i, -1i), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(-26961i, 2147483647i)), vec2<i32>(-17784i, 13352i), select(vec2<i32>(global1.b.x, global1.b.x), vec2<i32>(-39688i, -21199i), global1.a))), 1u ^ _wgslsmith_clamp_u32(~u_input.a.x, global1.c, ~u_input.a.x)));
    global1 = Struct_1(var_0.a, vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.e, select(vec2<i32>(26853i, 55438i), vec2<i32>(u_input.c, global1.b.x), global1.a && true)), 2147483647i), var_0.c);
    global1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1651f, -1702f, var_0.a))))) != _wgslsmith_f_op_f32(f32(-1f) * -123f), select(_wgslsmith_sub_vec2_i32(u_input.e & _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.b.x, global1.b.x), vec2<i32>(u_input.e.x, u_input.c), global1.b), func_2(Struct_2(u_input.a.x, vec3<u32>(27994u, 15213u, global1.c), var_0.b.x, vec3<u32>(global1.c, u_input.a.x, 4294967295u)), Struct_1(var_0.a, u_input.e, 4294967295u), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1455f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-310f, -932f)))), global1.b, global1.a), var_0.c);
    let var_1 = Struct_2(4294967295u, vec3<u32>(var_0.c, func_3(!select(vec2<bool>(false, global1.a), vec2<bool>(true, false), global1.a), select(vec3<bool>(global1.a, false, true), !vec3<bool>(false, global1.a, true), 0i != global0[_wgslsmith_index_u32(global1.c, 11u)]), any(!vec4<bool>(false, var_0.a, var_0.a, global1.a))), var_0.c), max(-13949i, 89912i ^ _wgslsmith_clamp_i32(1i, u_input.c, 2147483647i)) << (~86076u % 32u), ~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(global1.c, 79049u, u_input.b)), vec3<u32>(~var_0.c, var_0.c, 71445u << (var_0.c % 32u))));
    var var_2 = ~var_0.b.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    var var_4 = Struct_2(global1.c, var_1.d, var_1.c, _wgslsmith_clamp_vec3_u32(var_1.b, u_input.a, vec3<u32>(var_1.a, 0u, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer((28719u | global1.c) << (global1.c % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-992f, 1058f, var_3.x, var_3.x) - vec4<f32>(var_3.x, var_3.x, -1921f, 241f)), vec4<f32>(2128f, _wgslsmith_f_op_f32(ceil(var_3.x)), -278f, _wgslsmith_f_op_f32(sign(482f))))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

