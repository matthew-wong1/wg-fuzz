struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

var<private> global1: array<Struct_2, 2>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    var var_0 = ~min(countOneBits(u_input.a), min(u_input.a, ~vec3<u32>(u_input.a.x, u_input.c.x, u_input.a.x)));
    global1 = array<Struct_2, 2>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(284f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-540f + 828f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-162f, -1485f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_1), 274f, _wgslsmith_f_op_f32(max(-990f, 1000f)), -1973f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(667f, var_1, 1000f, 1949f) - vec4<f32>(1000f, var_1, var_1, 1000f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-447f, var_1, 925f, -693f))), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-662f, -284f, -1252f, var_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1323f, var_1, 2646f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1829f, 190f, -869f, var_1), vec4<f32>(var_1, var_1, var_1, var_1)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(571f, var_1, 177f, 1000f), vec4<f32>(-839f, var_1, var_1, -488f)))))));
    var var_3 = Struct_5(global1[_wgslsmith_index_u32(1u, 2u)]);
    return 0u;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> i32 {
    var var_0 = !select(vec4<bool>(true || all(vec2<bool>(arg_2, arg_2)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2 & arg_2, arg_2, arg_2, arg_2), all(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2), arg_2))), arg_2);
    let var_1 = -345f;
    var var_2 = Struct_4(arg_1, ~u_input.d, min(vec2<i32>(firstLeadingBit(6169i), reverseBits(-19306i)) << (max(arg_1.e.yx, u_input.a.xy) % vec2<u32>(32u)), u_input.e.yz));
    var var_3 = _wgslsmith_f_op_f32(sign(327f));
    let var_4 = 1i;
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.xx ^ _wgslsmith_div_vec2_i32(vec2<i32>(var_2.b.x, var_4), u_input.d.zx), vec2<i32>(u_input.d.x, -2147483647i) >> ((vec2<u32>(arg_0, 4294967295u) >> (vec2<u32>(15806u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.e.x), vec2<i32>(-1i, 25190i)) >> (vec2<u32>(arg_0, ~arg_3) % vec2<u32>(32u))), -8969i, _wgslsmith_mod_i32(~(~13862i), -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_2.c.x, -1i, var_2.c.x, 0i)), ~vec4<i32>(0i, var_4, u_input.b.x, -7200i))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_5) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.d.x, -4763i, -25599i, 0i) >> (vec4<u32>(u_input.c.x, arg_1.a.e.x, arg_1.a.c.a, arg_1.a.e.x) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.d.x, u_input.d.x, u_input.b.x), !arg_0.x) << (select(arg_1.a.b, select(arg_1.a.b, vec4<u32>(0u, u_input.a.x, 64047u, 4294967295u), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), vec4<bool>(arg_0.x, false, true, false)) % vec4<u32>(32u)), abs(~(~vec4<i32>(u_input.e.x, -27058i, u_input.b.x, 2147483647i)))), vec4<i32>(func_4(1u, global1[_wgslsmith_index_u32(~1u ^ func_3(), 2u)], arg_0.x, ~1u & (4294967295u << (arg_1.a.e.x % 32u))), ~_wgslsmith_sub_i32(25160i, 20833i), u_input.b.x, func_4(arg_1.a.e.x, Struct_2(arg_1.a.a, ~vec4<u32>(84024u, 67308u, 1u, 4294967295u), arg_1.a.d, arg_1.a.d, reverseBits(vec3<u32>(1u, u_input.c.x, 0u))), arg_0.x, _wgslsmith_clamp_u32(func_3(), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 0u, arg_1.a.a.a), vec4<u32>(0u, arg_1.a.c.a, 64280u, 0u)), _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 4512u)))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~(~u_input.a.x)), arg_1.a.e.x, ~_wgslsmith_sub_u32(firstTrailingBit(9522u), u_input.a.x), ~(~u_input.c.x << (u_input.c.x % 32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32((vec4<u32>(u_input.a.x, arg_1.a.a.a, 49911u, 30112u) >> (arg_1.a.b % vec4<u32>(32u))) >> (firstLeadingBit(vec4<u32>(82583u, 24517u, 28056u, arg_1.a.d.a)) % vec4<u32>(32u)), vec4<u32>(firstTrailingBit(4294967295u), 1u, ~u_input.c.x, u_input.c.x)), arg_1.a.b)), 2u)];
    let var_2 = 0u;
    let var_3 = Struct_2(Struct_1(34809u), vec4<u32>(_wgslsmith_div_u32(16742u << (var_2 % 32u), _wgslsmith_dot_vec4_u32(arg_1.a.b, arg_1.a.b)) | ~43089u, var_1.d.a, u_input.c.x, countOneBits(reverseBits(16858u))), Struct_1(firstTrailingBit(42990u)), Struct_1(firstTrailingBit(_wgslsmith_div_u32(var_1.b.x, var_2 | 1u))), var_1.b.xwz);
    var var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1006f, _wgslsmith_f_op_f32(f32(-1f) * -724f), _wgslsmith_div_f32(912f, 382f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1650f + _wgslsmith_f_op_f32(f32(-1f) * -3342f))), 1222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))));
    return var_3.c.a;
}

fn func_5(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    global1 = array<Struct_2, 2>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(sign(arg_1))) * -804f), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)), true)), arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(604f, 499f, arg_1, -629f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, -932f, -684f, -785f)))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1, arg_1))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 * 1000f))), _wgslsmith_f_op_f32(round(-1297f)), 575f)));
    let var_1 = vec4<bool>(any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec4<bool>(true, true, false, true)), any(vec2<bool>(false, true)), true), vec4<bool>(any(vec2<bool>(false, true)), true, true, all(vec2<bool>(true, false))))), true, firstTrailingBit(8824u) <= arg_0.x, true);
    let var_2 = -43963i;
    global0 = array<Struct_3, 6>();
    return ~56176u;
}

fn func_1() -> Struct_4 {
    var var_0 = u_input.c.x;
    var var_1 = -20426i;
    var var_2 = global1[_wgslsmith_index_u32(min(func_5(vec4<u32>(func_2(vec2<bool>(false, true), Struct_5(global1[_wgslsmith_index_u32(40836u, 2u)])), ~(~26395u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(20449u, 1u, 1u)) >> (u_input.c.x % 32u), u_input.a.x), _wgslsmith_f_op_f32(601f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f) - _wgslsmith_f_op_f32(select(-525f, -1416f, false))))), ~u_input.a.x), 2u)];
    var var_3 = ~var_2.b.wy;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(380f + 1952f), -261f, -1019f, _wgslsmith_f_op_f32(floor(-1069f))))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-569f - 1000f) * _wgslsmith_f_op_f32(abs(952f))), -1000f, 544f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -110f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1930f, 768f, -268f, 431f)))));
    return Struct_4(global1[_wgslsmith_index_u32(~reverseBits(~34560u << (_wgslsmith_dot_vec4_u32(vec4<u32>(54565u, var_3.x, 0u, var_2.e.x), var_2.b) % 32u)), 2u)], vec3<i32>(u_input.b.x & u_input.e.x, reverseBits(_wgslsmith_mult_i32(43812i, u_input.d.x >> (u_input.a.x % 32u))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 0i, u_input.d.x) ^ vec4<i32>(2147483647i, -46176i, 0i, u_input.b.x), ~vec4<i32>(1i, u_input.e.x, u_input.d.x, u_input.e.x)), -310i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.e.x) | u_input.b.yy, u_input.b.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-494f, 1000f)) + _wgslsmith_f_op_f32(min(593f, 663f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-850f, 2354f), -167f, true))))) != _wgslsmith_f_op_f32(max(-258f, -376f));
    global0 = array<Struct_3, 6>();
    var var_1 = func_1();
    let var_2 = _wgslsmith_clamp_vec4_i32(abs(abs(vec4<i32>(-44514i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, -1i, -3020i, var_1.b.x), vec4<i32>(74141i, -4102i, -11023i, 2147483647i)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, -6219i, var_1.b.x), vec4<i32>(var_1.c.x, 1i, var_1.b.x, -53074i))))), vec4<i32>(abs(u_input.b.x) >> (1u % 32u), -2147483647i, -_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.d), -var_1.b), -var_1.c.x), _wgslsmith_add_vec4_i32(select(vec4<i32>(~(-36363i), abs(-18459i), var_1.c.x, 35963i), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(0i, var_1.c.x, var_1.b.x, u_input.d.x), vec4<i32>(var_1.b.x, var_1.b.x, 58608i, u_input.b.x), vec4<bool>(var_0, true, false, false)), vec4<i32>(var_1.c.x, var_1.c.x, -13203i, var_1.b.x), vec4<i32>(var_1.c.x, var_1.c.x, 119i, u_input.e.x)), !select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(true, false, true, var_0), vec4<bool>(true, false, var_0, var_0))), reverseBits((vec4<i32>(u_input.d.x, var_1.c.x, 0i, var_1.c.x) >> (vec4<u32>(var_1.a.a.a, u_input.a.x, u_input.a.x, u_input.c.x) % vec4<u32>(32u))) >> (var_1.a.b % vec4<u32>(32u)))));
    global0 = array<Struct_3, 6>();
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(552f + 1662f) * _wgslsmith_f_op_f32(-339f - 1007f)), 711f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(-114f, 1209f, true)), _wgslsmith_f_op_f32(990f * -142f), _wgslsmith_f_op_f32(f32(-1f) * -529f)), vec3<f32>(_wgslsmith_f_op_f32(-598f + -514f), _wgslsmith_f_op_f32(f32(-1f) * -1378f), _wgslsmith_f_op_f32(min(-2538f, -675f))), var_0)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-532f, var_3.x, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(~var_1.b.x ^ -1i, 34047i), max(u_input.a, ~vec3<u32>(53947u, 715u, var_1.a.a.a)), _wgslsmith_clamp_i32(~_wgslsmith_add_i32(~9669i, 1i), _wgslsmith_mod_i32(u_input.d.x, -var_1.b.x), func_4(~u_input.a.x >> (var_1.a.c.a % 32u), var_1.a, var_0, 1u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3, var_3)), _wgslsmith_f_op_vec3_f32(-var_3), !(!vec3<bool>(false, false, var_0)))))));
}

