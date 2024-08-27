struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-9167i, -590i, -43296i, 0i), false, vec2<u32>(112636u, 0u), i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_add_u32(32863u, ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(100061u, 51117u), u_input.b), ~global1.c.x & firstTrailingBit(4294967295u)));
    let var_1 = vec4<bool>(select(any(vec2<bool>(global1.b, global1.b)), global1.b, false) != !(global1.b && any(vec3<bool>(true, true, global1.b))), all(vec2<bool>(all(vec3<bool>(false, global1.b, global1.b)), !(!global1.b))), !global1.b, true);
    var var_2 = var_1.zw;
    var var_3 = all(var_1);
    let var_4 = ~_wgslsmith_mod_vec2_i32(-max(~vec2<i32>(94096i, u_input.a), abs(vec2<i32>(0i, -18314i))), ~countOneBits(~vec2<i32>(global1.d, u_input.d)));
    return global1.c;
}

fn func_2() -> bool {
    global0 = array<vec4<bool>, 10>();
    var var_0 = _wgslsmith_mult_i32(u_input.a, 3499i) | abs(_wgslsmith_sub_i32(-14784i, ~(-38432i)));
    let var_1 = _wgslsmith_mod_vec4_i32(global1.a, vec4<i32>(~(-3138i), -2147483647i, ~2147483647i, 2147483647i));
    var var_2 = ~1u;
    global1 = Struct_1(vec4<i32>(-1i, var_1.x, var_1.x, ~var_1.x), true, ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(func_3(), ~vec2<u32>(4294967295u, 17412u)), min(global1.c | u_input.b, _wgslsmith_sub_vec2_u32(vec2<u32>(global1.c.x, 1u), global1.c))), u_input.a);
    return any(global0[_wgslsmith_index_u32(1u, 10u)]);
}

fn func_1() -> vec2<u32> {
    var var_0 = all(!vec4<bool>(func_2(), global1.b || all(global0[_wgslsmith_index_u32(global1.c.x, 10u)]), !(global1.b | false), global1.b));
    global1 = Struct_1(~vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(22976i, u_input.d), global1.a.zy), global1.a.x, u_input.d, 1i), any(select(vec2<bool>(true, true), select(!vec2<bool>(false, global1.b), select(vec2<bool>(global1.b, false), vec2<bool>(false, global1.b), vec2<bool>(global1.b, true)), true), !select(vec2<bool>(true, global1.b), vec2<bool>(false, global1.b), vec2<bool>(global1.b, false)))), reverseBits(u_input.b), ~(~0i << (reverseBits(_wgslsmith_sub_u32(0u, global1.c.x)) % 32u)));
    var var_1 = !(global1.b != true);
    var var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(max(max(global1.a, vec4<i32>(0i, global1.a.x, u_input.d, -12798i)), vec4<i32>(u_input.d, u_input.d, -2147483647i, -47515i)), select(~global1.a, vec4<i32>(-29181i, global1.a.x, global1.a.x, u_input.a), all(vec2<bool>(global1.b, global1.b))), vec4<i32>(1i, ~14203i, max(66410i, global1.a.x), ~u_input.d)) ^ firstTrailingBit(_wgslsmith_clamp_vec4_i32(-global1.a, ~vec4<i32>(u_input.a, -13416i, global1.a.x, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, global1.a.x, 2147483647i), vec4<i32>(44149i, u_input.a, u_input.a, -53003i)))), func_2(), abs(global1.c), firstLeadingBit(-35742i));
    var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(global1.a, select(global1.a, _wgslsmith_mod_vec4_i32(global1.a, var_2.a), !global0[_wgslsmith_index_u32(abs(4294967295u), 10u)]), global1.a), (var_2.b | all(select(vec3<bool>(true, global1.b, true), vec3<bool>(false, global1.b, var_2.b), global1.b))) & any(!vec3<bool>(false, var_2.b, var_2.b)), u_input.b, _wgslsmith_div_i32(~(~_wgslsmith_add_i32(u_input.d, global1.d)), var_2.a.x));
    return _wgslsmith_div_vec2_u32(min(_wgslsmith_sub_vec2_u32(~global1.c, ~u_input.b), vec2<u32>(~var_2.c.x, global1.c.x)), global1.c) << (~_wgslsmith_div_vec2_u32(vec2<u32>(global1.c.x, global1.c.x) >> (~vec2<u32>(85u, var_2.c.x) % vec2<u32>(32u)), select(~vec2<u32>(4294967295u, global1.c.x), abs(vec2<u32>(4294967295u, 31809u)), var_2.b)) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    global1 = Struct_1(global1.a, func_2(), vec2<u32>(18177u, abs(global1.c.x)), u_input.d);
    var var_0 = any(!select(select(global0[_wgslsmith_index_u32(4294967295u, 10u)], !global0[_wgslsmith_index_u32(27452u, 10u)], global1.b), !vec4<bool>(true, global1.b, false, true), global1.b));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~(~arg_0.x), 1u), u_input.c, _wgslsmith_mult_u32(~_wgslsmith_add_u32(arg_0.x, arg_0.x), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 0u, global1.c.x), vec3<u32>(arg_0.x, arg_0.x, global1.c.x))))), 10u)];
    let var_2 = _wgslsmith_f_op_f32(-arg_1);
    var var_3 = Struct_1(-(~global1.a | vec4<i32>(u_input.a, ~u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, 21333i, 1700i), vec4<i32>(u_input.a, 1i, global1.d, -67450i)), select(global1.a.x, 44560i, false))), false, (_wgslsmith_clamp_vec2_u32(~u_input.b, ~arg_0, _wgslsmith_add_vec2_u32(vec2<u32>(global1.c.x, 0u), vec2<u32>(u_input.e, u_input.e))) & u_input.b) << (vec2<u32>(~global1.c.x, arg_0.x) % vec2<u32>(32u)), _wgslsmith_div_i32(global1.d, u_input.d << (~u_input.b.x % 32u)));
    return Struct_1(vec4<i32>(-1i, -34828i, ~1i, reverseBits(-1420i | (var_3.a.x << (1559u % 32u)))), false, vec2<u32>(41463u, ~10469u), var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(func_1(), _wgslsmith_f_op_f32(1f + -601f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-662f, 1408f, -1140f))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(187f))) == -423f;
    var var_1 = u_input.b;
    let var_2 = func_4(global1.c | ~func_3(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1263f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1583f) + _wgslsmith_f_op_f32(f32(-1f) * -473f)) + _wgslsmith_f_op_f32(f32(-1f) * -447f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -344f), -1842f, _wgslsmith_f_op_f32(ceil(400f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-795f, -465f, -1330f), vec3<f32>(101f, 1180f, 1081f)) - vec3<f32>(854f, 1287f, 621f)))));
    let var_3 = func_4(vec2<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global1.c, u_input.b, u_input.b), u_input.b), firstLeadingBit(func_3().x) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_1.x, var_1.x), vec3<u32>(0u, 21037u, var_1.x))), -402f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(199f, 1495f, false))) * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1033f), -1000f));
    var var_4 = func_4(~(vec2<u32>(_wgslsmith_mod_u32(var_1.x, 1u), global1.c.x) | ~(~vec2<u32>(u_input.c, var_3.c.x))), 1f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1652f, 866f, 571f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -549f, 1117f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-339f, -157f, -1000f), vec3<f32>(-805f, -688f, -241f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(453f, -1086f, 2096f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-923f, -1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-463f * 1074f), -1294f, global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1452f) + _wgslsmith_f_op_f32(trunc(-677f))))));
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(723f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(248f + -1382f) - _wgslsmith_f_op_f32(f32(-1f) * -2408f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -844f))), -1039f))), -325f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(4294967295u, 1u, 0u) | abs(vec3<u32>(1u, 0u, u_input.c))) & ~vec3<u32>(func_3().x, u_input.e, ~4294967295u), func_3().x >> (~4294967295u % 32u), ~var_3.d, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_5.x + _wgslsmith_div_f32(-922f, var_5.x))))));
}

