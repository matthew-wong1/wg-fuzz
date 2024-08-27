struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_1(32714i, 0u);
    var var_1 = !(all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), all(vec4<bool>(false, true, arg_0, arg_0)))) & all(vec2<bool>(true, true)));
    var_0 = Struct_1(0i, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(21472u, 69914u), 15u)] ^ (5326u << (var_0.b % 32u)), 15u)], var_0.b), 15u)], 15u)] << (~global0[_wgslsmith_index_u32(reverseBits(min(30550u, u_input.b.x)), 15u)] % 32u));
    let var_2 = select(vec4<bool>(true, select(!(arg_0 && arg_0), !(arg_0 && false), arg_0), arg_0, arg_0), !select(select(!vec4<bool>(arg_0, false, false, false), select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(false, false, false, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0)), any(vec4<bool>(false, arg_0, arg_0, false))), vec4<bool>(arg_0, arg_0, all(vec3<bool>(arg_0, arg_0, arg_0)), any(vec2<bool>(arg_0, false))), false), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(415f - 145f), _wgslsmith_f_op_f32(select(-1572f, 945f, true))), _wgslsmith_f_op_f32(f32(-1f) * -1499f))) > 493f);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-709f, -1719f))) + 638f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(564f, -1033f) - -544f) + _wgslsmith_f_op_f32(-717f * _wgslsmith_div_f32(1450f, 1036f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1678f, 1944f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -887f) + _wgslsmith_f_op_f32(trunc(1953f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(327f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1114f - _wgslsmith_f_op_f32(-701f + -836f))))), 902f);
    return _wgslsmith_sub_u32(countOneBits(16083u), _wgslsmith_sub_u32(~1u, firstTrailingBit(1u)) >> (_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_div_vec2_u32(vec2<u32>(62204u, 4294967295u) << (vec2<u32>(var_0.b, 90332u) % vec2<u32>(32u)), vec2<u32>(var_0.b, 0u))) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> bool {
    let var_0 = Struct_2(~(-select(select(vec4<i32>(arg_2.e.x, arg_0.a, 9350i, arg_2.c.a), vec4<i32>(-31679i, -47795i, 0i, 1i), vec4<bool>(arg_1, arg_1, true, true)), arg_2.a, u_input.a.x >= -31841i)), arg_0, Struct_1(-1i, 4294967295u), firstLeadingBit(select(_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(arg_2.c.b, 15u)]), arg_0.b ^ 10912u, !arg_1)) | ~firstTrailingBit(~5261u), arg_2.a.yw);
    var var_1 = arg_2;
    global0 = array<u32, 15>();
    return true;
}

fn func_5(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = Struct_2(vec4<i32>(-1i) * -vec4<i32>(-17847i, u_input.a.x >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8428u, 15u)], 15u)] % 32u), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), Struct_1(u_input.a.x, u_input.b.x), Struct_1(_wgslsmith_add_i32(u_input.a.x, ~_wgslsmith_add_i32(0i, -2147483647i)), u_input.b.x), 1u, select(vec2<i32>(~(-u_input.a.x), u_input.a.x), vec2<i32>(u_input.a.x, ~(-19508i)), select(select(select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_1), false), vec2<bool>(arg_0, false), vec2<bool>(arg_0, true)), !vec2<bool>(arg_1, false), arg_1)));
    global0 = array<u32, 15>();
    let var_1 = Struct_2(_wgslsmith_sub_vec4_i32(~(~max(var_0.a, vec4<i32>(var_0.c.a, 5132i, var_0.b.a, u_input.a.x))), min(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.a.x, var_0.b.a, -1i, var_0.c.a), vec4<i32>(var_0.b.a, 25236i, 19731i, u_input.a.x), vec4<bool>(arg_1, true, true, true)), var_0.a), max(var_0.a << (vec4<u32>(60786u, var_0.b.b, 31784u, 0u) % vec4<u32>(32u)), abs(vec4<i32>(var_0.e.x, var_0.c.a, 48728i, 9994i))))), var_0.b, Struct_1(_wgslsmith_sub_i32(57330i, var_0.b.a), reverseBits(var_0.c.b)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(0u), ~var_0.b.b, 1u, ~1u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 44732u, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.d, u_input.b.x, 4294967295u, 32078u), vec4<u32>(var_0.b.b, 4294967295u, 12341u, global0[_wgslsmith_index_u32(var_0.d, 15u)]))))), vec2<i32>(var_0.b.a, u_input.a.x));
    let var_2 = select(select(select(select(vec4<bool>(true, arg_0, false, arg_0), select(vec4<bool>(arg_0, arg_1, arg_1, arg_0), vec4<bool>(true, arg_1, true, true), arg_1), !vec4<bool>(false, arg_0, false, arg_1)), vec4<bool>(false, !arg_1, false, false), true), !select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(false, true, arg_0, true), func_4(var_1.b, true, Struct_2(vec4<i32>(0i, 2147483647i, var_1.a.x, -2147483647i), Struct_1(var_1.e.x, 4294967295u), Struct_1(var_1.e.x, var_1.b.b), var_0.c.b, u_input.a), var_0.c.a)), select(-1i > var_0.c.a, arg_0, true)), select(vec4<bool>(true, arg_0, any(vec4<bool>(arg_1, true, arg_0, true)), all(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, true, true), vec3<bool>(arg_1, arg_1, arg_1)))), vec4<bool>(true, arg_1, arg_0, any(select(vec3<bool>(arg_1, true, arg_0), vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, arg_0, true)))), false), arg_0);
    global0 = array<u32, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2542f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> i32 {
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    var var_0 = _wgslsmith_f_op_f32(func_5(func_4(Struct_1(firstTrailingBit(u_input.a.x), ~func_3(false)), _wgslsmith_mod_i32(u_input.a.x, -22407i) < u_input.a.x, Struct_2(vec4<i32>(1i, -2147483647i, u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-19687i, 52855i), vec2<i32>(2147483647i, 24447i)), 1u), Struct_1(abs(u_input.a.x), firstLeadingBit(39758u)), _wgslsmith_div_u32(u_input.b.x, 0u), vec2<i32>(abs(1i), 0i)), _wgslsmith_add_i32(u_input.a.x | 2147483647i, u_input.a.x)), arg_0.x));
    let var_1 = ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x);
    var var_2 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(-u_input.a.x, ~u_input.a.x, firstTrailingBit(u_input.a.x), u_input.a.x << (u_input.b.x % 32u)) >> (~vec4<u32>(u_input.b.x, 37703u, 83149u, 88462u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(-vec4<i32>(11437i, 44897i, u_input.a.x, u_input.a.x), select(firstLeadingBit(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -2147483647i)), vec4<i32>(u_input.a.x, u_input.a.x, -22239i, 2147483647i) << (vec4<u32>(0u, 0u, 53852u, var_1) % vec4<u32>(32u)), true))), Struct_1(abs(u_input.a.x), ~countOneBits(u_input.c.x)), Struct_1(u_input.a.x, _wgslsmith_add_u32(func_3(true), 106943u)), ~(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, u_input.c.x)), vec2<u32>(1u, 1u))), -max(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(-2147483647i, 0i)), u_input.a)));
    return 1i & _wgslsmith_sub_i32(u_input.a.x << (u_input.b.x % 32u), var_2.a.x ^ ~(i32(-1i) * -3108i));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = -(i32(-1i) * -2147483647i);
    let var_1 = 29044u;
    var var_2 = !(-12562i > abs(-u_input.a.x));
    var var_3 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 37349i, u_input.a.x) ^ vec4<i32>(-2147483647i, u_input.a.x, 8329i, u_input.a.x), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 8257i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), vec4<i32>(76184i, -2147483647i, -u_input.a.x, func_2(vec2<bool>(arg_0, arg_0), vec2<f32>(1062f, -214f)))) & _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.a.x, u_input.a.x, 1i, -36949i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_1, 15u)], 1u, global0[_wgslsmith_index_u32(var_1, 15u)], 40204u), vec4<u32>(u_input.b.x, 0u, var_1, 5483u)) % vec4<u32>(32u)), -(~vec4<i32>(2147483647i, 1i, u_input.a.x, -2147483647i))), Struct_1(u_input.a.x, 0u), Struct_1(firstLeadingBit(u_input.a.x) >> (_wgslsmith_sub_u32(~var_1, 6325u) % 32u), countOneBits(_wgslsmith_div_u32(~var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1, u_input.b.x, 0u), vec4<u32>(28253u, var_1, 5104u, 4294967295u))))), 26654u & global0[_wgslsmith_index_u32(min(reverseBits(25078u >> (1u % 32u)), 70705u), 15u)], vec2<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -30326i), vec2<i32>(u_input.a.x, u_input.a.x)) ^ 2147483647i, (u_input.a.x | 2147483647i) & u_input.a.x, true), ~min(max(u_input.a.x, u_input.a.x), 2147483647i)));
    var var_4 = 644f;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -739f), 1180f));
}

fn func_6(arg_0: f32) -> Struct_1 {
    let var_0 = vec4<f32>(arg_0, _wgslsmith_div_f32(749f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 660f)))), _wgslsmith_f_op_f32(func_5(any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true))) != true)), 232f);
    let var_1 = vec4<i32>(u_input.a.x >> (_wgslsmith_dot_vec2_u32(max(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(70610u, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)]), u_input.c), ~vec2<u32>(0u, u_input.c.x)), ~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(17053u, 15u)])) % 32u), -1i, -2147483647i, _wgslsmith_add_i32(u_input.a.x, -_wgslsmith_mult_i32(_wgslsmith_sub_i32(24552i, 12843i), u_input.a.x)));
    var var_2 = Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(var_1.x, u_input.a.x, var_1.x, var_1.x)), var_1), ~select(-3480i, _wgslsmith_dot_vec4_i32(var_1, var_1), all(vec3<bool>(true, false, false))), 13206i, abs(func_2(vec2<bool>(true, true), vec2<f32>(arg_0, -126f)))), Struct_1(955i, max(global0[_wgslsmith_index_u32(31419u, 15u)], global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 15u)])), Struct_1(-1i, 18421u), countOneBits(66198u), ~(~max(firstTrailingBit(var_1.yw), max(u_input.a, var_1.xy))));
    global0 = array<u32, 15>();
    let var_3 = ~(-18960i);
    return var_2.c;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = select(abs(~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(41390u, 15u)], 80268u, u_input.b.x, 4294967295u), vec4<u32>(1u, 10965u, arg_0.d, 29687u), vec4<u32>(1u, u_input.b.x, 35481u, 0u)))), abs(vec4<u32>(9443u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(90135u, 445u, u_input.b.x), vec3<u32>(arg_0.c.b, 26496u, 75403u)), vec3<u32>(37864u, arg_1.d, 0u)), 71184u, 1u)), true);
    let var_1 = countOneBits(77115u);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(789f + _wgslsmith_f_op_f32(793f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1104f)), _wgslsmith_f_op_f32(-523f - 870f))))), 1830f, !(!(true && (u_input.a.x == 0i)))));
    var_2 = _wgslsmith_f_op_f32(-657f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(true, select(true, false, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1044f, 670f))));
    var var_3 = countOneBits(select(arg_1.e, reverseBits(reverseBits(arg_0.a.zz)), true));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x) >> (min(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.c.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], 26986u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], u_input.b.x, 4294967295u, u_input.b.x)) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, -u_input.a.x, ~1i, 15866i), ~(vec4<i32>(u_input.a.x, 1474i, u_input.a.x, -15175i) & vec4<i32>(u_input.a.x, -28131i, 1i, u_input.a.x))), func_6(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(false))))), Struct_1(2147483647i, min(u_input.c.x, 1u)), ~global0[_wgslsmith_index_u32(u_input.b.x, 15u)], u_input.a), Struct_2(_wgslsmith_div_vec4_i32(~vec4<i32>(-37463i, u_input.a.x, u_input.a.x, -28194i), ~(-vec4<i32>(2147483647i, u_input.a.x, 0i, u_input.a.x))), Struct_1(abs(1i), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(2550u, global0[_wgslsmith_index_u32(1u, 15u)])), ~u_input.b)), Struct_1(_wgslsmith_mod_i32(26741i, _wgslsmith_clamp_i32(4828i, u_input.a.x, u_input.a.x)), u_input.c.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~max(62675u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53784u, 15u)], 15u)], 15u)], 15u)], 15u)]), 15u)], 15u)], reverseBits(abs(u_input.a))));
    let var_1 = -(~reverseBits(6232i));
    let var_2 = all(vec3<bool>(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false))), !all(vec2<bool>(false, false)), !(all(vec3<bool>(true, false, false)) || true)));
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    let var_3 = ~(~_wgslsmith_div_vec4_i32(var_0.a, vec4<i32>(65545i, u_input.a.x, var_0.a.x, u_input.a.x)) << (~abs(vec4<u32>(global0[_wgslsmith_index_u32(var_0.c.b, 15u)], 0u, u_input.c.x, 31826u)) % vec4<u32>(32u))) ^ var_0.a;
    global0 = array<u32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_i32(~firstTrailingBit(var_0.a), select(vec4<i32>(var_0.e.x, var_3.x, 33758i, u_input.a.x), vec4<i32>(var_0.b.a, var_3.x, -10614i, var_1), false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-975f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

