struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> f32 {
    let var_0 = any(select(vec3<bool>(countOneBits(u_input.b) <= u_input.b, 13375u < (6652u | u_input.c), true), vec3<bool>(false, select(true, true, arg_2), 1u > arg_0), select(select(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, false, arg_2), arg_2), select(vec3<bool>(arg_2, true, false), vec3<bool>(arg_2, true, true), vec3<bool>(arg_2, arg_2, true)), !vec3<bool>(true, arg_2, false)), select(!vec3<bool>(false, arg_2, true), select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(false, arg_2, true), vec3<bool>(false, arg_2, false)), arg_2), select(vec3<bool>(true, arg_2, true), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, false, true), arg_2), !vec3<bool>(arg_2, arg_2, arg_2)))));
    global0 = u_input.d;
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(arg_0, u_input.c, 51751u)), abs(vec3<u32>(u_input.a.x, 7977u, u_input.a.x)), vec3<u32>(0u, 24759u, 1u)), ~min(vec3<u32>(4294967295u, 84741u, u_input.c), vec3<u32>(arg_0, 6196u, u_input.c))) << (4294967295u % 32u), 15953u, _wgslsmith_dot_vec2_u32(u_input.a, ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(arg_0, u_input.a.x)), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(arg_0, arg_0)))), arg_0);
    global0 = vec4<i32>(-42184i, global0.x, ~(-(~firstTrailingBit(-23293i))), -_wgslsmith_mod_i32(arg_1.x, u_input.d.x));
    var var_2 = Struct_2(Struct_1(~(~(~vec4<u32>(1u, 4294967295u, u_input.c, u_input.c))), -reverseBits(_wgslsmith_add_vec2_i32(global0.zw, vec2<i32>(arg_1.x, arg_1.x))), ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1394f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(718f + _wgslsmith_div_f32(3642f, 1711f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1402f, 335f)) + vec2<f32>(_wgslsmith_f_op_f32(-315f * -690f), _wgslsmith_f_op_f32(188f * 2038f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1263f, -1431f) + _wgslsmith_f_op_f32(select(-1704f, 824f, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1830f, 363f)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -784f);
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(678f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_2.a.a.c, u_input.d.xzz, arg_2.a.b)), -992f)), -547f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-533f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(653f))), _wgslsmith_f_op_f32(step(-999f, _wgslsmith_f_op_f32(2056f - 969f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-157f, -1465f, 159f))))), arg_0));
    global0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~2147483647i, abs(1i), -32848i, firstLeadingBit(1i)) ^ u_input.d, u_input.d), ~(-(_wgslsmith_clamp_vec4_i32(u_input.d, u_input.d, vec4<i32>(0i, 0i, -9880i, 0i)) ^ u_input.d)));
    var var_1 = ~(~select(u_input.d, vec4<i32>(global0.x, 0i, 1i, 21342i), !arg_1)) & (vec4<i32>(-1i) * -vec4<i32>(i32(-1i) * -42788i, abs(48374i), u_input.d.x, _wgslsmith_add_i32(-16425i, 48868i)));
    var var_2 = 721f;
    let var_3 = arg_2.a.a;
    return select(arg_2.a.a.c, u_input.a.x, !any(vec3<bool>(arg_1.x, false && arg_1.x, arg_2.a.b)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(~u_input.a, u_input.a ^ u_input.a), _wgslsmith_sub_vec2_u32(~u_input.a, reverseBits(u_input.a))) ^ vec2<u32>(u_input.a.x, u_input.a.x & ~u_input.c));
    var var_1 = vec2<i32>(-10191i, _wgslsmith_sub_i32(abs(10711i >> (_wgslsmith_add_u32(0u, u_input.a.x) % 32u)), 1i));
    var var_2 = Struct_1(~(vec4<u32>(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 34010u, var_0.x, u_input.a.x), vec4<u32>(u_input.a.x, var_0.x, var_0.x, 1u)), u_input.c, func_2(arg_1.x, vec4<bool>(arg_1.x, false, true, arg_1.x), Struct_4(Struct_3(Struct_1(vec4<u32>(69677u, var_0.x, 27764u, u_input.c), vec2<i32>(u_input.b, -16298i), u_input.c), arg_1.x), u_input.b))) >> (firstTrailingBit(~vec4<u32>(74131u, 4294967295u, u_input.a.x, u_input.c)) % vec4<u32>(32u))), vec2<i32>(_wgslsmith_sub_i32(-10062i, u_input.d.x) ^ (global0.x << (38756u % 32u)), 38496i) << (~vec2<u32>(abs(4294967295u), ~6755u) % vec2<u32>(32u)), 4294967295u);
    var_0 = ~var_2.a.zz;
    var var_3 = max(reverseBits(~_wgslsmith_sub_vec2_u32(var_2.a.wz << (vec2<u32>(81706u, u_input.c) % vec2<u32>(32u)), var_2.a.xz)), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(11670u, var_2.c)) >> (~u_input.a % vec2<u32>(32u)), ~u_input.a << (_wgslsmith_add_vec2_u32(u_input.a, ~vec2<u32>(u_input.c, 4294967295u)) % vec2<u32>(32u)), u_input.a));
    return Struct_1(vec4<u32>(u_input.c, max(~var_2.c, 12557u), var_0.x, u_input.c), global0.zy, _wgslsmith_mult_u32(var_0.x, func_2(!arg_0.x, select(!vec4<bool>(arg_1.x, true, true, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), arg_1.x), Struct_4(Struct_3(Struct_1(var_2.a, vec2<i32>(-25090i, -1i), 0u), false), _wgslsmith_mult_i32(u_input.b, u_input.d.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> Struct_1 {
    var var_0 = Struct_1(func_1(select(select(select(vec2<bool>(arg_1.a.b, arg_1.a.b), vec2<bool>(true, arg_1.a.b), true), vec2<bool>(false, false), !vec2<bool>(arg_1.a.b, false)), vec2<bool>(false && arg_1.a.b, arg_0.b.x == -1i), true), vec3<bool>(all(select(vec3<bool>(arg_1.a.b, arg_1.a.b, arg_1.a.b), vec3<bool>(true, false, false), vec3<bool>(arg_1.a.b, false, arg_1.a.b))), arg_1.a.b, true), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1786f, -456f, true)), -155f)))).a, global0.yz, ~arg_1.a.a.a.x);
    global0 = u_input.d;
    var_0 = arg_0;
    global0 = u_input.d;
    var_0 = func_1(!vec2<bool>(!all(vec3<bool>(false, false, arg_1.a.b)), arg_1.a.b), select(!(!vec3<bool>(true, arg_1.a.b, true)), select(!select(vec3<bool>(arg_1.a.b, false, arg_1.a.b), vec3<bool>(arg_1.a.b, true, arg_1.a.b), vec3<bool>(arg_1.a.b, arg_1.a.b, true)), select(select(vec3<bool>(true, arg_1.a.b, false), vec3<bool>(arg_1.a.b, arg_1.a.b, false), false), !vec3<bool>(arg_1.a.b, true, false), !arg_1.a.b), select(!vec3<bool>(false, arg_1.a.b, false), select(vec3<bool>(arg_1.a.b, arg_1.a.b, true), vec3<bool>(arg_1.a.b, false, false), vec3<bool>(false, arg_1.a.b, false)), arg_1.a.b)), arg_1.a.a.a.x > 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1105f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1096f * _wgslsmith_f_op_f32(select(1000f, 773f, false))))));
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<i32> {
    global0 = _wgslsmith_mod_vec4_i32(vec4<i32>(~(~(-2147483647i)), ~u_input.d.x, ~_wgslsmith_sub_i32(-25853i, global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b.x, arg_2.b.x), ~global0.xy)), u_input.d) << (vec4<u32>(firstLeadingBit(~u_input.a.x), _wgslsmith_dot_vec4_u32(~arg_2.a, vec4<u32>(arg_1, ~35321u, 16909u, 98918u)), arg_1, ~arg_1) % vec4<u32>(32u));
    let var_0 = _wgslsmith_f_op_f32(func_3(4294967295u, global0.wxz, (~arg_2.c < 1u) || true));
    global0 = ~vec4<i32>(_wgslsmith_dot_vec2_i32((vec2<i32>(24490i, u_input.b) << (vec2<u32>(arg_2.c, 0u) % vec2<u32>(32u))) ^ vec2<i32>(global0.x, global0.x), ~_wgslsmith_add_vec2_i32(vec2<i32>(-11448i, 2147483647i), global0.zy)), i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-u_input.b, _wgslsmith_sub_i32(-47002i, global0.x)), _wgslsmith_dot_vec4_i32(u_input.d, -u_input.d), -26734i), max(countOneBits(24278i), -1965i));
    return global0.wy;
}

fn func_6(arg_0: vec2<i32>) -> vec4<i32> {
    global0 = ~vec4<i32>(-global0.x, arg_0.x, firstLeadingBit(i32(-1i) * -11132i), reverseBits(countOneBits(-arg_0.x)));
    global0 = ~vec4<i32>(abs(-1i), global0.x & func_1(vec2<bool>(true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), _wgslsmith_f_op_f32(-472f - 387f)).b.x, -1i, firstLeadingBit(abs(2147483647i)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -497f))) * _wgslsmith_f_op_f32(1000f - 2609f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-190f)) + _wgslsmith_div_f32(-1392f, -125f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1072f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-880f + 531f)))))));
    global0 = ~vec4<i32>(abs(1i), -16694i, ~(~(-18329i)), -19108i & arg_0.x);
    let var_1 = true;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_vec4_i32(u_input.d, u_input.d);
    global0 = func_6(_wgslsmith_div_vec2_i32(func_5(u_input.c < 1u, u_input.c, func_4(func_1(vec2<bool>(true, true), vec3<bool>(true, true, false), -545f), Struct_4(Struct_3(Struct_1(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), vec2<i32>(u_input.d.x, u_input.b), 37377u), true), 5571i)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, u_input.c))), global0.ww));
    global0 = -max(u_input.d, -_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.d, u_input.d), abs(u_input.d), ~vec4<i32>(u_input.d.x, 5144i, u_input.d.x, -3020i)));
    global0 = u_input.d;
    var var_0 = max(abs(vec3<i32>(1i ^ _wgslsmith_mod_i32(u_input.d.x, u_input.b), _wgslsmith_div_i32(-u_input.d.x, firstLeadingBit(u_input.d.x)), (global0.x << (u_input.c % 32u)) << (~48943u % 32u))), global0.wzw ^ -vec3<i32>(1i, firstTrailingBit(u_input.b), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1011f + _wgslsmith_div_f32(159f, -1042f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -940f) * _wgslsmith_f_op_f32(1000f - -1081f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1141f, 1206f))), vec2<f32>(518f, -1810f))), vec2<f32>(1f, 1f))), ~124227u, ~_wgslsmith_add_vec4_u32(~min(vec4<u32>(1u, u_input.c, u_input.a.x, 49106u), vec4<u32>(29753u, 4294967295u, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.c, firstLeadingBit(31653u), ~u_input.a.x, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -774f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(881f, 1677f), vec2<f32>(984f, -694f), false))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

