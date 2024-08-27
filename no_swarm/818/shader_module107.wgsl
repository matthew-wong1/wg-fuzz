struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(1681u, 1u), vec2<u32>(67315u, 1u), vec2<u32>(47421u, 12108u), vec2<u32>(29866u, 20142u), vec2<u32>(1u, 1u), vec2<u32>(11344u, 0u), vec2<u32>(0u, 30879u), vec2<u32>(33282u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(30849u, 34348u), vec2<u32>(0u, 32315u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(26350u, 4294967295u), vec2<u32>(0u, 4294967295u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(select(all(vec3<bool>(!arg_3.a, !arg_1.x, arg_3.a)), true, false), vec4<f32>(arg_3.c.x, arg_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-835f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.b.x), 1039f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3.b.x * arg_3.c.x), _wgslsmith_f_op_f32(sign(-959f)), _wgslsmith_f_op_f32(-arg_3.c.x), arg_3.c.x))));
    return max(u_input.a, min(~_wgslsmith_clamp_u32(~40756u, arg_0.x, _wgslsmith_mult_u32(2342u, 21834u)), firstLeadingBit(_wgslsmith_clamp_u32(abs(u_input.b), arg_0.x, arg_0.x))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<f32> {
    let var_0 = Struct_1(select(false, arg_0.b.x == _wgslsmith_f_op_f32(-1000f - -2013f), true), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(326f + 1000f)), -1698f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -731f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)), arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(605f * arg_0.b.x) + _wgslsmith_f_op_f32(abs(arg_0.c.x))), _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(-582f - 1434f)), _wgslsmith_f_op_f32(f32(-1f) * -568f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x), -1251f, 1f) + arg_0.c)));
    global0 = array<vec2<u32>, 15>();
    global0 = array<vec2<u32>, 15>();
    global0 = array<vec2<u32>, 15>();
    var var_1 = select(select(vec3<bool>(false, arg_0.a, arg_0.a), !select(vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_0.a, true, var_0.a), select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, var_0.a, arg_0.a), vec3<bool>(false, false, var_0.a))), vec3<bool>(true, true, true)), vec3<bool>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(4294967295u, arg_1, 42611u)), _wgslsmith_dot_vec3_u32(vec3<u32>(47648u, u_input.b, arg_1), vec3<u32>(u_input.b, 0u, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(74674u, u_input.a), global0[_wgslsmith_index_u32(1872u, 15u)])) <= 0u, arg_0.a, true), false);
    return var_0.c;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec4<f32> {
    var var_0 = Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1448f, 1231f, -1038f, 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-402f, -373f, -1000f, 180f), vec4<f32>(687f, -809f, -1069f, 393f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-523f, 1104f, -2360f, 1296f) - vec4<f32>(-570f, 345f, -122f, -439f)))) * _wgslsmith_f_op_vec4_f32(func_4(Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-215f, -342f, 1037f, -341f) + vec4<f32>(-639f, 470f, -1000f, 1107f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1832f, -733f, 617f, -1549f) - vec4<f32>(700f, 1396f, 1040f, 1000f))), func_3(vec2<u32>(4294967295u, arg_0.x), vec3<bool>(true, true, true), _wgslsmith_mult_u32(4294967295u, arg_0.x), Struct_1(false, vec4<f32>(-141f, -198f, -1313f, -1128f), vec4<f32>(920f, 990f, 1872f, 1000f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(816f, 1299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -965f) + _wgslsmith_f_op_f32(f32(-1f) * -384f)), _wgslsmith_f_op_f32(f32(-1f) * -217f))));
    global0 = array<vec2<u32>, 15>();
    global0 = array<vec2<u32>, 15>();
    var_0 = Struct_1(false, var_0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.x))), 228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f) + var_0.b.x), var_0.c.x) + _wgslsmith_f_op_vec4_f32(step(var_0.b, var_0.c))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), 787f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1314f)))), _wgslsmith_f_op_f32(693f * _wgslsmith_f_op_f32(var_0.b.x * -812f))), vec4<f32>(206f, _wgslsmith_f_op_f32(select(-1415f, _wgslsmith_f_op_f32(var_0.c.x * 1124f), var_0.a)), 1f, _wgslsmith_f_op_f32(-var_0.b.x))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(trunc(-1304f));
    global0 = array<vec2<u32>, 15>();
    var_0 = _wgslsmith_f_op_f32(arg_3.x + 683f);
    let var_1 = all(select(!vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, !(0u <= u_input.a)), vec2<bool>(true, arg_2.a)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-131f * -467f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(396f * -699f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + arg_3.x) + arg_2.c.x) - 630f) - _wgslsmith_f_op_f32(arg_3.x + 198f)), -1674f, -1240f);
    return arg_3.x > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1404f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -543f), -825f)))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: u32) -> vec3<f32> {
    global0 = array<vec2<u32>, 15>();
    let var_0 = ~(~(~min(global0[_wgslsmith_index_u32(arg_3, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]) | _wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4932u, arg_2.x, 99744u), 15u)], vec2<u32>(arg_2.x, arg_3))));
    let var_1 = Struct_1(func_5(arg_1, firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 16222u, 1u, 4294967295u), vec4<u32>(var_0.x, var_0.x, 31702u, var_0.x))), Struct_1(_wgslsmith_div_f32(-2017f, arg_1.b.x) > _wgslsmith_div_f32(158f, -1353f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1.b, vec4<f32>(130f, arg_0, arg_0, -397f)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.b, vec4<f32>(arg_0, arg_1.b.x, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(0u, arg_2.x, 4294967295u), vec2<u32>(arg_3, 27182u))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1509f, arg_0, arg_1.b.x)))), arg_1.c, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(26263u, 1u, arg_3), var_0)).x - _wgslsmith_div_f32(278f, arg_1.c.x)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_0)), 1023f, _wgslsmith_f_op_f32(abs(arg_1.c.x))))));
    global0 = array<vec2<u32>, 15>();
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.x), arg_0, true));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -663f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(24219u, 26129u, 24933u), vec2<u32>(16932u, u_input.a))).x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(ceil(var_2))));
}

fn func_6(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<i32> {
    global0 = array<vec2<u32>, 15>();
    global0 = array<vec2<u32>, 15>();
    var var_0 = Struct_1(arg_2.a, arg_2.c, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(true, arg_2.c, arg_2.c), u_input.a))))))));
    let var_1 = _wgslsmith_f_op_f32(-arg_2.b.x);
    let var_2 = ~global0[_wgslsmith_index_u32((_wgslsmith_mod_u32(1u, ~u_input.b) ^ _wgslsmith_add_u32(5217u, 3794u)) ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), global0[_wgslsmith_index_u32(4294967295u, 15u)])), 0u, _wgslsmith_mod_u32(~13061u, 10354u)), 15u)];
    return vec4<i32>(~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-58386i, -17970i, 127i), vec3<i32>(-17524i, 0i, -2147483647i)), 0i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(3064i, -2147483647i)) << (vec2<u32>(4294967295u, var_2.x) % vec2<u32>(32u))), firstTrailingBit(~1i) >> (_wgslsmith_dot_vec2_u32(var_2, ~vec2<u32>(39780u, 30091u)) % 32u)), _wgslsmith_clamp_i32(0i, -2147483647i, countOneBits(max(0i, -51142i))), i32(-1i) * -86091i);
}

fn func_7(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> f32 {
    var var_0 = Struct_1((u_input.a & _wgslsmith_dot_vec3_u32(vec3<u32>(101882u, u_input.b, 4294967295u), vec3<u32>(0u, arg_1.x, 0u))) == 30101u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(480f, -1034f, 917f, _wgslsmith_f_op_f32(max(614f, -1771f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_2.x)), 2260f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))), -949f) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_2 * arg_2)))));
    var_0 = Struct_1(!all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(true, arg_2, vec4<f32>(1469f, var_0.b.x, 266f, arg_2.x)), 4294967295u)).x), arg_2.x, 1472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(arg_1.x, 12143u, arg_1.x), arg_1.zx)).x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 - vec4<f32>(-2140f, var_0.b.x, var_0.b.x, -872f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(!var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-501f, var_0.c.x, -726f, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1484f, arg_2.x, 775f, var_0.b.x))), 4294967295u)))));
    var var_1 = Struct_1(var_0.a & false, vec4<f32>(arg_2.x, -1032f, _wgslsmith_f_op_f32(sign(arg_2.x)), arg_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-520f - arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-526f, -1000f, false))), _wgslsmith_f_op_vec4_f32(func_2(reverseBits(arg_1.wyw), countOneBits(vec2<u32>(arg_1.x, 8500u)))).x)));
    var_0 = Struct_1(any(select(vec4<bool>(false, var_1.a, var_0.a, func_5(Struct_1(false, vec4<f32>(-134f, 155f, 2176f, arg_2.x), var_1.c), vec4<u32>(0u, arg_1.x, 1u, 0u), Struct_1(true, vec4<f32>(-623f, -622f, 373f, var_1.c.x), vec4<f32>(var_0.c.x, var_1.b.x, var_1.b.x, var_0.c.x)), vec3<f32>(-1070f, var_0.c.x, arg_2.x))), select(vec4<bool>(var_1.a, false, var_1.a, true), vec4<bool>(false, var_1.a, true, true), all(vec3<bool>(false, var_0.a, var_0.a))), vec4<bool>(true, arg_1.x != 4294967295u, var_1.a & var_1.a, !var_0.a))), vec4<f32>(239f, _wgslsmith_f_op_f32(-940f - -816f), arg_2.x, -770f), _wgslsmith_f_op_vec4_f32(select(var_0.b, vec4<f32>(arg_2.x, var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - var_1.b.x) + arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-256f + -260f) - arg_2.x)), !select(select(vec4<bool>(var_1.a, var_1.a, var_1.a, true), vec4<bool>(true, var_0.a, true, false), true), vec4<bool>(true, var_0.a, false, var_1.a), var_1.a))));
    var var_2 = all(vec3<bool>(true, true, !var_1.a));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(365f, 1044f, -380f, 2379f))), _wgslsmith_div_vec4_f32(vec4<f32>(-951f, 415f, -1544f, -212f), vec4<f32>(2995f, 105f, -1613f, -316f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(262f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1761f - -431f) * -331f), _wgslsmith_f_op_f32(1140f - _wgslsmith_div_f32(-1172f, 683f)), 1f)));
    global0 = array<vec2<u32>, 15>();
    global0 = array<vec2<u32>, 15>();
    global0 = array<vec2<u32>, 15>();
    var var_1 = _wgslsmith_f_op_f32(func_7(func_6(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1283f + 398f), -1472f)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(var_0.b.x, var_0, global0[_wgslsmith_index_u32(1u, 15u)], u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.b.x, var_0.b.x) - vec3<f32>(2168f, 1153f, 508f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.c.xww, vec3<f32>(-595f, 107f, var_0.c.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x) * var_0.b.xww))), Struct_1(!var_0.a & (true == var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2896f, -1089f, var_0.c.x, var_0.b.x) * var_0.c) + _wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(u_input.a, u_input.a, 33821u), vec2<u32>(u_input.a, 35195u)))), var_0.b)), firstTrailingBit(max(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 4294967295u, 1u, u_input.b), vec4<u32>(u_input.a, u_input.b, 73293u, 122881u)), countOneBits(vec4<u32>(u_input.b, u_input.b, 11818u, 4294967295u) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, 50387u)))), _wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, -1528f, 273f, var_0.b.x), vec4<f32>(523f, -221f, var_0.b.x, var_0.c.x)) - _wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(var_0.b.x, var_0.b.x, 269f, var_0.b.x))))));
    var var_2 = Struct_1(var_0.a, var_0.b, var_0.c);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_2.c.x)), _wgslsmith_f_op_f32(1508f + 1f))) + var_0.c.x);
    var var_3 = select(vec4<bool>(false, !var_2.a, !(!any(vec3<bool>(var_2.a, var_2.a, var_2.a))), var_0.a), select(select(!select(vec4<bool>(var_0.a, var_2.a, var_0.a, var_0.a), vec4<bool>(true, true, var_2.a, true), vec4<bool>(var_2.a, var_2.a, false, false)), vec4<bool>(!var_0.a, !var_0.a, true, true || var_2.a), var_0.a), select(select(select(vec4<bool>(false, var_2.a, var_0.a, false), vec4<bool>(true, false, true, var_2.a), var_2.a), select(vec4<bool>(true, var_2.a, var_0.a, true), vec4<bool>(false, false, var_0.a, false), var_0.a), select(vec4<bool>(var_2.a, var_0.a, true, var_0.a), vec4<bool>(var_2.a, var_0.a, false, var_2.a), vec4<bool>(var_2.a, var_0.a, true, true))), !vec4<bool>(var_2.a, true, true, var_2.a), vec4<bool>(true, true, true, !var_2.a)), select(!(!vec4<bool>(true, var_2.a, true, true)), vec4<bool>(true, true, true, true), false)), vec4<bool>(func_5(var_0, vec4<u32>(u_input.a, u_input.b, 30332u, _wgslsmith_div_u32(u_input.a, 8460u)), Struct_1(true, var_0.b, _wgslsmith_f_op_vec4_f32(sign(var_2.b))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.c.x, var_0.c.x, -1909f), vec3<f32>(var_0.b.x, var_0.b.x, 1140f)))), !var_2.a, any(select(select(vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(false, true, true), var_2.a), vec3<bool>(true, true, true), !vec3<bool>(true, var_0.a, true))), var_2.a != all(select(vec4<bool>(var_0.a, false, true, var_2.a), vec4<bool>(true, false, var_2.a, var_0.a), vec4<bool>(false, false, false, false)))));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b.zyy + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(false, vec4<f32>(551f, -377f, 1000f, var_2.c.x), var_0.c), u_input.b)).zyw * var_0.c.xww)), var_2.c.xxw);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-_wgslsmith_add_i32(9795i, -2147483647i), ~1i, -(i32(-1i) * -14684i)), countOneBits(countOneBits(abs(select(vec4<i32>(29190i, 15079i, 0i, 2147483647i), vec4<i32>(18788i, -1175i, 13568i, -51139i), var_3.x)))));
}

