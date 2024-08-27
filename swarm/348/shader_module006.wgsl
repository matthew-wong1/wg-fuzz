struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(41009u, 4294967295u, 0u), vec3<u32>(37306u, 28260u, 16691u), vec3<u32>(9318u, 11013u, 9734u), vec3<u32>(0u, 14075u, 1u), vec3<u32>(12741u, 0u, 1u), vec3<u32>(30051u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 7795u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    global0 = array<vec3<u32>, 7>();
    global0 = array<vec3<u32>, 7>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.c.x)), _wgslsmith_f_op_f32(max(668f, arg_0.a.c.x)))) - _wgslsmith_f_op_f32(exp2(arg_0.a.c.x)));
    global0 = array<vec3<u32>, 7>();
    let var_1 = reverseBits(~vec4<i32>(~arg_0.b.a.x, 8725i, -2147483647i, ~40729i));
    return arg_0.d.c;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec3<f32>) -> u32 {
    global0 = array<vec3<u32>, 7>();
    let var_0 = _wgslsmith_sub_vec3_i32(~(~(-vec3<i32>(1i, 1i, 1i))), _wgslsmith_div_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(63457i, -1967i, -2147483647i) >> (vec3<u32>(4294967295u, u_input.b, u_input.b) % vec3<u32>(32u)), vec3<i32>(0i, 2147483647i, 51548i)), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -2147483647i, 39426i), vec3<i32>(-37706i, -2147483647i, 2147483647i)) ^ (vec3<i32>(-1i, 0i, 0i) << (global0[_wgslsmith_index_u32(1u, 7u)] % vec3<u32>(32u))))));
    global0 = array<vec3<u32>, 7>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f + arg_3.x) - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(arg_3.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_3, vec3<f32>(_wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_f_op_f32(-159f * 705f), _wgslsmith_f_op_f32(-arg_3.x)), select(select(!arg_2, !vec3<bool>(true, arg_0.x, arg_2.x), u_input.a.x <= u_input.b), vec3<bool>(true, true, true), vec3<bool>(arg_0.x, false & arg_2.x, !arg_2.x)))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_3.x)), arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(var_0.yx, arg_2.zz, vec3<f32>(-1103f, arg_3.x, arg_3.x), 2147483647i), Struct_1(var_0.yy, vec2<bool>(arg_1, arg_1), vec3<f32>(arg_3.x, 1756f, 2045f), var_0.x), vec4<u32>(u_input.b, 1u, u_input.b, 1u), Struct_1(var_0.xz, vec2<bool>(arg_0.x, false), arg_3, 0i)))).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * -208f)))));
    return _wgslsmith_mod_u32(firstTrailingBit(1545u), max(18197u, 4294967295u));
}

fn func_2() -> Struct_4 {
    var var_0 = vec4<u32>(~(~_wgslsmith_dot_vec3_u32(u_input.a >> (global0[_wgslsmith_index_u32(u_input.a.x, 7u)] % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(u_input.b, 67145u, 87383u)))), func_4(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true, !select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -367f), 756f, _wgslsmith_f_op_f32(select(1368f, 1062f, false))), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec2<i32>(2147483647i, -2147483647i), vec2<bool>(false, true), vec3<f32>(1092f, 350f, -1000f), -59127i), Struct_1(vec2<i32>(1i, 2147483647i), vec2<bool>(false, true), vec3<f32>(1691f, 474f, -665f), -10651i), vec4<u32>(1u, 0u, 4580u, 17695u), Struct_1(vec2<i32>(-61828i, 0i), vec2<bool>(true, false), vec3<f32>(1333f, -1803f, 1805f), 46077i))))))), _wgslsmith_sub_u32(firstTrailingBit(u_input.b), _wgslsmith_dot_vec2_u32(u_input.a.xz ^ u_input.a.xx, firstLeadingBit(u_input.a.yx) >> (u_input.a.zy % vec2<u32>(32u)))), 50461u);
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(1i, 18048i)), vec2<i32>(-17461i, 32133i)), vec2<bool>(true, true), vec3<f32>(-2410f, _wgslsmith_f_op_f32(-757f * 1142f), -155f), _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, 55987i), 1i)), Struct_1(-firstTrailingBit(vec2<i32>(-1i, 56502i)), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), vec3<f32>(1f, 1f, 1410f), -_wgslsmith_mod_i32(-2147483647i, -1i)), ~(~vec4<u32>(1u, 16077u, var_0.x, var_0.x)) & firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(23341u, u_input.b, 42236u, 1u), vec4<u32>(u_input.a.x, 1u, 1u, 4294967295u))), Struct_1(-_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 0i)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 411f, -793f), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-32776i, -2147483647i), vec2<i32>(-38798i, -2147483647i)), reverseBits(14196i)))), Struct_1(vec2<i32>(1i, select(-6348i, reverseBits(0i), false)), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1498f * 336f)), _wgslsmith_f_op_f32(-646f - _wgslsmith_f_op_f32(max(1000f, -926f))), 1f), -4300i), _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(u_input.a.x, var_0.x, var_0.x)), ~(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 2111u, u_input.a.x), 7u)])), firstLeadingBit(6377u));
    let var_2 = !vec3<bool>(true, true, var_1.a.d.b.x);
    let var_3 = vec3<bool>(var_2.x, func_4(var_1.b.b, (var_2.x && false) | var_1.b.b.x, select(select(var_2, vec3<bool>(var_2.x, var_1.a.d.b.x, var_1.b.b.x), var_2.x), var_2, var_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1159f, var_1.a.b.c.x, var_1.a.d.c.x))) != _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.x, var_1.d, u_input.a.x), u_input.a.x), 0u), 60626u >= ~var_0.x);
    var_0 = vec4<u32>(min(17450u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_0.x), vec2<u32>(55080u, 43483u)))), 1u, u_input.a.x ^ ((u_input.b >> (~u_input.a.x % 32u)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(39975u, var_1.a.c.x, 4294967295u), vec3<u32>(var_0.x, 83053u, 51314u), vec3<u32>(1u, 1u, u_input.a.x)), min(vec3<u32>(0u, 4294967295u, var_1.c), var_0.wyz)) % 32u)), 1u);
    return Struct_4(var_1.b.b.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-566f, var_1.b.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -993f))))), var_1.a.a, _wgslsmith_mult_i32(var_1.a.a.a.x, var_1.b.d), Struct_3(var_1.a, var_1.b, var_0.x, 43812u));
}

fn func_1(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = func_2();
    global0 = array<vec3<u32>, 7>();
    global0 = array<vec3<u32>, 7>();
    var_0 = func_2();
    var var_1 = var_0.c.a;
    return -903f;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: f32) -> bool {
    var var_0 = -476f;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_3, -852f, 737f) + vec4<f32>(arg_0.c.x, arg_0.c.x, -963f, 1393f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(466f, 1000f, arg_0.c.x, 1308f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-181f, arg_0.c.x, arg_0.c.x, arg_3))), vec4<bool>(-1i > arg_0.a.x, true, true, true))), vec4<f32>(_wgslsmith_div_f32(1018f, -272f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1875f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x - 1373f) - 761f), _wgslsmith_f_op_f32(-arg_3)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(497f - -2205f), _wgslsmith_f_op_f32(round(-2036f)), -1336f, 1099f)))), select(select(select(select(vec4<bool>(arg_0.b.x, false, false, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x), arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), select(vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(false, true, false, true), false)), vec4<bool>(any(vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x)), !arg_0.b.x, arg_0.b.x, arg_0.b.x), true), select(select(select(vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(false, true, arg_0.b.x, false), true), vec4<bool>(false, true, arg_0.b.x, arg_0.b.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(arg_0.b.x, true, true, arg_0.b.x), !vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.b.x), select(vec4<bool>(false, false, false, arg_0.b.x), vec4<bool>(arg_0.b.x, false, arg_0.b.x, false), true)), vec4<bool>(!arg_0.b.x, func_2().c.b.x, arg_0.b.x, !arg_0.b.x)), arg_0.b.x)));
    var_0 = -1034f;
    let var_2 = ~(~min(max(countOneBits(vec4<u32>(arg_1, 4294967295u, 89412u, 4294967295u)), func_2().e.a.c), ~vec4<u32>(62760u, 0u, arg_1, u_input.a.x) ^ ~vec4<u32>(arg_1, 130007u, u_input.b, 80480u)));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1446f, var_1.x, arg_3, arg_0.c.x) - vec4<f32>(arg_0.c.x, arg_0.c.x, 1100f, var_1.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(125f, -121f, 151f, arg_3), vec4<f32>(1404f, -382f, var_1.x, 949f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.c.x, var_1.x, -194f)), vec4<f32>(-305f, var_1.x, var_1.x, -709f)), select(!vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x), select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, false, true)), vec4<bool>(false, true, true, arg_0.b.x)))))));
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~countOneBits(_wgslsmith_add_vec2_i32(min(vec2<i32>(-2147483647i, -28247i), vec2<i32>(-7013i, 1i)), vec2<i32>(-1i, -45766i))), vec2<bool>(true, !func_5(Struct_1(vec2<i32>(-48840i, 18898i), vec2<bool>(true, true), vec3<f32>(-2086f, -464f, -704f), -10777i), ~42689u, vec2<i32>(1i, -20063i), _wgslsmith_f_op_f32(func_1(u_input.b, 0i)))), _wgslsmith_f_op_vec3_f32(func_3(func_2().e.a)), -1i);
    global0 = array<vec3<u32>, 7>();
    var var_1 = func_2().c;
    let var_2 = func_2();
    var var_3 = var_0;
    var var_4 = select(abs(select(vec4<i32>(var_0.a.x, _wgslsmith_mult_i32(var_0.a.x, -1i), ~(-19553i), _wgslsmith_add_i32(var_3.d, var_0.d)), _wgslsmith_div_vec4_i32(-vec4<i32>(var_0.a.x, var_0.d, -1i, 12142i), vec4<i32>(59327i, 2147483647i, 2147483647i, var_3.d) | vec4<i32>(-599i, 20248i, -2147483647i, var_0.a.x)), !all(vec4<bool>(false, true, var_1.b.x, var_2.c.b.x)))), select(vec4<i32>(_wgslsmith_sub_i32(0i, var_1.d & var_1.d), _wgslsmith_clamp_i32(var_0.a.x, min(var_2.d, var_0.a.x), _wgslsmith_add_i32(var_0.d, var_3.d)), -1288i << (func_2().e.a.c.x % 32u), var_1.a.x | 2147483647i), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-14960i, var_1.d, var_0.a.x, var_2.d), vec4<i32>(var_3.a.x, -21101i, 2147483647i, 1i)), select(vec4<i32>(-21248i, -47621i, -56226i, -2147483647i), vec4<i32>(var_0.a.x, -46681i, -12166i, 1i), vec4<bool>(false, false, true, false))), vec4<i32>(27911i, 0i, 47925i, 1i) << (var_2.e.a.c % vec4<u32>(32u))), all(select(vec2<bool>(false, false), vec2<bool>(true, var_2.a), true == var_3.b.x))), all(select(select(vec4<bool>(false, var_1.b.x, var_0.b.x, var_2.c.b.x), vec4<bool>(true, true, true, var_2.e.b.b.x), var_2.a || var_0.b.x), !(!vec4<bool>(true, true, var_3.b.x, true)), all(select(vec4<bool>(var_2.e.b.b.x, true, false, var_2.a), vec4<bool>(false, var_2.e.b.b.x, true, var_0.b.x), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e.a.c.zz, countOneBits(select(vec4<u32>(u_input.b, u_input.a.x, firstLeadingBit(u_input.a.x), ~4294967295u), max(var_2.e.a.c, min(var_2.e.a.c, var_2.e.a.c)), all(vec3<bool>(false, false, var_0.b.x)))));
}

