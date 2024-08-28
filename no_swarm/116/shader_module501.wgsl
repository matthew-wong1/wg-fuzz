struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: vec3<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = arg_2.b;
    global1 = vec3<i32>(~abs(-2147483647i), arg_0.x ^ -54897i, 26390i) & vec3<i32>(-26437i, ~reverseBits(_wgslsmith_add_i32(arg_2.a, 0i)), u_input.a.x);
    var var_1 = Struct_4(vec3<bool>(select(arg_2.b | arg_2.b, any(vec2<bool>(true, false)), true), false, false), arg_2.a, _wgslsmith_div_i32(reverseBits((i32(-1i) * -18749i) ^ ~arg_0.x), 0i), Struct_1(max(~u_input.a.x, -16816i), !all(vec3<bool>(false, arg_2.b, true)), ~(~vec2<u32>(arg_2.c.x, arg_2.c.x)), firstLeadingBit(arg_2.d), _wgslsmith_div_vec3_f32(arg_2.e, _wgslsmith_f_op_vec3_f32(-arg_2.e))));
    var var_2 = any(var_1.a.zz);
    var var_3 = vec3<u32>(~1u, 4294967295u, 0u) | firstTrailingBit(vec3<u32>(min(select(0u, arg_2.c.x, true), ~4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(19346u, 1u), vec2<u32>(0u, var_1.d.c.x)), ~4294967295u & arg_1));
    return !(!select(var_1.a.xy, !select(vec2<bool>(var_0, arg_2.b), var_1.a.zy, global0[_wgslsmith_index_u32(0u, 11u)]), vec2<bool>(arg_2.b, all(var_1.a))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec4<bool>) -> vec3<i32> {
    global1 = vec3<i32>(-firstLeadingBit(_wgslsmith_mult_i32(firstTrailingBit(global1.x), 0i)), global1.x, -u_input.a.x);
    var var_0 = arg_0 && (any(arg_3.xww) | (_wgslsmith_dot_vec3_u32(vec3<u32>(22233u, arg_1, 1u), vec3<u32>(arg_1, arg_1, 1u)) > firstTrailingBit(_wgslsmith_mult_u32(7556u, 46076u))));
    var_0 = select(!all(arg_3.zy), global0[_wgslsmith_index_u32(arg_1, 11u)], all(select(vec2<bool>(!arg_0, true), func_3(vec2<i32>(-2147483647i, 2147483647i), 1264u << (arg_1 % 32u), Struct_1(u_input.a.x, true, vec2<u32>(4294967295u, 1u), vec3<i32>(2147483647i, 0i, 6211i), vec3<f32>(1440f, 1000f, 1661f))), select(!vec2<bool>(arg_3.x, false), vec2<bool>(arg_3.x, arg_3.x), true))));
    var var_1 = arg_3;
    global0 = array<bool, 11>();
    return countOneBits(vec3<i32>(-1i) * -(~(-vec3<i32>(u_input.a.x, global1.x, 2147483647i))));
}

fn func_1(arg_0: f32) -> u32 {
    global1 = abs(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, -39785i), global1.x, global1.x), func_2(false, 0u, 473f, vec4<bool>(global0[_wgslsmith_index_u32(48861u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], false, true)) | (vec3<i32>(1i, u_input.a.x, -2147483647i) ^ vec3<i32>(2147483647i, u_input.a.x, 19687i))) | _wgslsmith_clamp_vec3_i32(vec3<i32>(min(global1.x, u_input.a.x), _wgslsmith_div_i32(u_input.a.x, global1.x), func_2(global0[_wgslsmith_index_u32(24972u, 11u)], 30923u, arg_0, vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(0u, 11u)])).x), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, 29404i, 27112i), _wgslsmith_div_i32(-34342i, global1.x), 16715i), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, 5290i, -29392i), vec3<i32>(0i, u_input.a.x, 2147483647i)), -vec3<i32>(2147483647i, 36244i, -25852i))));
    global0 = array<bool, 11>();
    let var_0 = true | global0[_wgslsmith_index_u32(firstTrailingBit(~(~(~0u))), 11u)];
    let var_1 = Struct_3(Struct_1(_wgslsmith_add_i32(~(~u_input.a.x), -_wgslsmith_mult_i32(u_input.a.x, -62950i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(-11045i, u_input.a.x), 1i) > ~(global1.x ^ u_input.a.x), _wgslsmith_add_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(25721u, 1065u), vec2<u32>(25041u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u), !vec2<bool>(global0[_wgslsmith_index_u32(31365u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)])), ~vec2<u32>(45961u, 62767u)), -(~abs(vec3<i32>(u_input.a.x, u_input.a.x, global1.x))), vec3<f32>(_wgslsmith_div_f32(arg_0, arg_0), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 899f) - arg_0))), Struct_1(~53904i, false, ~(~vec2<u32>(59164u, 10293u)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), -vec3<i32>(global1.x, -1i, -57671i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -252f, 941f) * vec3<f32>(-1571f, arg_0, 1374f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(834f, 175f, 1987f) * vec3<f32>(arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1753f, 269f) - vec3<f32>(-586f, -1098f, arg_0)), true)), vec3<f32>(arg_0, -785f, -2276f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-666f, arg_0, arg_0), vec3<f32>(arg_0, arg_0, 621f))))))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, 27440u, 1u, 0u), select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(11760u, 41423u, 14737u, 0u), all(vec2<bool>(true, var_0))), firstLeadingBit(~vec4<u32>(0u, 43504u, 1u, 4083u))), arg_0);
    global0 = array<bool, 11>();
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = min(abs(vec3<i32>(37280i, global1.x, 8375i) >> (vec3<u32>(22076u, 0u, 0u) % vec3<u32>(32u))) ^ ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, global1.x, 0i), vec3<i32>(u_input.a.x, -40274i, 17510i)), ~vec3<i32>(global1.x, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), -9057i)) << (vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(72270u, 0u), ~vec2<u32>(26546u, 0u)) >> (~(4294967295u >> (1u % 32u)) % 32u), 1u, _wgslsmith_mod_u32(0u, ~max(0u, 56290u))) % vec3<u32>(32u));
    var var_0 = select(vec2<bool>(false, !all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 11u)])) && true), vec2<bool>(true, true), vec2<bool>(any(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(30431u, 11u)], true, global0[_wgslsmith_index_u32(4294967295u, 11u)]))), global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(357f * 128f)) ^ ~(~46261u), 11u)]));
    let var_1 = Struct_4(select(vec3<bool>(false, all(func_3(global1.yy, 1u, Struct_1(85217i, global0[_wgslsmith_index_u32(4294967295u, 11u)], vec2<u32>(0u, 7891u), vec3<i32>(u_input.a.x, -2147483647i, 1i), vec3<f32>(281f, -819f, -1928f)))), countOneBits(u_input.a.x) <= abs(32001i)), vec3<bool>(false, (global0[_wgslsmith_index_u32(107478u, 11u)] & global0[_wgslsmith_index_u32(1u, 11u)]) && func_3(vec2<i32>(13212i, global1.x), 28147u, Struct_1(25047i, global0[_wgslsmith_index_u32(1u, 11u)], vec2<u32>(0u, 41149u), vec3<i32>(16088i, 23145i, u_input.a.x), vec3<f32>(-321f, 1439f, -294f))).x, true), select(vec3<bool>(any(vec4<bool>(true, false, true, var_0.x)), true, global0[_wgslsmith_index_u32(~0u, 11u)]), !vec3<bool>(false, var_0.x, global0[_wgslsmith_index_u32(39889u, 11u)]), true)), global1.x, -1i, Struct_1(u_input.a.x, any(select(vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(19343u, 11u)]), vec3<bool>(global0[_wgslsmith_index_u32(4811u, 11u)], var_0.x, true))), vec2<u32>(15731u, 40644u), (vec3<i32>(-54062i, 68212i, 2147483647i) & (vec3<i32>(-32515i, global1.x, 27807i) ^ vec3<i32>(u_input.a.x, 1i, -16674i))) >> (firstLeadingBit(vec3<u32>(9751u, 68918u, 6737u)) % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1188f))), _wgslsmith_f_op_f32(-1461f - _wgslsmith_f_op_f32(-1342f - 685f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1.d.c.x, min(var_1.d.c.x, ~44045u) << (29290u % 32u)));
}

