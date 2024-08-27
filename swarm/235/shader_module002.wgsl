struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: f32 = 1164f;

var<private> global1: vec3<i32>;

var<private> global2: array<f32, 15>;

var<private> global3: Struct_2 = Struct_2(vec2<f32>(-1048f, -2607f), vec3<f32>(-1363f, 1094f, -796f), vec2<f32>(-1185f, -162f), i32(-2147483648), Struct_1(false, vec4<u32>(0u, 1u, 0u, 71127u), -36360i));

var<private> global4: vec4<f32> = vec4<f32>(2311f, 881f, 300f, -1000f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = global3.e;
    global3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1132f - _wgslsmith_div_f32(global3.c.x, 618f)) * _wgslsmith_f_op_f32(ceil(-1071f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1939f + global3.a.x), 548f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_f32(global3.b.x - 555f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1613f, global2[_wgslsmith_index_u32(u_input.b.x, 15u)], var_0.a))))), _wgslsmith_f_op_f32(-274f + 1634f)), vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 15u)] + _wgslsmith_div_f32(413f, -1000f)), _wgslsmith_f_op_f32(848f - _wgslsmith_f_op_f32(floor(-675f)))), 0i, Struct_1(true, ~(~(~vec4<u32>(35663u, 1u, u_input.a, global3.e.b.x))), 0i));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(~(vec3<u32>(var_0.b.x, global3.e.b.x, 46145u) | vec3<u32>(var_0.b.x, var_0.b.x, 31402u)), max(_wgslsmith_sub_vec3_u32(vec3<u32>(98316u, var_0.b.x, global3.e.b.x), var_0.b.wyx), firstLeadingBit(vec3<u32>(u_input.a, var_0.b.x, global3.e.b.x)))), firstTrailingBit(_wgslsmith_clamp_u32(global3.e.b.x, 4294967295u, 32888u)), 63329u), _wgslsmith_div_vec4_u32(global3.e.b, abs(_wgslsmith_clamp_vec4_u32(~global3.e.b, _wgslsmith_sub_vec4_u32(global3.e.b, var_0.b), firstTrailingBit(var_0.b)))));
    var var_2 = Struct_1(global3.e.b.x > _wgslsmith_sub_u32(~(~55499u), 1u), abs(vec4<u32>(~(~u_input.b.x), u_input.a, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_1.x, var_0.b.x, global3.e.b.x), countOneBits(var_1.x)), 1u)), global1.x);
    global2 = array<f32, 15>();
    return global4.x;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global3.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(func_3(all(select(vec4<bool>(false, global3.e.a, global3.e.a, true), vec4<bool>(false, global3.e.a, global3.e.a, global3.e.a), vec4<bool>(false, false, global3.e.a, global3.e.a)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1000f) - vec2<f32>(var_0.x, 1124f))))));
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, global3.c.x, 749f, global2[_wgslsmith_index_u32(u_input.b.x, 15u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -333f, 1251f, 1484f))) + vec4<f32>(-147f, 1449f, _wgslsmith_f_op_f32(min(-2227f, var_1.x)), _wgslsmith_div_f32(var_1.x, var_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) * var_1.x))), _wgslsmith_div_f32(-107f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(global3.c.x - 1152f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-417f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(723f, 1184f))))));
    let var_2 = 4294967295u;
    global3 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(global3.b.xz, vec2<f32>(1666f, -457f))))) + global4.xz), var_0.xz, true)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global4.x), global4.x, _wgslsmith_f_op_f32(-var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(366f * global2[_wgslsmith_index_u32(global3.e.b.x, 15u)]), _wgslsmith_f_op_f32(min(1000f, -1379f)), var_0.x)))), _wgslsmith_f_op_vec2_f32(-var_0.yx), global1.x, global3.e);
    return Struct_2(global3.c, vec3<f32>(global4.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(389f, var_0.x) * _wgslsmith_f_op_f32(global3.b.x - global3.b.x)))), 232f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b.zy + vec2<f32>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)])))))), -global1.x, Struct_1(global3.e.a, vec4<u32>(_wgslsmith_mod_u32(u_input.a | u_input.a, u_input.a), u_input.a, ~(~0u), u_input.b.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2), vec2<u32>(62167u, 6071u)) % 32u)), 20540i));
}

fn func_4(arg_0: Struct_2) -> bool {
    global0 = global3.c.x;
    let var_0 = global3.e;
    let var_1 = select(min(firstLeadingBit(arg_0.e.b.yxw), ~abs(func_2().e.b.zxx)), _wgslsmith_sub_vec3_u32(select(_wgslsmith_add_vec3_u32(global3.e.b.yyw | vec3<u32>(1u, global3.e.b.x, 58005u), select(vec3<u32>(var_0.b.x, 1u, var_0.b.x), arg_0.e.b.yxy, var_0.a)), global3.e.b.zwz, global3.e.a), firstTrailingBit(~firstTrailingBit(arg_0.e.b.zxx))), vec3<bool>(global3.e.a, !global3.e.a, true));
    let var_2 = vec3<bool>(any(!select(select(vec2<bool>(arg_0.e.a, false), vec2<bool>(false, true), false), vec2<bool>(false, false), !vec2<bool>(arg_0.e.a, true))), false, false);
    let var_3 = func_2().e.b.x;
    return func_2().e.a;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    let var_0 = ~(i32(-1i) * -16595i);
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global3.b.x, 900f), vec2<f32>(global3.a.x, 1283f))));
    let var_2 = arg_1.e;
    global3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(253f * _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(ceil(-1777f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x - global2[_wgslsmith_index_u32(u_input.b.x, 15u)])))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_2.d.x, -1280f) + global4.yzy))), vec3<f32>(-486f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), arg_2.d.x), _wgslsmith_f_op_f32(-1419f + _wgslsmith_f_op_f32(-882f + 1534f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4.x, global4.x)))) - arg_2.d.zz), -63736i << (_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.e.b.x), arg_1.e.b.zx), _wgslsmith_mod_u32(4294967295u, ~5054u)) % 32u), arg_2.c);
    global0 = func_2().b.x;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, global4.x) + vec2<f32>(arg_1.a.x, 147f))))))), vec3<f32>(-143f, 2039f, -326f), _wgslsmith_f_op_vec2_f32(floor(global3.b.yz)), -(abs(-2147483647i) >> (arg_2.b % 32u)), arg_2.c);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    let var_0 = func_5(func_4(func_2()), Struct_2(_wgslsmith_f_op_vec2_f32(select(global3.a, global3.a, vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global3.b * _wgslsmith_f_op_vec3_f32(vec3<f32>(801f, global2[_wgslsmith_index_u32(4494u, 15u)], -235f) * global3.b)), global3.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global4.x, global4.x), global4.yz) * vec2<f32>(global3.c.x, 968f)), countOneBits(func_2().d), global3.e), Struct_3(vec4<u32>(~abs(u_input.b.x), u_input.b.x, _wgslsmith_dot_vec3_u32(select(global3.e.b.wwz, vec3<u32>(1800u, 6238u, global3.e.b.x), vec3<bool>(arg_0.a, true, false)), reverseBits(vec3<u32>(1u, u_input.b.x, arg_0.b.x))), 4294967295u), 0u, global3.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-432f, -663f, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]), vec4<f32>(global4.x, global4.x, 789f, -1247f)))), ~abs(~arg_0.b.x)));
    var var_1 = -_wgslsmith_sub_i32(global1.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(min(arg_1.x, 1i), -4912i), select(abs(-1i), -global1.x, true)));
    let var_2 = Struct_4(0u, -2584f, Struct_2(global4.xy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.xxz) - _wgslsmith_f_op_vec3_f32(var_0.b - vec3<f32>(1000f, 391f, 1648f))) + vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(var_0.c.x - 1836f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.b.x, 15u)]))), _wgslsmith_div_vec2_f32(global4.zx, global3.a), _wgslsmith_mult_i32(var_0.e.c, _wgslsmith_add_i32(var_0.e.c, 0i)), arg_0), true);
    var var_3 = vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, 57441i, -1i), global1.x, ((i32(-1i) * -var_2.c.e.c) | ((i32(-1i) * -1i) & _wgslsmith_div_i32(arg_1.x, 19357i))) >> (_wgslsmith_mod_u32(firstLeadingBit(u_input.a), _wgslsmith_mult_u32(firstLeadingBit(u_input.a), u_input.a)) % 32u), _wgslsmith_dot_vec3_i32(arg_1.wxy, reverseBits(_wgslsmith_add_vec3_i32(-arg_1.zyz, vec3<i32>(arg_0.c, -13424i, 8336i)))));
    var var_4 = _wgslsmith_dot_vec2_i32(global1.xz, global1.zx);
    return -2782f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_1(false, vec4<u32>(44989u, u_input.b.x, u_input.b.x, 0u), 2147483647i), vec4<i32>(global3.d, 32179i, global1.x, -27478i))))))))));
    let var_0 = Struct_3(vec4<u32>(~(~1u), ~35685u, _wgslsmith_mult_u32(34562u, func_2().e.b.x), _wgslsmith_mod_u32(firstLeadingBit(~1u), countOneBits(_wgslsmith_div_u32(4294967295u, global3.e.b.x)))), firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global3.e.b.x, u_input.b.x, 0u), ~(~global3.e.b))), func_5(any(!select(vec3<bool>(global3.e.a, false, global3.e.a), vec3<bool>(global3.e.a, false, global3.e.a), vec3<bool>(false, global3.e.a, false))), Struct_2(global3.b.zy, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1061f, -512f, -872f) - vec3<f32>(258f, -718f, global4.x)), global3.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1237f, -1028f) * _wgslsmith_f_op_vec2_f32(-global3.b.zz)), _wgslsmith_mult_i32(global1.x & global3.d, _wgslsmith_clamp_i32(global1.x, global1.x, global3.d)), global3.e), Struct_3(global3.e.b, global3.e.b.x, global3.e, vec4<f32>(_wgslsmith_f_op_f32(814f - global2[_wgslsmith_index_u32(11390u, 15u)]), global4.x, global3.c.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(31094u, 15u)])), firstTrailingBit(_wgslsmith_add_u32(1u, 21625u)))).e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1177f, global3.c.x, global4.x, global3.c.x)))) - vec4<f32>(_wgslsmith_f_op_f32(global3.c.x + _wgslsmith_f_op_f32(f32(-1f) * -133f)), -232f, global2[_wgslsmith_index_u32(1u, 15u)], global4.x)), 1u);
    global2 = array<f32, 15>();
    global4 = var_0.d;
    var var_1 = !(!vec3<bool>(global3.e.a, true, select(global3.e.a, all(vec4<bool>(var_0.c.a, false, var_0.c.a, global3.e.a)), true)));
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d - _wgslsmith_f_op_vec4_f32(var_0.d + vec4<f32>(_wgslsmith_f_op_f32(-1028f - global2[_wgslsmith_index_u32(1u, 15u)]), global2[_wgslsmith_index_u32(u_input.b.x, 15u)], -1034f, _wgslsmith_f_op_f32(-3433f * -338f)))));
    global3 = Struct_2(global4.wz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.c.x, 1373f, 585f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1424f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.ww - vec2<f32>(global2[_wgslsmith_index_u32(global3.e.b.x, 15u)], global2[_wgslsmith_index_u32(var_0.e, 15u)])))))), global3.d, func_5(var_1.x, func_5((global3.e.a && false) && var_0.c.a, func_2(), Struct_3(~var_0.a, var_0.c.b.x & 0u, var_0.c, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.d.x, 807f, 162f, -491f), vec4<f32>(1000f, var_0.d.x, global4.x, -751f))), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.e.b.x, 40611u), vec2<u32>(25147u, global3.e.b.x)))), Struct_3(global3.e.b, 12144u, var_0.c, vec4<f32>(-940f, global3.a.x, _wgslsmith_f_op_f32(floor(global4.x)), _wgslsmith_f_op_f32(global4.x + global2[_wgslsmith_index_u32(global3.e.b.x, 15u)])), countOneBits(~u_input.b.x))).e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global3.b.x, global3.a.x, true)), global2[_wgslsmith_index_u32(global3.e.b.x << (36320u % 32u), 15u)]))) - 1210f));
}

