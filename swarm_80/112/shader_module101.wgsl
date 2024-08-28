struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -11033i;

var<private> global1: Struct_3 = Struct_3(137f, Struct_2(-346f), 1000f, Struct_2(137f), Struct_2(1444f));

var<private> global2: u32;

var<private> global3: Struct_2;

var<private> global4: f32 = 1805f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_sub_i32(~max(~1i, ~57373i), u_input.c.x) >> (~(~u_input.b.x ^ _wgslsmith_div_u32(4294967295u, u_input.b.x)) % 32u);
    global0 = 1i;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-199f, global1.a), _wgslsmith_f_op_f32(abs(global3.a)))) - -230f)), global1.e, 427f, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1075f))))), Struct_2(-342f));
    var var_2 = vec3<u32>(u_input.b.x, min(countOneBits(28200u), _wgslsmith_add_u32(0u & ~u_input.b.x, u_input.b.x)), ~u_input.b.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a, _wgslsmith_f_op_f32(-global3.a)));
    return ~(~u_input.a.x);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<f32>) -> i32 {
    global0 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(~(~vec3<i32>(arg_1.b.x, u_input.c.x, u_input.c.x)), arg_1.b.yww), u_input.a.zyz);
    let var_0 = 0u;
    global3 = Struct_2(-1000f);
    let var_1 = -(arg_1.c ^ (arg_1.c >> (arg_1.a.x % 32u)));
    var var_2 = arg_1;
    return _wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_div_vec2_i32(u_input.c, firstLeadingBit(vec2<i32>(-9911i, 2147483647i) >> (~vec2<u32>(var_2.a.x, u_input.b.x) % vec2<u32>(32u)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = global1.b;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1243f, 1751f), global1.e.a)))), global1.e, 1297f, global1.e, Struct_2(-1675f));
    let var_2 = select(arg_1.a.x, _wgslsmith_add_u32(~select(~16207u, _wgslsmith_sub_u32(arg_1.a.x, 32163u), all(vec4<bool>(false, false, true, false))), reverseBits(70974u)), select(!(!all(vec2<bool>(true, true))), true, u_input.a.x < (arg_0 ^ arg_1.c)));
    var var_3 = u_input.b.x;
    var var_4 = Struct_1(arg_1.a, min(u_input.a, vec4<i32>(arg_1.c, _wgslsmith_add_i32(arg_1.b.x, func_2(vec3<f32>(var_0.a, var_0.a, var_1.a))), _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0, 21768i), _wgslsmith_dot_vec3_i32(u_input.a.zwy, arg_1.b.xww)), u_input.a.x)), arg_0, _wgslsmith_f_op_vec3_f32(arg_1.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_1.d))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(226f, var_1.c, arg_1.d.x) * arg_1.d))))));
    return Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-599f * -483f), 2181f, true)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = func_4(arg_3, Struct_1(vec4<u32>(u_input.b.x, ~(~64986u), u_input.b.x, 1u), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(arg_3, u_input.c.x)), func_2(vec3<f32>(global1.e.a, global3.a, global3.a))), _wgslsmith_add_i32(-u_input.a.x, firstTrailingBit(arg_3)), func_3(vec3<f32>(arg_2.a, -387f, 1000f), Struct_1(vec4<u32>(u_input.b.x, 36759u, 20459u, 8513u), u_input.a, 1i, vec3<f32>(global1.d.a, global1.e.a, 2424f)), _wgslsmith_f_op_f32(-global1.c), vec3<f32>(global1.c, 487f, 1245f)), abs(-arg_3)), 2147483647i >> (u_input.b.x % 32u), vec3<f32>(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(arg_1.a * 665f)), -304f, 460f)));
    let var_1 = func_4(countOneBits(_wgslsmith_dot_vec4_i32(~abs(u_input.a), vec4<i32>(u_input.a.x, arg_3, -89398i, 1i) & ~u_input.a)), Struct_1(~(~vec4<u32>(69125u, u_input.b.x, u_input.b.x, 0u)), select(~(u_input.a ^ vec4<i32>(-2147483647i, -2147483647i, 0i, u_input.c.x)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3, -11191i, 29796i, 0i), vec4<i32>(0i, 2147483647i, arg_3, u_input.a.x), u_input.a), select(select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, true, true), arg_0), !vec4<bool>(true, true, arg_0, arg_0), arg_0)), -1542i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-479f, 665f, -109f), vec3<f32>(arg_1.a, global3.a, -1220f), arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-372f, var_0.a, arg_1.a) - vec3<f32>(var_0.a, 2745f, -483f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.a, -481f, 271f), vec3<f32>(663f, arg_2.a, -460f)))))));
    global1 = Struct_3(_wgslsmith_f_op_f32(min(arg_2.a, global1.e.a)), Struct_2(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-523f, -996f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(217f, var_1.a, arg_0)))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2190f, -1050f)) * -714f))), func_4(reverseBits((u_input.a.x << (u_input.b.x % 32u)) << (~u_input.b.x % 32u)), Struct_1(vec4<u32>(min(53391u, u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, 4294967295u), 4294967295u, _wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.yz)), max(~u_input.a, vec4<i32>(-1i, u_input.a.x, 0i, u_input.a.x) >> (vec4<u32>(u_input.b.x, 77165u, u_input.b.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(537f, 1753f, 381f), vec3<f32>(global3.a, global3.a, arg_2.a), vec3<bool>(false, arg_0, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.a, 2214f, 300f) - vec3<f32>(var_1.a, -1972f, global1.b.a)))))));
    global3 = func_4(u_input.a.x, Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u) ^ min(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 26726u, u_input.b.x, 4294967295u)), countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 87543u))), ~abs(u_input.a), ~min(u_input.a.x, func_2(vec3<f32>(var_0.a, var_1.a, -1626f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-535f, global3.a, -178f))))));
    global4 = var_0.a;
    return var_1;
}

fn func_5(arg_0: Struct_3) -> f32 {
    var var_0 = ~(abs(~vec4<u32>(37564u, u_input.b.x, u_input.b.x, u_input.b.x)) | firstLeadingBit(reverseBits(vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u)))) >> (_wgslsmith_mult_vec4_u32(firstTrailingBit((vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 86232u) | vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(33380u, 0u, 7249u, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 5796u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 16202u), vec4<u32>(16242u, 25639u, u_input.b.x, u_input.b.x))) & vec4<u32>(~62747u, u_input.b.x, _wgslsmith_sub_u32(25577u, u_input.b.x), u_input.b.x)) % vec4<u32>(32u));
    let var_1 = -_wgslsmith_dot_vec4_i32(reverseBits(u_input.a) & select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -63582i), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false)), vec4<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.a.x), u_input.c.x, -4806i, 13490i) | vec4<i32>(u_input.a.x, _wgslsmith_div_i32(0i, u_input.a.x), func_3(vec3<f32>(global1.d.a, global3.a, global1.a), Struct_1(vec4<u32>(u_input.b.x, var_0.x, 88u, 37687u), vec4<i32>(-38912i, -24359i, u_input.c.x, -1i), -27409i, vec3<f32>(global1.d.a, -831f, 119f)), arg_0.d.a, vec3<f32>(arg_0.e.a, -1096f, 1002f)), 13992i));
    global1 = arg_0;
    global1 = Struct_3(global3.a, global1.e, _wgslsmith_f_op_f32(2579f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * -1032f)), global3.a)), arg_0.b, global1.d);
    global4 = -619f;
    return _wgslsmith_f_op_f32(-arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_3(-403f, func_1(true, global1.b, Struct_2(global3.a), -35547i), _wgslsmith_f_op_f32(485f + global3.a), global1.e, Struct_2(global1.a))))), Struct_2(global3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global3.a, global3.a))))))), global1.e, global1.d);
    let var_1 = u_input.c.x;
    global4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -376f)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(func_4(min(2147483647i, u_input.c.x), Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(u_input.b.x, 1u, 22105u, 21982u) % vec4<u32>(32u)), -u_input.a, 1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1844f, -1000f) - vec3<f32>(-558f, 507f, -448f)))).a)));
    let var_3 = func_1(select(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)) & true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - global3.a)), Struct_2(-216f), firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a.xw, -u_input.a.wx) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.xxz, u_input.a.yzw), abs(u_input.a.zxx))));
    var_2 = func_4(-var_1, Struct_1(~vec4<u32>(firstTrailingBit(u_input.b.x), ~1u, u_input.b.x, ~0u), u_input.a, -1i, vec3<f32>(1463f, _wgslsmith_f_op_f32(var_0.b.a + _wgslsmith_f_op_f32(func_5(Struct_3(global3.a, Struct_2(-902f), 866f, global1.b, Struct_2(-311f))))), -1756f)));
    var_2 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(1u, ~78378u)), countOneBits(u_input.b.x), _wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(1532f * -927f)), u_input.c.x, vec2<f32>(-133f, global1.b.a));
}

