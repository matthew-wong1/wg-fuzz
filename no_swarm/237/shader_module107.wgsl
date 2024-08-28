struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<f32>) -> f32 {
    global0 = array<Struct_2, 18>();
    let var_0 = ~abs(~vec3<u32>(~18665u, u_input.b << (u_input.c.x % 32u), u_input.c.x));
    var var_1 = vec4<u32>(0u, u_input.c.x, ~(~u_input.b), u_input.b);
    var var_2 = ~_wgslsmith_mult_i32(~arg_0, abs(5895i));
    let var_3 = u_input.c;
    return _wgslsmith_f_op_f32(arg_2.x * arg_2.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    var var_0 = vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(~1u, arg_2), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.d, 4294967295u, 1u), vec3<u32>(32765u, u_input.c.x, global1.d))), ~_wgslsmith_mult_u32(arg_2, u_input.c.x), u_input.c.x, 1u);
    let var_1 = select(!vec4<bool>(true || all(vec3<bool>(true, true, false)), false, true, true), !(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), true)), vec4<bool>(any(vec2<bool>(true, all(vec2<bool>(true, true)))), true, any(vec2<bool>(true, all(vec2<bool>(true, false)))), !(abs(2147483647i) > -arg_0.x)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.x * arg_3.x)));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_2 {
    global0 = array<Struct_2, 18>();
    let var_0 = global0[_wgslsmith_index_u32(~global1.a, 18u)];
    var var_1 = Struct_3(vec4<u32>(var_0.c.d, ~u_input.b, var_0.b.d, firstLeadingBit(1u)) | vec4<u32>(0u, _wgslsmith_mod_u32(select(1u, 75430u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global1.b, 4294967295u), vec3<u32>(0u, u_input.c.x, u_input.b))), 1u, ~abs(4294967295u)), i32(-1i) * -arg_1, !any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), vec4<f32>(_wgslsmith_f_op_f32(-547f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1210f), -1728f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.x)) - -299f), -1389f, 120f), vec3<f32>(-1065f, _wgslsmith_f_op_f32(func_4(max(firstTrailingBit(vec3<i32>(u_input.a.x, -2147483647i, arg_0)), _wgslsmith_mod_vec3_i32(vec3<i32>(32231i, u_input.d.x, arg_0), vec3<i32>(59885i, -61100i, -1i))), Struct_1(66727u, select(var_0.c.b, 8800u, true), vec3<f32>(1381f, var_0.a, 1114f), ~1u), ~u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(floor(global1.c.x)), _wgslsmith_f_op_f32(func_3(2147483647i, vec4<bool>(false, true, false, true), vec4<f32>(-361f, 875f, -644f, -149f))), _wgslsmith_f_op_f32(global1.c.x + var_0.b.c.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -360f))))));
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x, !vec4<bool>(var_1.c, false, var_1.c, var_1.c), vec4<f32>(var_0.c.c.x, global1.c.x, -695f, 1000f))) * -862f), _wgslsmith_f_op_f32(-var_0.b.c.x)), var_0.b, Struct_1(_wgslsmith_mult_u32(~u_input.c.x, ~(var_1.a.x >> (47912u % 32u))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(26506u, 4294967295u), vec2<u32>(0u, global1.d)) << (23858u % 32u), reverseBits(u_input.c.x)), global1.c, _wgslsmith_mod_u32(var_0.b.b, 13706u)));
    var var_3 = Struct_3(select(~firstLeadingBit(select(var_1.a, vec4<u32>(var_1.a.x, 1u, 1u, 3549u), vec4<bool>(var_1.c, false, var_1.c, true))), _wgslsmith_mult_vec4_u32(var_1.a, _wgslsmith_div_vec4_u32(~var_1.a, ~var_1.a)), all(vec4<bool>(var_1.c, true, any(vec4<bool>(false, var_1.c, var_1.c, false)), var_1.b != var_1.b))), 1i, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.d, vec4<f32>(-1173f, var_2.c.c.x, var_0.c.c.x, -1992f), var_1.c)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b.c.x, var_2.b.c.x, -1024f, -473f), var_1.d))) * _wgslsmith_f_op_vec4_f32(exp2(var_1.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1735f, -168f, 1000f)) - vec3<f32>(var_0.c.c.x, -718f, global1.c.x)))));
    return Struct_2(-499f, var_0.c, Struct_1(_wgslsmith_mult_u32(0u, firstLeadingBit(countOneBits(47180u))), countOneBits(firstTrailingBit(_wgslsmith_dot_vec3_u32(var_3.a.xzy, var_3.a.zyz))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - var_1.e.x) - _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.e.x - var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) - 800f)), var_1.a.x));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = u_input.d.x;
    global0 = array<Struct_2, 18>();
    let var_1 = func_2(-16177i, -_wgslsmith_mult_i32(-u_input.d.x, u_input.a.x));
    global1 = Struct_1(0u, 55251u, vec3<f32>(2078f, -2221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), 4229u & abs(global1.d));
    var var_2 = reverseBits(vec4<i32>(firstTrailingBit(~arg_0.b), u_input.a.x, ~arg_0.b, arg_0.b >> (~31649u % 32u)));
    return func_2(_wgslsmith_sub_i32(-1i, ~select(select(-55489i, 34188i, false), -var_2.x, false)), var_2.x);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = min(~(~arg_2.c.a), func_1(Struct_3(~vec4<u32>(54455u, arg_1.c.a, arg_1.c.b, u_input.b), _wgslsmith_sub_i32(u_input.a.x, -44065i), arg_3.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 396f, 443f, arg_1.b.c.x))), vec3<f32>(arg_2.c.c.x, -1147f, 1000f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.c.x, -330f, 1313f, 1000f))), Struct_2(arg_1.c.c.x, func_1(Struct_3(vec4<u32>(arg_0, 10344u, arg_2.b.a, arg_2.b.d), 43610i, true, vec4<f32>(1014f, arg_1.c.c.x, arg_1.a, global1.c.x), vec3<f32>(global1.c.x, -1000f, 669f)), vec4<f32>(arg_1.c.c.x, 1834f, -564f, 1672f), Struct_2(global1.c.x, arg_1.b, Struct_1(arg_0, arg_1.c.a, vec3<f32>(-1714f, 112f, arg_1.b.c.x), 36016u))).b, Struct_1(global1.d, 1u, vec3<f32>(-1140f, -514f, 163f), 0u))).c.b) >> (min(1u, global1.b) % 32u);
    global0 = array<Struct_2, 18>();
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -432f), _wgslsmith_f_op_f32(step(global1.c.x, -2516f)), _wgslsmith_f_op_f32(-1000f * global1.c.x)))))));
    global1 = Struct_1(~arg_1.c.d, _wgslsmith_add_u32(1u, u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1646f, -1337f, 692f))) + var_1)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(5516u, _wgslsmith_mult_u32(14410u, arg_2.c.a) << (~u_input.c.x % 32u)), _wgslsmith_mult_u32(u_input.b, 1u)));
    var var_2 = _wgslsmith_f_op_f32(exp2(func_1(Struct_3(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(24057u, arg_1.c.a, global1.b, 0u)), ~vec4<u32>(arg_0, arg_2.c.a, 1u, 1u)), firstTrailingBit(firstTrailingBit(u_input.a.x)), true && arg_3.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.c.x, arg_1.a, 347f, -534f) - vec4<f32>(1379f, -1551f, -1000f, 1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.c.x, var_1.x, arg_2.a) + vec3<f32>(1076f, arg_2.b.c.x, arg_1.b.c.x)), _wgslsmith_f_op_vec3_f32(global1.c * var_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_1.x, arg_1.c.c.x)), _wgslsmith_f_op_f32(abs(var_1.x)), -1576f, 523f)), func_2(u_input.a.x, i32(-1i) * -u_input.a.x)).a));
    return Struct_3(vec4<u32>(4507u, var_0, ~_wgslsmith_mod_u32(41889u, 4294967295u), _wgslsmith_add_u32(countOneBits(~4294967295u), u_input.b)), -_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(-23152i, u_input.d.x), u_input.a)), true, vec4<f32>(1869f, 755f, _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a.x, u_input.d.x, 992i), ~vec3<i32>(u_input.a.x, u_input.a.x, -1i)), func_1(Struct_3(vec4<u32>(4294967295u, global1.a, 4294967295u, 1u), -16016i, arg_3.x, vec4<f32>(var_1.x, -613f, 472f, arg_1.c.c.x), vec3<f32>(2218f, 2531f, -2086f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-3190f, global1.c.x, -483f, -1000f), vec4<f32>(-1211f, var_1.x, arg_2.a, arg_2.a))), global0[_wgslsmith_index_u32(arg_1.c.b, 18u)]).b, arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.c.x, -1427f, 1316f)))), _wgslsmith_div_f32(arg_1.b.c.x, _wgslsmith_f_op_f32(f32(-1f) * -322f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.b.c - arg_2.b.c) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.c.c) * _wgslsmith_f_op_vec3_f32(-global1.c))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.c.x + arg_2.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * var_1.x)), 1176f))));
}

fn func_6(arg_0: Struct_3) -> vec2<bool> {
    global1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_sub_u32(max(1u << (1u % 32u), arg_0.a.x), 4294967295u), firstTrailingBit(~u_input.b) ^ ~_wgslsmith_dot_vec4_u32(arg_0.a, arg_0.a)), u_input.c.x, global1.c, u_input.b);
    global1 = Struct_1(1u, abs(global1.a), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1638f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global1.c.x, global1.c.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), arg_0.d.x, abs(u_input.a.x) <= _wgslsmith_div_i32(-4617i, -15852i))), -523f), ~58457u);
    var var_0 = func_2(2147483647i, arg_0.b).c;
    let var_1 = !(!arg_0.c) | arg_0.c;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(var_0.c.x - 537f), func_2(-1547i, 2147483647i).b, Struct_1(firstTrailingBit(17437u), 101967u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_0.d.www - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 1028f, -1000f))))), global1.b));
    return vec2<bool>(true, true);
}

fn func_7(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_1((func_2(-2147483647i, select(u_input.d.x, -2147483647i, true)).b.b ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, 20364u, 1u), vec3<u32>(arg_2.a, global1.a, u_input.b))) | global1.d, _wgslsmith_dot_vec4_u32(~(vec4<u32>(40323u, u_input.c.x, u_input.c.x, global1.d) >> (~vec4<u32>(u_input.c.x, 6701u, u_input.c.x, 1u) % vec4<u32>(32u))), ~(~vec4<u32>(102720u, global1.b, u_input.c.x, u_input.b))), global1.c, arg_2.d);
    let var_1 = func_2(~u_input.d.x & ~(~_wgslsmith_mult_i32(-39096i, u_input.a.x)), -(~(-1i)));
    let var_2 = func_2(-((u_input.d.x ^ _wgslsmith_div_i32(u_input.d.x, 0i)) & countOneBits(firstLeadingBit(1i))), u_input.d.x);
    global1 = Struct_1(1u, _wgslsmith_dot_vec2_u32(~(vec2<u32>(65982u, u_input.c.x) | u_input.c), ~u_input.c << (abs(vec2<u32>(74017u, u_input.c.x)) % vec2<u32>(32u))) | func_5(var_1.c.d, var_1, func_1(func_5(var_1.b.d, var_2, var_2, vec3<bool>(false, true, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-202f, arg_2.c.x, 328f, 264f) - vec4<f32>(-903f, arg_2.c.x, -102f, arg_2.c.x)), Struct_2(global1.c.x, var_1.c, Struct_1(31047u, u_input.b, arg_2.c, arg_2.b))), !(!vec3<bool>(arg_0, arg_0, arg_0))).a.x, vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.c.x), abs(1u));
    let var_3 = ~29770u;
    return var_1;
}

fn func_8(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = max(~(~(vec4<i32>(-833i, u_input.a.x, 2147483647i, -2147483647i) << (abs(vec4<u32>(1u, 4294967295u, 39903u, u_input.c.x)) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, ~u_input.d.x), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.d.x), -94146i, _wgslsmith_mult_i32(-23194i, u_input.d.x), 24021i), vec4<i32>(-u_input.d.x, 42154i, ~39531i, u_input.a.x)) & ~select(vec4<i32>(u_input.d.x, u_input.a.x, 9217i, 0i), vec4<i32>(u_input.d.x, -1i, 1i, 2147483647i) ^ vec4<i32>(u_input.d.x, u_input.a.x, -38933i, 16391i), true));
    var var_1 = func_5(36247u, func_1(func_5(u_input.b, func_2(var_0.x ^ 1i, 40934i << (u_input.c.x % 32u)), arg_1, vec3<bool>(true, global1.b > arg_1.c.d, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-764f, 547f, arg_2.x, -216f), vec4<f32>(740f, -251f, global1.c.x, 458f))) * func_5(4294967295u, arg_1, Struct_2(arg_1.c.c.x, arg_1.b, Struct_1(18586u, u_input.b, vec3<f32>(arg_2.x, arg_1.c.c.x, arg_1.a), 241u)), vec3<bool>(false, true, false)).d)), arg_1), global0[_wgslsmith_index_u32(abs(~_wgslsmith_sub_u32(reverseBits(1u), u_input.c.x)), 18u)], select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(any(vec4<bool>(false, true, true, true)), var_0.x == var_0.x, all(vec4<bool>(true, false, true, false)))), select(vec3<bool>(true, true, true), vec3<bool>(func_5(0u, arg_1, Struct_2(arg_1.b.c.x, arg_1.b, Struct_1(u_input.b, 4997u, vec3<f32>(390f, -210f, arg_1.a), 0u)), vec3<bool>(false, true, false)).c, true, true), vec3<bool>(true, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)) & true));
    var_1 = Struct_3(~(~vec4<u32>(0u, ~u_input.c.x, 49518u, arg_0.x)), var_1.b | abs(1i), -698f >= _wgslsmith_f_op_f32(round(1216f)), var_1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_2 * vec3<f32>(global1.c.x, 637f, -682f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.c.x, global1.c.x, arg_2.x) + vec3<f32>(1073f, -1624f, var_1.e.x)))), var_1.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_2)) - _wgslsmith_f_op_vec3_f32(arg_1.b.c + vec3<f32>(arg_1.a, var_1.d.x, 1790f))))));
    var var_2 = Struct_1(~select(~var_1.a.x, ~59954u, var_1.c) & _wgslsmith_mod_u32(abs(~10635u), u_input.b), ~abs(34780u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(236f, _wgslsmith_div_f32(arg_2.x, -1176f)), -983f, _wgslsmith_f_op_f32(func_2(1i, var_1.b).b.c.x + _wgslsmith_f_op_f32(arg_1.a + 1146f)))), ~(~_wgslsmith_mod_u32(arg_0.x, 12087u)));
    global1 = arg_1.b;
    return func_5(1u, Struct_2(-164f, func_7(var_1.c, select(vec2<bool>(true, var_1.c), func_6(Struct_3(vec4<u32>(13009u, 4294967295u, 7314u, var_1.a.x), 1i, false, vec4<f32>(var_1.e.x, var_2.c.x, -1476f, 600f), vec3<f32>(918f, -2527f, -889f))), var_1.c), Struct_1(40260u, ~global1.d, _wgslsmith_f_op_vec3_f32(trunc(global1.c)), 42805u)).c, func_1(Struct_3(vec4<u32>(21981u, 4294967295u, arg_1.c.d, arg_0.x), var_0.x >> (1u % 32u), !var_1.c, vec4<f32>(-591f, -401f, 1000f, var_2.c.x), _wgslsmith_f_op_vec3_f32(-var_1.d.wxy)), var_1.d, global0[_wgslsmith_index_u32(~var_2.a, 18u)]).c), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(302f, -414f)))), Struct_1(arg_1.c.d, u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2)), var_1.a.x), arg_1.b), select(select(vec3<bool>(true, true, func_5(28859u, Struct_2(-114f, Struct_1(15263u, arg_0.x, vec3<f32>(-1386f, var_2.c.x, 267f), arg_1.c.b), arg_1.c), Struct_2(2012f, arg_1.b, arg_1.c), vec3<bool>(false, var_1.c, false)).c), !(!vec3<bool>(false, var_1.c, false)), var_1.c), !select(vec3<bool>(false, var_1.c, var_1.c), vec3<bool>(var_1.c, true, false), var_1.c), vec3<bool>(false, (false | var_1.c) | var_1.c, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(_wgslsmith_sub_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 4294967295u), u_input.c)), u_input.c & vec2<u32>(27358u >> (global1.d % 32u), _wgslsmith_mod_u32(global1.d, 21926u))), func_7(all(vec2<bool>(true, true)), func_6(func_5(0u, func_1(Struct_3(vec4<u32>(1u, global1.a, global1.d, 13440u), 32405i, false, vec4<f32>(global1.c.x, -1408f, -199f, 674f), vec3<f32>(-702f, global1.c.x, -543f)), vec4<f32>(-185f, global1.c.x, global1.c.x, global1.c.x), Struct_2(510f, Struct_1(4294967295u, 47994u, global1.c, 102872u), Struct_1(1u, 0u, global1.c, global1.d))), Struct_2(global1.c.x, Struct_1(u_input.b, 0u, vec3<f32>(global1.c.x, global1.c.x, global1.c.x), global1.a), Struct_1(0u, 16412u, global1.c, u_input.c.x)), vec3<bool>(true, true, true))), Struct_1(0u, func_2(countOneBits(u_input.d.x), _wgslsmith_div_i32(6619i, -2231i)).c.b, global1.c, firstTrailingBit(1u))), global1.c);
    global0 = array<Struct_2, 18>();
    var var_1 = var_0.a;
    var var_2 = func_2(_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i << (~var_0.a.x % 32u), -(~(-53715i))), _wgslsmith_add_i32(-1i, 2147483647i)), -var_0.b);
    let var_3 = -(vec2<i32>(func_5(var_0.a.x, global0[_wgslsmith_index_u32(~27257u, 18u)], Struct_2(711f, Struct_1(4294967295u, 53975u, global1.c, 33190u), var_2.c), vec3<bool>(var_0.c, true, var_0.c)).b, abs(firstTrailingBit(u_input.a.x))) ^ vec2<i32>(_wgslsmith_div_i32(u_input.d.x, 20798i) & -51615i, _wgslsmith_add_i32(u_input.a.x, -2147483647i)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1772f) + var_2.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - func_8(u_input.c, global0[_wgslsmith_index_u32(global1.a, 18u)], vec3<f32>(var_2.c.c.x, -1261f, var_0.d.x)).e.x) + _wgslsmith_f_op_f32(var_0.e.x * func_7(var_0.c, vec2<bool>(var_0.c, true), var_2.b).c.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.x), func_8(~_wgslsmith_add_vec2_u32(var_1.wy, var_1.wy), global0[_wgslsmith_index_u32(~var_1.x, 18u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(2566f, var_2.c.c.x, var_2.c.c.x) - _wgslsmith_f_op_vec3_f32(var_0.e * vec3<f32>(var_2.a, var_2.b.c.x, 481f)))).e.x));
}

