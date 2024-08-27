struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = vec3<f32>(arg_0.b.c, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.c), _wgslsmith_f_op_f32(-arg_0.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.c))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(-1353f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(565f, arg_0.a.a.c)) - _wgslsmith_f_op_f32(var_0.x * 567f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1524f * 2031f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.c), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-arg_0.b.c)))))));
    global0 = array<Struct_1, 8>();
    var var_1 = ~arg_0.b.d;
    var_1 = 1u;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(var_0.x * var_0.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.b.c, var_0.x)))))));
}

fn func_2(arg_0: bool) -> u32 {
    global0 = array<Struct_1, 8>();
    let var_0 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 8u)], Struct_1(vec4<bool>(false, arg_0, all(vec4<bool>(true, arg_0, false, arg_0)), !arg_0), all(!vec4<bool>(arg_0, false, arg_0, arg_0)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 8u)], Struct_1(vec4<bool>(true, arg_0, true, true), false, 1566f, u_input.a)), global0[_wgslsmith_index_u32(0u, 8u)], u_input.d.zx, vec4<i32>(u_input.c, -1i, 2147483647i, -66500i)))), 56574u)), Struct_1(!(!(!vec4<bool>(arg_0, arg_0, arg_0, false))), any(select(vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), arg_0), false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(1286f - 708f))), -1614f)), ~(79241u >> (~u_input.a % 32u))), -select(u_input.b.yx, -(~u_input.d.zy), false), firstLeadingBit(vec4<i32>(u_input.d.x, u_input.d.x, firstTrailingBit(u_input.d.x), -47407i >> (~u_input.a % 32u))));
    var var_1 = Struct_3(var_0.a, var_0.b, -u_input.b.zy, vec4<i32>(8643i, 0i, -24132i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.b), vec4<i32>(12017i, u_input.c, 27933i, u_input.b.x)), _wgslsmith_add_i32(38570i & u_input.c, 2147483647i))));
    let var_2 = -var_0.c.x;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b.c - var_1.a.a.c), -656f);
    return ~u_input.a;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c, arg_2.c, arg_0, arg_0) + vec4<f32>(728f, -383f, 1313f, 1592f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_2.c, arg_2.c, 200f), vec4<f32>(-1927f, 263f, arg_2.c, arg_2.c))), all(arg_2.a.yx))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(floor(285f)), _wgslsmith_f_op_f32(floor(1136f)), _wgslsmith_f_op_f32(299f * arg_0)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_2.c, arg_0, arg_2.c), vec4<f32>(arg_0, arg_2.c, arg_0, -1764f)))))));
    var var_1 = any(select(vec3<bool>(false, true, false), arg_2.a.yyy, arg_2.b));
    let var_2 = Struct_3(Struct_2(Struct_1(select(select(vec4<bool>(arg_2.b, arg_2.a.x, arg_2.a.x, arg_2.b), vec4<bool>(arg_2.a.x, false, true, false), arg_2.a.x), !arg_2.a, any(arg_2.a.yx)), false, arg_2.c, _wgslsmith_clamp_u32(~1u, 4294967295u >> (u_input.a % 32u), ~u_input.a)), arg_2), Struct_1(!select(select(vec4<bool>(arg_2.b, arg_2.a.x, arg_2.b, true), arg_2.a, arg_2.a), select(arg_2.a, vec4<bool>(arg_2.a.x, false, true, arg_2.b), true), select(arg_2.a, vec4<bool>(arg_2.b, false, arg_2.a.x, arg_2.a.x), arg_2.a)), all(select(select(arg_2.a.yy, vec2<bool>(false, true), arg_2.a.zx), vec2<bool>(arg_2.b, false), !arg_2.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), 4294967295u), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, 1i, arg_1, u_input.c), vec4<i32>(14852i, 48961i, 84944i, 1i)), _wgslsmith_add_vec4_i32(u_input.b, u_input.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_1 >> (arg_2.d % 32u), -u_input.d.x, ~(-1i)), u_input.b)), ~abs(abs(u_input.b)) >> (((~vec4<u32>(arg_2.d, 4294967295u, arg_2.d, arg_2.d) & countOneBits(vec4<u32>(u_input.a, 3338u, 4294967295u, 1u))) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_2.d, u_input.a, 85759u), vec4<u32>(42867u, 4294967295u, 159922u, arg_2.d))) % vec4<u32>(32u)));
    let var_3 = ~u_input.b.x << (arg_2.d % 32u);
    var var_4 = vec4<bool>(var_2.b.b, var_0.x >= 1308f, true, true);
    return arg_2;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<f32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(func_4(arg_2.x, abs(_wgslsmith_dot_vec3_i32(arg_0, _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, -1i, u_input.d.x), arg_0))), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, func_2(arg_1)), 8u)]), global0[_wgslsmith_index_u32(u_input.a, 8u)]);
    let var_1 = ~(var_0.a.d ^ max(1u, arg_3.x));
    var var_2 = Struct_3(var_0, Struct_1(vec4<bool>(any(vec4<bool>(false, false, arg_1, true)), func_4(_wgslsmith_f_op_f32(-arg_2.x), u_input.d.x, func_4(-1814f, -2147483647i, Struct_1(var_0.b.a, true, arg_2.x, 7004u))).b, select(arg_0.x >= u_input.c, false, var_0.b.b), arg_1), any(func_4(_wgslsmith_f_op_f32(var_0.a.c * -1071f), 2147483647i, var_0.a).a), _wgslsmith_div_f32(_wgslsmith_div_f32(1181f, -907f), 1f), ~_wgslsmith_mult_u32(~var_1, 1u)), vec2<i32>(u_input.b.x, -_wgslsmith_sub_i32(u_input.c, -1i) & 1i), vec4<i32>(2147483647i, u_input.b.x, firstLeadingBit(_wgslsmith_mult_i32(1548i, arg_0.x)), _wgslsmith_mod_i32(1i, ~47343i)) >> (~vec4<u32>(4294967295u, var_0.b.d, firstTrailingBit(var_0.b.d), _wgslsmith_mod_u32(var_1, 4294967295u)) % vec4<u32>(32u)));
    var_2 = Struct_3(Struct_2(func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_2.b.c, var_0.a.c)))), u_input.c, global0[_wgslsmith_index_u32(reverseBits(u_input.a ^ 4294967295u), 8u)]), global0[_wgslsmith_index_u32(arg_3.x ^ 1u, 8u)]), Struct_1(!vec4<bool>(true, true, true, 147929u < var_2.b.d), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_2.c.x, 543i), vec3<i32>(-47451i, -18300i, arg_0.x))) <= 21840i, _wgslsmith_f_op_f32(step(var_0.a.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1668f, -1373f)))))), ~reverseBits(abs(4294967295u))), firstTrailingBit(~u_input.d.xx & max(vec2<i32>(1i, -5165i), vec2<i32>(u_input.b.x, var_2.c.x))), ~var_2.d);
    global0 = array<Struct_1, 8>();
    return func_4(-1357f, var_2.d.x, func_4(-261f, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-25618i, 1i, u_input.c, -6388i), vec4<i32>(33331i, arg_0.x, arg_0.x, u_input.c))), func_4(_wgslsmith_div_f32(arg_2.x, var_2.b.c), -2372i, Struct_1(!vec4<bool>(var_0.b.a.x, var_0.a.b, arg_1, arg_1), func_4(-121f, 38007i, Struct_1(vec4<bool>(arg_1, var_0.b.b, false, false), arg_1, -209f, var_2.b.d)).a.x, _wgslsmith_f_op_f32(abs(664f)), var_0.a.d | u_input.a))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(step(1339f, 2051f)) > _wgslsmith_f_op_f32(1322f * 170f), arg_1.a.b, all(!(!arg_2.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_1.a.c)))) < _wgslsmith_f_op_f32(-695f * _wgslsmith_div_f32(680f, 594f))), arg_1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1539f * arg_2.c))))), arg_1.b.d & arg_1.a.d);
    let var_1 = func_1((vec3<i32>(-1i) * -select(vec3<i32>(-14135i, -3566i, 9308i), vec3<i32>(-5089i, arg_0, arg_0), arg_1.b.a.www)) ^ ~vec3<i32>(i32(-1i) * -1i, 28647i, abs(u_input.c)), !(!arg_2.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, arg_1.b.c, -1438f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c, -599f, arg_2.c) - vec3<f32>(-161f, -852f, arg_2.c)))) - vec3<f32>(_wgslsmith_f_op_f32(min(arg_2.c, _wgslsmith_f_op_f32(649f * arg_2.c))), -203f, 246f)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(8728u, u_input.a), _wgslsmith_add_u32(arg_1.b.d, 79107u), 15441u, u_input.a), ~(vec4<u32>(48116u, 0u, arg_2.d, 1u) | vec4<u32>(1782u, u_input.a, var_0.d, arg_2.d))), 35226u, _wgslsmith_dot_vec4_u32(~min(vec4<u32>(arg_1.a.d, 39375u, 0u, arg_2.d), vec4<u32>(20261u, var_0.d, arg_2.d, 0u)), vec4<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.d, 4294967295u, var_0.d, 0u), vec4<u32>(var_0.d, var_0.d, arg_1.b.d, arg_1.a.d)), _wgslsmith_add_u32(4294967295u, 0u), ~8016u))));
    global0 = array<Struct_1, 8>();
    var_0 = func_4(var_0.c, arg_0, func_4(var_1.c, 2147483647i, var_1));
    var var_2 = arg_1.b.b;
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2.a.zwx;
    var_0 = !(!(!vec3<bool>(false, true, func_1(u_input.b.xyz, var_0.x, vec3<f32>(arg_1.b.c, arg_2.c, -2178f), vec3<u32>(arg_2.d, arg_0.a.d, arg_2.d)).b)));
    var_0 = !arg_0.a.a.zxx;
    var var_1 = Struct_3(arg_0, arg_0.b, countOneBits(u_input.d.zx), firstLeadingBit(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.c, -37789i, 1i, u_input.c), vec4<i32>(u_input.c, -24780i, u_input.c, 0i), vec4<bool>(var_0.x, false, false, true)), u_input.b)));
    var var_2 = arg_2.c;
    return 1490f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    let var_0 = _wgslsmith_f_op_f32(func_6(func_5(u_input.b.x, Struct_2(func_1(u_input.b.yzz, false, vec3<f32>(-1332f, 268f, -1163f), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), func_1(u_input.b.xyy | u_input.d, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(940f, 203f, -166f)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(0u, u_input.a, 36980u)))), Struct_1(select(vec4<bool>(true, true, true, true), func_4(1227f, 0i, global0[_wgslsmith_index_u32(30441u, 8u)]).a, vec4<bool>(false, false, true, true)), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1746f), _wgslsmith_f_op_f32(max(-657f, 1000f))), u_input.a)), func_5(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c, 1i), u_input.b.x ^ -26047i) & 42405i, func_5(firstLeadingBit(max(u_input.c, u_input.c)), func_5(u_input.c, func_5(-23766i, Struct_2(global0[_wgslsmith_index_u32(u_input.a, 8u)], Struct_1(vec4<bool>(false, true, false, true), true, 444f, u_input.a)), Struct_1(vec4<bool>(false, true, false, true), true, -1000f, 92586u)), global0[_wgslsmith_index_u32(~1u, 8u)]), Struct_1(vec4<bool>(true, true, true, true), true, _wgslsmith_f_op_f32(select(-1842f, -1289f, false)), 1u)), Struct_1(vec4<bool>(false, true, func_5(u_input.d.x, Struct_2(global0[_wgslsmith_index_u32(0u, 8u)], Struct_1(vec4<bool>(true, true, false, true), true, -972f, 1u)), global0[_wgslsmith_index_u32(4294967295u, 8u)]).b.b, any(vec3<bool>(true, false, false))), true, _wgslsmith_f_op_f32(round(380f)), 60450u)), func_4(-836f, u_input.b.x, func_1(select(countOneBits(vec3<i32>(-557i, 13381i, -10530i)), -u_input.d, true), false, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 637f, 1000f))), ~vec3<u32>(u_input.a, u_input.a, 4352u) & select(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a), vec3<bool>(false, true, true))))));
    var var_1 = -54327i;
    let var_2 = !func_4(_wgslsmith_f_op_f32(ceil(var_0)), -abs(-u_input.b.x), Struct_1(func_1(vec3<i32>(-32954i, 1i, u_input.c), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)), vec3<u32>(29485u, u_input.a, 4294967295u) ^ vec3<u32>(4294967295u, u_input.a, u_input.a)).a, !all(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 - var_0), var_0)), 4294967295u)).a.xwx;
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2354f, 1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2544f, 1840f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, 635f), vec2<f32>(var_0, -1261f)))), var_2.xz)))));
    let var_4 = u_input.b.xxz;
    let var_5 = u_input.b;
    var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(i32(-1i) * -5690i, -u_input.c)), select(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(var_5.x, var_5.x)), u_input.d.xz), -vec2<i32>(-23757i, var_5.x), select(vec2<bool>(false, true), func_4(var_3.x, u_input.b.x, Struct_1(vec4<bool>(var_2.x, var_2.x, var_2.x, true), var_2.x, var_3.x, 71282u)).a.zx, select(var_2.xz, var_2.zz, true)))), var_5.xx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, var_0, var_0))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, var_0)))))), 4294967295u, ~(~reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, u_input.a, u_input.a))));
}

