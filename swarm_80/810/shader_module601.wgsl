struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(select(~vec4<u32>(0u, 11743u, 2100u, 26073u), ~vec4<u32>(76399u, 62874u, 28034u, 1u), vec4<bool>(true, true, true, true)), vec4<u32>(~4140u, ~13356u, 1u, 1u)) ^ ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(25085u, 1u, 1u, 14307u), vec4<u32>(75494u, 4294967295u, 9587u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 31082u, 16714u, 26687u), vec4<u32>(28235u, 8214u, 41253u, 10341u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -485f), -1378f, 2071f, _wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(182f, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-411f, arg_0.x, arg_0.x, -1452f)), true)))), _wgslsmith_dot_vec4_i32(~vec4<i32>(~2147483647i, arg_1.x, -3193i, _wgslsmith_mult_i32(-49052i, -3133i)), select(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_1.x, u_input.b, u_input.b, -16454i), ~arg_1), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, -2147483647i, -2147483647i, 16754i), arg_1), any(vec2<bool>(true, false)))), firstTrailingBit(1u), 8751u & (~select(4294967295u, 0u, false) & ~abs(0u)));
    var var_1 = Struct_1(var_0.a, var_0.b, u_input.a.x, var_0.e, var_0.e);
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.d, ~(~4294967295u)), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(59290u, 7832u), var_0.a.xx)));
    let var_3 = var_0.b;
    var var_4 = var_0;
    return var_1.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = arg_0.d;
    var_1 = firstTrailingBit((arg_2.a.x << ((abs(arg_2.d) << ((1u ^ arg_3.x) % 32u)) % 32u)) ^ (~0u >> (~arg_3.x % 32u)));
    var_1 = firstLeadingBit(_wgslsmith_mod_u32(~(arg_3.x >> (~arg_3.x % 32u)), _wgslsmith_dot_vec4_u32(arg_2.a ^ vec4<u32>(arg_2.d, arg_3.x, 26521u, arg_2.a.x), vec4<u32>(1u, ~arg_0.d, ~arg_3.x, ~19285u))));
    var var_2 = firstLeadingBit(vec2<u32>(arg_2.d, abs(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.a.x, arg_3.x), firstLeadingBit(48592u), ~arg_2.a.x))));
    return Struct_1(~(select(min(arg_3, arg_2.a), ~vec4<u32>(24471u, 14124u, arg_3.x, 1u), vec4<bool>(true, true, true, false)) & firstTrailingBit(~vec4<u32>(arg_0.d, arg_0.d, 13925u, 4294967295u))), vec4<f32>(-791f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(arg_2.b.zwx + _wgslsmith_f_op_vec3_f32(-arg_2.b.zyz)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, -1i, -2147483647i, -2147483647i), ~vec4<i32>(-2147483647i, arg_1, arg_2.c, 0i)))), arg_2.b.x, _wgslsmith_f_op_f32(-arg_2.b.x)), firstLeadingBit(u_input.a.x), abs(~(_wgslsmith_div_u32(arg_0.a.x, arg_2.e) ^ 30066u)), _wgslsmith_div_u32(1u, countOneBits(1u) & _wgslsmith_sub_u32(var_2.x, arg_3.x >> (10028u % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~select(arg_1.c, i32(-1i) * -2147483647i, any(vec3<bool>(false, true, true))), ~firstTrailingBit(-13240i), arg_2.c, firstTrailingBit(arg_0.c) >> (~1u % 32u)), vec4<i32>(firstTrailingBit(45333i), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1i) * -vec3<i32>(0i, arg_2.c, u_input.a.x)), _wgslsmith_sub_i32(0i, 49333i & arg_1.c), -_wgslsmith_mod_i32(arg_1.c, func_2(Struct_1(vec4<u32>(arg_2.d, 14161u, arg_0.e, 30041u), vec4<f32>(arg_0.b.x, arg_1.b.x, -272f, arg_1.b.x), u_input.b, 4294967295u, 0u), arg_0.c, arg_3, vec4<u32>(arg_1.d, 4294967295u, 1u, 1u)).c)));
    var_0 = _wgslsmith_mult_i32(arg_2.c, 1802i);
    var_0 = min(1i, countOneBits(1i));
    var var_1 = _wgslsmith_add_u32(select(_wgslsmith_add_u32(arg_2.a.x, 14074u), _wgslsmith_clamp_u32(arg_3.d, ~arg_1.d << (~arg_0.a.x % 32u), 113716u), select(true, true, any(vec4<bool>(true, false, true, true)) && select(true, false, true))), _wgslsmith_dot_vec2_u32(firstLeadingBit(select(vec2<u32>(arg_0.d, 26736u), arg_0.a.wz << (arg_1.a.ww % vec2<u32>(32u)), false)), vec2<u32>(~0u, min(~arg_2.a.x, ~49312u))));
    var var_2 = u_input.a;
    return Struct_1(vec4<u32>(arg_3.e, select(~arg_1.a.x, countOneBits(arg_0.e | 1u), true), arg_3.e, ~16285u), _wgslsmith_f_op_vec4_f32(arg_3.b + vec4<f32>(arg_2.b.x, arg_3.b.x, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(func_3(arg_2.b.wwx, vec4<i32>(arg_2.c, 2147483647i, arg_0.c, -27846i) ^ vec4<i32>(u_input.a.x, u_input.a.x, -20584i, arg_2.c))))), arg_3.c, 14220u, 4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -816f;
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, arg_0.b.x <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -368f)))), !(!((arg_0.b.x < 1000f) | all(vec4<bool>(false, true, true, false)))));
    var_0 = select(vec4<bool>(true, any(!(!vec4<bool>(var_0.x, var_0.x, true, false))), var_0.x, ~(arg_0.d & 75308u) < _wgslsmith_mod_u32(min(arg_0.e, arg_0.e), 17784u)), !vec4<bool>(true, var_0.x, false, false), false);
    var var_1 = ~arg_0.a.wz;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-912f, 1580f))))));
    let var_3 = select(vec2<bool>(false, false), var_0.wx, vec2<bool>(1u >= _wgslsmith_mod_u32(var_1.x & 1u, 4294967295u), true));
    return 4633i;
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = ~vec3<u32>(~1u, ~_wgslsmith_add_u32(1u, ~1u), ~(61989u >> (1u % 32u)));
    let var_1 = Struct_1(vec4<u32>(var_0.x, var_0.x, _wgslsmith_mod_u32(firstTrailingBit(44932u), ~_wgslsmith_div_u32(21401u, var_0.x)), abs(15794u)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1770f, 590f)), 846f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2031f - 152f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-164f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1498f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(818f)) - _wgslsmith_f_op_f32(f32(-1f) * -727f))), -269f), func_6(func_5(Struct_1(vec4<u32>(4684u, 92100u, var_0.x, 1u) | vec4<u32>(11311u, 0u, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2217f, 1163f, 1528f, 1000f)), u_input.a.x, 72871u, ~var_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(-25775i, 0i, u_input.a.x, -1i), min(vec4<i32>(0i, -6163i, u_input.a.x, 2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), func_4(Struct_1(vec4<u32>(0u, 22454u, var_0.x, 17879u), vec4<f32>(-207f, 687f, 1489f, -897f), 2147483647i, 5179u, var_0.x), func_2(Struct_1(vec4<u32>(var_0.x, var_0.x, 108767u, var_0.x), vec4<f32>(-1000f, -357f, -342f, -404f), u_input.b, var_0.x, var_0.x), u_input.a.x, Struct_1(vec4<u32>(4294967295u, 87582u, 4294967295u, var_0.x), vec4<f32>(-1083f, 233f, 796f, -114f), u_input.b, 7582u, var_0.x), vec4<u32>(var_0.x, 79767u, 1u, var_0.x)), func_2(Struct_1(vec4<u32>(0u, 30432u, var_0.x, var_0.x), vec4<f32>(3088f, 132f, -1637f, -1000f), -58957i, var_0.x, var_0.x), 29153i, Struct_1(vec4<u32>(var_0.x, 1u, var_0.x, 4294967295u), vec4<f32>(-1034f, -178f, -119f, -1031f), u_input.a.x, 0u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u)), func_2(Struct_1(vec4<u32>(92163u, 4294967295u, 7346u, var_0.x), vec4<f32>(-1355f, 1000f, 2071f, 517f), u_input.a.x, var_0.x, var_0.x), u_input.b, Struct_1(vec4<u32>(14512u, var_0.x, var_0.x, var_0.x), vec4<f32>(448f, 555f, 767f, -2445f), 2147483647i, 0u, var_0.x), vec4<u32>(32215u, 12586u, 7748u, 40697u))), func_2(func_2(Struct_1(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u), vec4<f32>(1797f, -714f, 1171f, -882f), u_input.b, var_0.x, 1u), u_input.a.x, Struct_1(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(-258f, -1000f, -986f, 1000f), u_input.b, 0u, var_0.x), vec4<u32>(var_0.x, 12550u, 55972u, 4294967295u)), max(39611i, -22459i), func_2(Struct_1(vec4<u32>(var_0.x, var_0.x, 0u, 0u), vec4<f32>(564f, 438f, 407f, -1686f), u_input.b, 32703u, 1u), -27488i, Struct_1(vec4<u32>(12585u, 0u, 31920u, var_0.x), vec4<f32>(579f, 493f, -341f, 717f), u_input.b, var_0.x, var_0.x), vec4<u32>(1u, var_0.x, var_0.x, 8572u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), vec4<u32>(31638u, var_0.x, 64604u, 1u)))), u_input.a.x), var_0.x, _wgslsmith_sub_u32(1u | var_0.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(func_5(Struct_1(vec4<u32>(var_0.x, 1u, var_0.x, 0u), vec4<f32>(453f, -560f, 1099f, 1279f), -58172i, 1u, 98612u), vec4<i32>(u_input.a.x, 26161i, -35501i, -16403i), Struct_1(vec4<u32>(6998u, var_0.x, 36592u, 28489u), vec4<f32>(-1179f, -676f, -247f, -394f), u_input.a.x, var_0.x, 16515u), Struct_1(vec4<u32>(41136u, 1u, var_0.x, var_0.x), vec4<f32>(143f, -1222f, 707f, -1000f), u_input.b, 15391u, 88010u)).a.x, var_0.x), 16589u, 38947u)));
    var var_2 = vec3<f32>(-1040f, 1635f, _wgslsmith_f_op_f32(select(1750f, -1013f, all(!vec2<bool>(arg_0, false)))));
    let var_3 = var_1;
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-516f + -1953f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1277f, -887f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, var_1.b.x)))))));
    return ~var_3.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4903u;
    var_0 = ~(~(~1u));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(func_1(any(vec4<bool>(false, false, true, true))), ~0u), 1u, ~(~(~(~7301u))));
    var_1 = select(vec3<i32>(var_1.x, _wgslsmith_mod_i32(min(-4169i, ~u_input.a.x), -1i), var_1.x), max(vec3<i32>(-(1214i >> (var_2 % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.a.x, u_input.a.x)), var_1.zz), 2147483647i), u_input.a), !(!(!(var_2 < 1u))));
    var_0 = abs(func_1(all(vec4<bool>(true, false, true, true))));
    var var_3 = vec3<bool>(!(0u <= var_2) != !(!any(vec3<bool>(true, false, true))), !all(vec3<bool>(true, true, true)), all(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), all(vec2<bool>(false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(14144u, func_5(Struct_1(vec4<u32>(var_2 ^ var_2, 14697u, var_2, ~1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(503f, 374f, -1489f, -925f), vec4<f32>(150f, 501f, 1269f, 160f)) - func_5(Struct_1(vec4<u32>(19193u, 0u, 4265u, 53130u), vec4<f32>(-274f, -1000f, 438f, 300f), 24511i, var_2, 21146u), vec4<i32>(-33989i, 7281i, var_1.x, 16349i), Struct_1(vec4<u32>(var_2, var_2, var_2, 4294967295u), vec4<f32>(-1700f, -398f, -114f, 306f), var_1.x, 1u, 101712u), Struct_1(vec4<u32>(var_2, 1u, 0u, var_2), vec4<f32>(1519f, -1337f, -997f, 1459f), 15529i, 7329u, 4294967295u)).b), u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 0u), ~vec2<u32>(0u, var_2)), var_2), firstLeadingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 7056i, u_input.a.x, 0i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, -22902i))), func_2(func_5(Struct_1(vec4<u32>(4294967295u, var_2, 1u, var_2), vec4<f32>(-153f, 138f, -520f, 470f), u_input.b, 4294967295u, var_2), ~vec4<i32>(u_input.a.x, 0i, 0i, -2147483647i), func_4(Struct_1(vec4<u32>(4294967295u, var_2, var_2, var_2), vec4<f32>(444f, -1539f, 966f, -1050f), -19647i, 0u, var_2), Struct_1(vec4<u32>(12821u, 64831u, var_2, var_2), vec4<f32>(1000f, 1577f, -1000f, 1940f), -37955i, var_2, 1540u), Struct_1(vec4<u32>(4294967295u, 0u, 1u, var_2), vec4<f32>(502f, 866f, 220f, 269f), u_input.b, 1u, var_2), Struct_1(vec4<u32>(var_2, 24236u, var_2, 1u), vec4<f32>(-255f, 1235f, -1000f, -870f), var_1.x, var_2, 37671u)), Struct_1(vec4<u32>(var_2, 31724u, var_2, var_2), vec4<f32>(285f, -654f, -1769f, 777f), -19865i, 0u, 4294967295u)), 37528i, func_2(func_4(Struct_1(vec4<u32>(var_2, var_2, 4294967295u, var_2), vec4<f32>(-1640f, 459f, -287f, -832f), u_input.b, var_2, var_2), Struct_1(vec4<u32>(var_2, var_2, var_2, var_2), vec4<f32>(-110f, 1507f, -873f, -1559f), var_1.x, var_2, var_2), Struct_1(vec4<u32>(9902u, 4294967295u, var_2, 4294967295u), vec4<f32>(-1548f, 750f, 866f, -783f), 1i, 30514u, 14669u), Struct_1(vec4<u32>(18763u, 1u, 1649u, 1u), vec4<f32>(-1846f, 1401f, -774f, 1000f), u_input.b, 38212u, var_2)), u_input.a.x, func_2(Struct_1(vec4<u32>(0u, 1u, 0u, 22855u), vec4<f32>(1000f, -705f, 249f, 218f), u_input.a.x, 28325u, 51506u), -11445i, Struct_1(vec4<u32>(var_2, var_2, 1u, var_2), vec4<f32>(-1104f, -1088f, -1849f, -1873f), u_input.b, var_2, 49386u), vec4<u32>(var_2, var_2, var_2, var_2)), ~vec4<u32>(4294967295u, 426u, 0u, var_2)), func_5(Struct_1(vec4<u32>(1u, var_2, 43007u, 17961u), vec4<f32>(509f, 923f, 271f, -1670f), u_input.a.x, 36130u, var_2), ~vec4<i32>(-19899i, var_1.x, 1i, -1i), Struct_1(vec4<u32>(var_2, var_2, 22294u, var_2), vec4<f32>(1004f, 590f, 255f, -1791f), u_input.b, 2676u, 1u), func_4(Struct_1(vec4<u32>(44469u, 4294967295u, var_2, var_2), vec4<f32>(1446f, -374f, 983f, -433f), u_input.b, 2637u, 0u), Struct_1(vec4<u32>(var_2, var_2, 41144u, 43357u), vec4<f32>(-389f, 1452f, 1122f, -131f), u_input.a.x, var_2, 4294967295u), Struct_1(vec4<u32>(var_2, var_2, 1u, var_2), vec4<f32>(379f, -1003f, -1329f, 1152f), var_1.x, var_2, 0u), Struct_1(vec4<u32>(var_2, var_2, var_2, var_2), vec4<f32>(-556f, -1574f, -2110f, -1778f), var_1.x, 22453u, 10015u))).a), Struct_1(vec4<u32>(max(1u, var_2), 18304u, var_2, 0u), vec4<f32>(_wgslsmith_div_f32(841f, 2075f), -486f, _wgslsmith_f_op_f32(func_3(vec3<f32>(-890f, -984f, -281f), vec4<i32>(0i, var_1.x, var_1.x, 2147483647i))), _wgslsmith_f_op_f32(-1000f - -140f)), 43359i, 0u, ~(~var_2))).a, u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(199f, 236f, -368f, -676f) * vec4<f32>(-705f, -642f, 1000f, -1000f))))), vec3<i32>(var_1.x, _wgslsmith_add_i32(func_6(Struct_1(vec4<u32>(42864u, 0u, 0u, 4294967295u), vec4<f32>(166f, -1219f, -244f, -667f), 25423i, var_2, var_2), u_input.a.x | 1i), -var_1.x >> (max(0u, 4294967295u) % 32u)), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_1.x | u_input.a.x, _wgslsmith_clamp_i32(-7544i, 0i, var_1.x), var_1.x))));
}

