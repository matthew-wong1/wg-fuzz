struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-365f, 559f, 1000f, -363f, 214f, 880f, -150f, -164f, 2419f, 1000f, 1896f, -1000f, -641f, -565f, -545f, 203f, -430f, -1000f, 1365f, -121f, -715f, -391f, 419f, -645f, 1102f, -181f, 1090f, 1521f, -503f, 1934f, 901f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec4<u32> {
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_0 = arg_0;
    return vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, ~(var_0.d | 0u)), u_input.a.x, reverseBits(arg_1.a) | u_input.a.x, ~arg_0.d);
}

fn func_3(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = vec2<i32>(-u_input.b.x, 23512i);
    global0 = array<f32, 31>();
    var var_1 = ~max(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, u_input.a.x, 8347u), vec3<u32>(u_input.a.x, 4294967295u, 9707u)), _wgslsmith_sub_vec3_u32(~u_input.a, select(abs(u_input.a), reverseBits(vec3<u32>(arg_0.x, u_input.a.x, u_input.a.x)), true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1825f, -375f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 31u)])), vec3<f32>(_wgslsmith_f_op_f32(637f - -396f), global0[_wgslsmith_index_u32(1u, 31u)], -320f), true))) + vec3<f32>(-1488f, 356f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0.x, 43548u), vec2<u32>(var_1.x, 43023u), true), ~vec2<u32>(36366u, 1862u)), 31u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 31u)]))));
    let var_3 = Struct_2(46829u);
    return Struct_2(0u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(arg_1.a, 31u)];
    var var_1 = ~6742u >> (arg_2.d % 32u);
    var var_2 = Struct_1(arg_3.x, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), ~vec2<u32>(u_input.a.x, 58605u)), func_2(Struct_1(u_input.c.x, arg_2.b, vec4<bool>(true, arg_2.c.x, arg_2.c.x, arg_2.c.x), 19913u), func_3(vec4<u32>(55531u, 56962u, u_input.a.x, arg_2.d))).x), 31u)], !vec4<bool>(!(arg_1.a > arg_1.a), all(vec2<bool>(false, true)), all(!arg_2.c), true), arg_1.a);
    let var_3 = Struct_1(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(82809u, 31u)]))))), !vec4<bool>(false, var_2.c.x, arg_2.c.x | (840f < var_2.b), true), arg_1.a >> ((~arg_2.d | 48477u) % 32u));
    var_2 = arg_2;
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = 412f;
    global0 = array<f32, 31>();
    let var_1 = _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(arg_1.x, max(~reverseBits(0u), 56248u), firstLeadingBit(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(arg_0.d, arg_1.x, 5640u, u_input.a.x)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 28011u, 1u, arg_1.x), arg_1)), 2171u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.b, -1056f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1850f, -2650f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1229f, var_0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_1.x, 31u)], var_0))))) * vec2<f32>(global0[_wgslsmith_index_u32(arg_0.d, 31u)], _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec4_u32(arg_1, vec4<u32>(43367u, var_1, 2949u, u_input.a.x)), Struct_2(var_1), func_4(arg_1, Struct_2(4294967295u), arg_0, u_input.c.xz), u_input.c.yz & u_input.b).b + _wgslsmith_f_op_f32(213f * 1011f))));
    let var_3 = ~(~1u) ^ arg_1.x;
    return func_4(arg_1, func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, ~arg_1.x, _wgslsmith_mod_u32(u_input.a.x, var_1), u_input.a.x & 4294967295u), vec4<u32>(min(var_1, var_1), arg_0.d, 4294967295u, 18132u | arg_0.d), vec4<u32>(_wgslsmith_div_u32(0u, arg_0.d), 56701u, func_3(vec4<u32>(4294967295u, 4294967295u, var_3, 33398u)).a, var_3))), func_4(vec4<u32>(34330u, ~58947u, 1u, 39198u), Struct_2(_wgslsmith_dot_vec2_u32(~u_input.a.yz, vec2<u32>(arg_0.d, arg_0.d) | u_input.a.zz)), func_4(arg_1 << (_wgslsmith_mult_vec4_u32(arg_1, vec4<u32>(u_input.a.x, 1u, 116989u, var_3)) % vec4<u32>(32u)), Struct_2(~arg_0.d), arg_0, max(u_input.c.xy, vec2<i32>(37299i, arg_0.a))), vec2<i32>(-u_input.b.x, ~_wgslsmith_div_i32(arg_3, -2147483647i))), u_input.b);
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global0 = array<f32, 31>();
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a, -159i, 13965i, _wgslsmith_sub_i32(countOneBits(arg_1.a), arg_0)), vec4<i32>(~arg_0, countOneBits(u_input.b.x | arg_0), reverseBits(_wgslsmith_div_i32(u_input.c.x, 1447i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-596i, 39255i, 1i), vec3<i32>(u_input.b.x, arg_1.a, arg_1.a))), ~(u_input.c << (vec4<u32>(arg_1.d, arg_1.d, u_input.a.x, arg_1.d) % vec4<u32>(32u)))), countOneBits(u_input.c));
    let var_1 = func_3(vec4<u32>(u_input.a.x, ~(~1u), 27017u, arg_1.d));
    let var_2 = true;
    return var_1;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec3<i32>) -> bool {
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_0 = func_6(~57020i, func_5(func_4(~vec4<u32>(48731u, 1u, 11264u, u_input.a.x) << (reverseBits(vec4<u32>(3304u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), func_3(func_2(Struct_1(-2147483647i, 1315f, vec4<bool>(false, false, true, arg_0.x), u_input.a.x), Struct_2(4294967295u))), Struct_1(-1i, global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 31u)], select(vec4<bool>(false, arg_0.x, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), arg_0.x), 0u), _wgslsmith_mult_vec2_i32(u_input.c.yx, vec2<i32>(2147483647i, arg_1.x))), vec4<u32>(~47295u >> (firstLeadingBit(u_input.a.x) % 32u), _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, u_input.a.x)), 17094u, func_2(Struct_1(u_input.b.x, -542f, vec4<bool>(false, true, false, arg_0.x), 43434u), Struct_2(0u)).x), any(func_4(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(14468u), func_4(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(u_input.a.x), Struct_1(1i, global0[_wgslsmith_index_u32(0u, 31u)], vec4<bool>(false, false, false, false), u_input.a.x), vec2<i32>(arg_2.x, 45783i)), -vec2<i32>(-8846i, -2147483647i)).c), -10733i | arg_1.x));
    let var_1 = false;
    let var_2 = func_4(~vec4<u32>(~6210u, ~u_input.a.x, 73129u, ~u_input.a.x) | (countOneBits(vec4<u32>(var_0.a, 29383u, 1u, var_0.a)) ^ func_2(func_5(Struct_1(arg_2.x, global0[_wgslsmith_index_u32(var_0.a, 31u)], vec4<bool>(true, var_1, false, arg_0.x), 1u), vec4<u32>(u_input.a.x, 2047u, u_input.a.x, u_input.a.x), var_1, arg_2.x), func_3(vec4<u32>(38468u, 0u, var_0.a, 1u)))), func_6(-2147483647i, func_5(Struct_1(arg_1.x, 1723f, !vec4<bool>(true, var_1, arg_0.x, true), func_5(Struct_1(arg_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], vec4<bool>(arg_0.x, arg_0.x, var_1, var_1), 0u), vec4<u32>(var_0.a, u_input.a.x, 55027u, u_input.a.x), arg_0.x, 24672i).d), ~(~vec4<u32>(u_input.a.x, 39414u, var_0.a, var_0.a)), true, ~u_input.b.x)), func_5(func_4(firstLeadingBit(vec4<u32>(4294967295u, var_0.a, 1u, u_input.a.x)), Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1730u), vec2<u32>(var_0.a, 0u))), func_5(Struct_1(-1i, -1233f, vec4<bool>(var_1, var_1, var_1, arg_0.x), 4555u), ~vec4<u32>(8273u, 61438u, u_input.a.x, 0u), true, u_input.b.x), u_input.b), ~vec4<u32>(_wgslsmith_mod_u32(51332u, 2675u), ~u_input.a.x, _wgslsmith_clamp_u32(1u, var_0.a, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(var_0.a, var_0.a, u_input.a.x, 1u))), true, 14011i), -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, arg_1.x | 2147483647i), _wgslsmith_div_vec2_i32(select(vec2<i32>(arg_1.x, u_input.c.x), vec2<i32>(-1i, u_input.b.x), vec2<bool>(true, true)), -arg_2.xz)));
    return true;
}

fn func_7(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_mult_i32(firstLeadingBit(-u_input.c.x ^ _wgslsmith_mod_i32(8350i << (u_input.a.x % 32u), -u_input.c.x)), min(_wgslsmith_add_i32(u_input.c.x, 54871i), _wgslsmith_div_i32(u_input.b.x, -1i)));
    let var_1 = ~36101i;
    var var_2 = Struct_1(arg_2, _wgslsmith_f_op_f32(abs(338f)), func_5(func_5(Struct_1(~var_1, 305f, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, 33651u), vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 86757u, 74145u, 53839u), ~vec4<u32>(4294967295u, u_input.a.x, 40482u, 4294967295u)), func_4(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 31952u, 62001u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 39191u)), func_3(vec4<u32>(u_input.a.x, 93870u, u_input.a.x, u_input.a.x)), Struct_1(arg_2, 610f, vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), 15510u), min(vec2<i32>(arg_1.x, 0i), vec2<i32>(arg_1.x, arg_2))).c.x, _wgslsmith_mult_i32(arg_1.x, -2147483647i)), _wgslsmith_add_vec4_u32((vec4<u32>(u_input.a.x, 1u, 1u, 0u) << (vec4<u32>(u_input.a.x, u_input.a.x, 1u, 76794u) % vec4<u32>(32u))) & vec4<u32>(32237u, u_input.a.x, 91824u, 0u), firstTrailingBit(vec4<u32>(u_input.a.x, 48649u, u_input.a.x, 71238u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 139736u, u_input.a.x, u_input.a.x), vec4<u32>(54533u, u_input.a.x, u_input.a.x, u_input.a.x))), func_1(select(vec3<bool>(false, arg_0.x, true), vec3<bool>(arg_0.x, true, arg_0.x), arg_0.x), vec3<i32>(arg_1.x, -1i << (u_input.a.x % 32u), _wgslsmith_mod_i32(31388i, var_1)), select(_wgslsmith_div_vec3_i32(vec3<i32>(var_1, 13784i, 56843i), arg_1), u_input.c.wwx, true)), arg_2).c, abs(_wgslsmith_div_u32(~(~28872u), ~(u_input.a.x ^ 49428u))));
    var_2 = func_5(Struct_1(5181i, -1000f, var_2.c, func_2(Struct_1(var_2.a, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 31u)]), !vec4<bool>(false, var_2.c.x, false, var_2.c.x), ~0u), Struct_2(1u)).x), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d, var_2.d, u_input.a.x, var_2.d), vec4<u32>(var_2.d, 4294967295u, 48746u, var_2.d)), 48757u, ~10314u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d, 30166u, 1u, var_2.d), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))), reverseBits(vec4<u32>(var_2.d, 4294967295u, u_input.a.x, u_input.a.x)) | vec4<u32>(u_input.a.x, 0u, 0u, var_2.d), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 1u), 1u, var_2.d, ~1u)), vec4<u32>(~firstLeadingBit(4294967295u), u_input.a.x, var_2.d, func_6(~arg_2, Struct_1(0i, var_2.b, var_2.c, u_input.a.x)).a)), _wgslsmith_mult_i32(var_2.a, 1i) != -2147483647i, _wgslsmith_mult_i32(~u_input.b.x, 0i));
    var var_3 = u_input.a.x;
    return func_6(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(25264i, 0i, 1i)) >> (~firstLeadingBit(u_input.a) % vec3<u32>(32u)), (-arg_1 >> (_wgslsmith_mult_vec3_u32(vec3<u32>(23466u, 95344u, 41583u), vec3<u32>(u_input.a.x, 1u, 18066u)) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.d, 8343u, u_input.a.x), u_input.a, vec3<u32>(u_input.a.x, 0u, u_input.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_2.d, var_2.d), vec3<u32>(var_2.d, var_2.d, 52803u))) % vec3<u32>(32u))), Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(2147483647i, var_1)), arg_1.yy), u_input.b.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(func_5(Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(var_2.d, 31u)], var_2.c, 5929u), vec4<u32>(0u, u_input.a.x, var_2.d, 15361u), false, 50397i).d), u_input.a.x), 31u)], var_2.c, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(vec2<bool>(true & func_1(vec3<bool>(true, true, true), _wgslsmith_add_vec3_i32(u_input.c.zwy, u_input.c.xyw), vec3<i32>(u_input.b.x, 25189i, u_input.c.x) & u_input.c.wyw), select(!all(vec3<bool>(false, true, true)), func_5(Struct_1(27778i, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], vec4<bool>(true, true, true, false), 1u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u), false, max(1i, u_input.b.x)).c.x, any(vec4<bool>(true, true, true, true)))), _wgslsmith_mod_vec3_i32(~(~countOneBits(vec3<i32>(u_input.c.x, 0i, u_input.b.x))), ~max(max(u_input.c.wzx, u_input.c.zxy), -vec3<i32>(u_input.c.x, 24794i, -1i))), select(abs(u_input.c.x), abs(2147483647i), func_5(func_4(vec4<u32>(1u, 33663u, 1u, 0u), Struct_2(u_input.a.x), func_5(Struct_1(-1i, -369f, vec4<bool>(true, false, true, true), u_input.a.x), vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x), true, 3649i), vec2<i32>(1i, -2147483647i) | u_input.c.xx), countOneBits(vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), true, ~(u_input.c.x & u_input.c.x)).c.x));
    var_0 = func_3(firstLeadingBit(~(~vec4<u32>(20561u, 29642u, 4294967295u, u_input.a.x)) & vec4<u32>(~7731u, 1u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), _wgslsmith_div_u32(var_0.a, 0u))));
    var var_1 = func_5(func_5(func_4(vec4<u32>(u_input.a.x, 0u, 42789u, var_0.a) << (_wgslsmith_add_vec4_u32(vec4<u32>(68008u, u_input.a.x, var_0.a, var_0.a), vec4<u32>(0u, u_input.a.x, 26236u, u_input.a.x)) % vec4<u32>(32u)), Struct_2(min(var_0.a, u_input.a.x)), Struct_1(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-2147483647i, -29309i)), global0[_wgslsmith_index_u32(abs(u_input.a.x), 31u)], vec4<bool>(false, true, false, true), var_0.a >> (u_input.a.x % 32u)), vec2<i32>(-25646i, -33116i)), vec4<u32>(45877u, u_input.a.x, ~(~u_input.a.x), 0u), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), -2147483647i), vec4<u32>(_wgslsmith_mod_u32(var_0.a, _wgslsmith_sub_u32(func_7(vec2<bool>(true, false), u_input.c.wwz, -2147483647i).a, abs(4294967295u))), ~0u, u_input.a.x, var_0.a), false, min(-1i, u_input.c.x | ~(u_input.b.x | 2440i)));
    let var_2 = Struct_2(~25271u);
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 31u)] - 256f)))))));
    var_1 = func_5(func_5(Struct_1(0i, func_4(~vec4<u32>(u_input.a.x, 3615u, var_1.d, var_2.a), Struct_2(1u), func_4(vec4<u32>(59148u, var_2.a, 4294967295u, var_2.a), var_2, Struct_1(51438i, var_3, var_1.c, var_0.a), vec2<i32>(u_input.b.x, u_input.c.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b)).b, var_1.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 22735u, 1u), abs(vec4<u32>(var_0.a, 80040u, u_input.a.x, var_2.a)))), vec4<u32>(~(~0u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.a, 4294967295u, var_1.d, 63080u), vec4<u32>(u_input.a.x, 41544u, 96832u, var_2.a)), vec4<u32>(var_1.d, var_0.a, var_2.a, 17201u)), 38047u, ~(~var_0.a)), false, var_1.a), min(vec4<u32>(abs(_wgslsmith_clamp_u32(var_1.d, 74230u, 4316u)), max(~var_2.a, ~u_input.a.x), func_6(-55392i, Struct_1(var_1.a, 2333f, var_1.c, 4294967295u)).a, u_input.a.x), abs(~(~vec4<u32>(0u, 11208u, var_1.d, var_1.d)))), !any(var_1.c.www), firstLeadingBit(~_wgslsmith_div_i32(countOneBits(2147483647i), firstLeadingBit(39424i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(443f))), max(min(-_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, u_input.c), vec4<i32>(-var_1.a, var_1.a, select(var_1.a, -1i, var_1.c.x), -19192i)), -countOneBits(firstLeadingBit(u_input.c))), i32(-1i) * -7216i, ~12821u);
}

