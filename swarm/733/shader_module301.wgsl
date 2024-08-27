struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(3420f, 3254f, 135f);

var<private> global1: u32 = 1u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = firstLeadingBit(i32(-1i) * -50760i);
    let var_1 = countOneBits(~(~(~abs(vec4<u32>(11774u, 1411u, 9671u, 4294967295u)))));
    global1 = 61133u;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1678f, 866f, -1098f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1135f, -994f, global0.x)))), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(false, true, false)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-364f, 1440f, 932f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(979f, global0.x, -360f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, 485f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1020f, 1529f, -424f))))));
    global1 = ~countOneBits(4294967295u);
    return global0.x;
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    global1 = ~4294967295u;
    global1 = 1u;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(-1398f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(398f))))), _wgslsmith_f_op_f32(func_3(i32(-1i) * -40582i)));
    var var_0 = Struct_4((((u_input.a.x ^ arg_0.a) | -arg_0.a) ^ ((i32(-1i) * -1i) & min(-1i, u_input.b))) <= _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.yy) ^ ~(-10722i), 12465i, 1i), true, vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, u_input.b), vec2<i32>(-33373i, arg_0.a)) >> (arg_0.b.b % 32u), -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-323i, u_input.b, 17324i, u_input.b), u_input.a, vec4<i32>(u_input.b, arg_0.a, 0i, u_input.b)), u_input.a)), vec2<f32>(arg_0.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)))), Struct_3(_wgslsmith_mult_vec3_i32(reverseBits(u_input.a.zxz) | min(u_input.a.xyw, vec3<i32>(-35571i, 9754i, 2457i)), -_wgslsmith_add_vec3_i32(u_input.a.yzx, vec3<i32>(arg_0.a, 19301i, -1i)))));
    return Struct_4(true, arg_0.c.a, vec2<i32>(1i << (firstLeadingBit(abs(arg_0.d.c)) % 32u), _wgslsmith_sub_i32(-_wgslsmith_add_i32(arg_0.a, var_0.e.a.x), ~countOneBits(2147483647i))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), 238f), var_0.e);
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2856f, global0.x, 742f, arg_0))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-548f, 388f, 1191f, arg_0) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1461f, -538f, -576f, arg_0))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1907f, arg_1.d.x, arg_1.d.x, arg_1.d.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1252f, -289f, -701f, -113f) * vec4<f32>(arg_0, -824f, var_0.x, 1116f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.d.x, arg_1.d.x, 584f, arg_1.d.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-917f, -287f, -1638f, -1352f), vec4<f32>(global0.x, global0.x, arg_1.d.x, -902f), vec4<bool>(true, arg_1.b, arg_1.a, arg_1.b))), any(vec3<bool>(false, false, false))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(Struct_2(0i, Struct_1(arg_1.a, 1u, 47830u), Struct_1(arg_1.b, 4294967295u, 0u), Struct_1(false, 131669u, 1u), var_0.x)).d.x, _wgslsmith_f_op_f32(498f + 1613f), -973f, 918f))));
    let var_1 = _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), abs(~(~abs(vec2<u32>(13306u, 60028u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, -1106f, 209f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -2798f, 454f) * vec3<f32>(global0.x, -804f, global0.x))) + var_0.xyz)));
    var var_3 = abs(-arg_1.e.a);
    return Struct_1(any(select(vec3<bool>(var_1 >= 1u, arg_1.b, true), vec3<bool>(var_1 > 95597u, arg_1.b, select(false, false, arg_1.a)), vec3<bool>(arg_1.a, true, arg_1.a))), ~6626u, var_1);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4) -> vec4<u32> {
    var var_0 = -u_input.b;
    var var_1 = all(vec3<bool>(true, arg_0.a, !arg_0.a));
    let var_2 = func_4(_wgslsmith_f_op_f32(select(-1151f, _wgslsmith_f_op_f32(func_3(arg_2.e.a.x)), arg_0.a)), Struct_4((arg_2.d.x < _wgslsmith_f_op_f32(exp2(arg_2.d.x))) | (-u_input.a.x <= _wgslsmith_add_i32(u_input.b, u_input.a.x)), arg_0.a || all(!vec4<bool>(arg_0.a, arg_2.a, false, false)), select(_wgslsmith_div_vec2_i32(arg_2.c >> (vec2<u32>(arg_0.b, arg_0.b) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, -2147483647i) ^ vec2<i32>(2147483647i, arg_2.c.x)), u_input.a.zz, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.d, global0.zx, arg_2.b))), global0.yy), Struct_3(vec3<i32>(-2147483647i, _wgslsmith_add_i32(5551i, 13232i), ~2147483647i))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1334f, 955f, arg_2.d.x), vec3<f32>(arg_2.d.x, arg_2.d.x, -256f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.d.x)), _wgslsmith_f_op_f32(floor(arg_2.d.x)), _wgslsmith_f_op_f32(max(arg_2.d.x, arg_2.d.x))))));
    var_1 = !(!(~arg_1.a.x < arg_2.c.x) && (_wgslsmith_clamp_u32(15557u ^ arg_0.c, _wgslsmith_mult_u32(38933u, arg_0.b), ~var_2.c) != firstLeadingBit(arg_0.c)));
    return ~firstLeadingBit((~vec4<u32>(18331u, 55557u, var_2.c, var_2.b) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c, 1u, var_2.b, var_2.b), vec4<u32>(19647u, var_2.c, 35261u, 1u)) % vec4<u32>(32u))) | ~select(vec4<u32>(1u, 1u, 27911u, 1u), vec4<u32>(0u, var_2.c, var_2.c, 0u), vec4<bool>(false, false, true, true)));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_mod_u32(firstTrailingBit(~(~1u)), 1u), 43754u);
    let var_1 = func_5(func_4(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x - 1458f) + _wgslsmith_f_op_f32(-arg_2))), func_2(Struct_2(i32(-1i) * -1i, Struct_1(arg_0, 4294967295u, 1u), Struct_1(false, 0u, 0u), Struct_1(false, 25862u, 0u), _wgslsmith_f_op_f32(arg_1.d.x - 869f)))), arg_1.e, arg_1);
    let var_2 = arg_1.d.x;
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1606f, -1354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1616f * arg_1.d.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2, -903f, arg_1.d.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-947f, global0.x, global0.x))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-309f, -1553f, 630f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, arg_1.d.x, var_2))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2378f, arg_2), global0.x)), 207f)), 569f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(335f, _wgslsmith_f_op_f32(-global0.x), arg_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * arg_1.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(359f, global0.x)) + arg_2), 878f))));
    return Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, arg_1.c.x, -2147483647i, -50060i) << (func_5(Struct_1(false, 3194u, 1u), arg_1.e, Struct_4(arg_0, true, arg_1.e.a.zx, vec2<f32>(-2598f, -1058f), Struct_3(vec3<i32>(u_input.b, arg_1.c.x, arg_1.c.x)))) % vec4<u32>(32u)), -_wgslsmith_add_vec4_i32(u_input.a, u_input.a)) == (-1i >> (reverseBits(func_4(arg_1.d.x, Struct_4(true, true, vec2<i32>(arg_1.c.x, arg_1.c.x), vec2<f32>(arg_1.d.x, var_2), Struct_3(arg_1.e.a))).b) % 32u)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(6399u), _wgslsmith_dot_vec4_u32(var_1, var_1), 0u, 7873u), reverseBits(abs(var_1)))), abs(0u));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-707f))), -780f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -133f))), -1217f)));
    let var_1 = !select(!select(!vec4<bool>(true, arg_2, arg_2, true), !vec4<bool>(arg_3.a, true, arg_0.a, false), vec4<bool>(true, arg_0.a, arg_0.a, false)), select(vec4<bool>(true, !arg_3.a, false, false), select(select(vec4<bool>(arg_0.a, true, false, false), vec4<bool>(arg_2, false, arg_2, arg_3.a), false), select(vec4<bool>(arg_2, arg_2, arg_3.a, arg_0.a), vec4<bool>(true, true, true, true), vec4<bool>(false, arg_3.a, arg_2, true)), select(vec4<bool>(false, false, false, arg_2), vec4<bool>(true, arg_3.a, arg_0.a, true), true)), (arg_1.a.x & 60292i) <= 38269i), func_4(var_0.x, Struct_4(any(vec2<bool>(true, arg_2)), any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), u_input.a.wy | arg_1.a.zx, var_0.xz, arg_1)).a);
    return vec4<u32>(abs(~4294967295u), 44682u, 1u, ~(arg_3.c | _wgslsmith_add_u32(arg_0.b, arg_3.c)) << (35737u % 32u));
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> StorageBuffer {
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 980f, 191f) + vec3<f32>(arg_0.x, 961f, -1106f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global0.x, -707f), vec3<f32>(1481f, global0.x, global0.x)))))));
    global0 = vec3<f32>(-678f, -313f, -124f);
    let var_0 = vec3<bool>(!arg_1.a, false, func_1(false, Struct_4(4294967295u <= ~arg_2.b, all(vec4<bool>(arg_1.a, arg_2.a, arg_1.a, arg_1.a)) == true, arg_3, arg_0, func_2(Struct_2(u_input.a.x, arg_2, arg_1, Struct_1(true, 5608u, arg_2.c), 874f)).e), 458f).a);
    let var_1 = Struct_3(~(-(vec3<i32>(arg_3.x, u_input.a.x, arg_3.x) ^ (u_input.a.yzw | vec3<i32>(u_input.a.x, 0i, 6351i)))));
    let var_2 = func_2(Struct_2(arg_3.x, arg_2, arg_2, func_4(1f, Struct_4(true, !arg_2.a, -arg_3, _wgslsmith_f_op_vec2_f32(-global0.xy), func_2(Struct_2(u_input.b, Struct_1(var_0.x, 0u, 80573u), arg_1, arg_1, arg_0.x)).e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-209f)))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, 557f, 193f, arg_0.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, arg_0.x, global0.x, arg_0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(sign(-2723f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1u;
    global1 = 4294967295u;
    let x = u_input.a;
    s_output = func_7(vec2<f32>(_wgslsmith_f_op_f32(862f * 484f), _wgslsmith_f_op_f32(-global0.x)), Struct_1(!(!all(vec2<bool>(true, false))), ~96580u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), func_6(Struct_1(true, 16392u, 0u), Struct_3(u_input.a.zxy), true, func_1(false, Struct_4(true, false, u_input.a.wy, vec2<f32>(global0.x, global0.x), Struct_3(vec3<i32>(u_input.a.x, 14016i, -13901i))), global0.x)))), func_4(global0.x, Struct_4(func_1(func_2(Struct_2(u_input.b, Struct_1(false, 27687u, 46054u), Struct_1(false, 1u, 119u), Struct_1(true, 0u, 0u), global0.x)).a, func_2(Struct_2(u_input.a.x, Struct_1(false, 4294967295u, 0u), Struct_1(false, 1u, 40662u), Struct_1(false, 1u, 0u), global0.x)), -864f).a, func_1(true, Struct_4(true, true, vec2<i32>(1i, u_input.a.x), global0.yz, Struct_3(u_input.a.yyx)), _wgslsmith_f_op_f32(global0.x * -1430f)).a, -vec2<i32>(u_input.a.x, u_input.a.x) & (vec2<i32>(-1i, u_input.a.x) >> (vec2<u32>(1u, 64232u) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-1223f + global0.x), _wgslsmith_f_op_f32(1168f * 1247f)), Struct_3(_wgslsmith_mod_vec3_i32(u_input.a.wxz, u_input.a.wxy)))), u_input.a.yy);
}

