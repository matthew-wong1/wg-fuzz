struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = reverseBits(abs(~vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x)) >> (~(~vec4<u32>(arg_0, 4294967295u, u_input.d.x, arg_0)) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.c, 4294967295u, 0u, u_input.c) >> (vec4<u32>(4294967295u, u_input.c, 106638u, arg_1.c) % vec4<u32>(32u))) >> (firstTrailingBit(vec4<u32>(64102u, arg_0, u_input.d.x, 0u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(35064u, arg_0, arg_1.c), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(arg_1.c, 61731u, 4294967295u)), ~0u, abs(arg_0)), vec4<u32>(~0u, 1u, max(56641u, u_input.d.x), arg_1.c))) % vec4<u32>(32u));
    var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, var_0.x, 1i, -abs(2147483647i)) | countOneBits(vec4<i32>(u_input.a.x >> (arg_0 % 32u), _wgslsmith_sub_i32(var_0.x, 1i), var_0.x, 1i)), vec4<i32>(~(i32(-1i) * -var_0.x), _wgslsmith_sub_i32(-u_input.a.x, u_input.b.x), ~(abs(u_input.a.x) | ~u_input.a.x), 64801i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, 203f, arg_1.a.x)) - _wgslsmith_f_op_vec3_f32(sign(arg_1.a))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(arg_1.a, arg_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2245f, arg_1.a.x, 1329f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1.a)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a.x, arg_1.a.x, 601f), arg_1.a))))), select(select(arg_1.d.x, abs(-2147483647i) != u_input.b.x, arg_1.d.x), arg_1.d.x, any(vec4<bool>(arg_1.b | arg_1.d.x, any(arg_1.d.xx), true, arg_1.d.x))), arg_0, vec4<bool>(arg_1.b | true, arg_1.d.x, true, arg_1.c == ~1u));
    var var_2 = _wgslsmith_sub_vec4_u32(~vec4<u32>(abs(~var_1.c), _wgslsmith_div_u32(var_1.c, ~u_input.c), max(_wgslsmith_mod_u32(1u, 1u), ~1u), ~1u), vec4<u32>(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 1u, arg_0, u_input.d.x)), abs(vec4<u32>(4294967295u, 96058u, arg_0, 90930u))), arg_0, ~1u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 4294967295u) << (u_input.d.xy % vec2<u32>(32u)), u_input.d.yy >> (u_input.d.yx % vec2<u32>(32u))))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(round(var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))));
    return vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x + 232f), var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_3.x, arg_1.a.x))) - arg_1.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = ~(~4294967295u) >= (~(select(arg_3.c, arg_2.c, arg_3.b) << (4294967295u % 32u)) & arg_0.c);
    var var_1 = ~vec3<i32>(70380i, u_input.b.x, -1i);
    var var_2 = _wgslsmith_add_u32(arg_1.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_0.c, 4294967295u), u_input.d)));
    var var_3 = !arg_3.d;
    var var_4 = arg_2.a.x;
    return 0u;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = abs(57924i);
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_mult_u32(~1u, ~(~(~u_input.d.x >> (~1u % 32u))));
    var_2 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1090f - 259f), _wgslsmith_f_op_f32(f32(-1f) * -1586f), _wgslsmith_f_op_f32(max(-295f, 401f))) * vec3<f32>(1f, 1f, 1f)), arg_1.x != true, ~(~1u), !vec4<bool>(true, !arg_1.x, true, true)), ~_wgslsmith_sub_vec2_u32(~(~vec2<u32>(1u, 46244u)), _wgslsmith_mod_vec2_u32(~u_input.d.zy, _wgslsmith_mult_vec2_u32(vec2<u32>(9503u, u_input.d.x), vec2<u32>(4294967295u, 1u)))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(2385f, 846f), 849f, _wgslsmith_f_op_f32(-1534f + 418f)), _wgslsmith_f_op_vec3_f32(func_3(4294967295u, Struct_1(vec3<f32>(-1138f, 501f, 1000f), arg_1.x, 10576u, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))), arg_1.x, u_input.c ^ reverseBits(34602u), !select(!vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x))), Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(220f, -596f, arg_1.x)), _wgslsmith_f_op_vec3_f32(func_3(u_input.d.x, Struct_1(vec3<f32>(-665f, -275f, -1037f), arg_1.x, u_input.d.x, vec4<bool>(arg_1.x, arg_1.x, false, true)))).x), -430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(823f + 969f))), false, reverseBits(1u), !(!select(vec4<bool>(arg_1.x, true, false, true), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-901f, 636f, -1431f))), vec3<f32>(434f, 440f, -588f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(236f, -480f, 116f))))))), arg_1.x, u_input.d.x, select(!select(vec4<bool>(false, arg_1.x, false, true), !vec4<bool>(false, arg_1.x, arg_1.x, false), !arg_1.x), !vec4<bool>(any(vec4<bool>(arg_1.x, arg_1.x, false, true)), true, true, any(vec3<bool>(arg_1.x, false, arg_1.x))), any(vec3<bool>(any(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), true, !arg_1.x))));
    return Struct_1(var_3.a, arg_1.x, func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, -2034f, var_3.a.x))), false, 13103u, vec4<bool>(true, true, true, true)), ~select(~vec2<u32>(var_3.c, 0u), _wgslsmith_mod_vec2_u32(u_input.d.yz, u_input.d.yy), any(vec3<bool>(true, arg_1.x, arg_1.x))), Struct_1(vec3<f32>(886f, _wgslsmith_f_op_f32(step(191f, 327f)), _wgslsmith_f_op_f32(-1234f * var_3.a.x)), arg_1.x, _wgslsmith_add_u32(27695u, u_input.d.x >> (8082u % 32u)), vec4<bool>(true, u_input.d.x >= u_input.c, var_3.b, var_3.a.x <= var_3.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-var_3.a), !arg_1.x, 0u, vec4<bool>(arg_1.x & false, all(var_3.d), true, true))), vec4<bool>(true, true, (u_input.d.x >> (u_input.d.x % 32u)) > 16346u, any(select(select(var_3.d.yxy, vec3<bool>(var_3.d.x, arg_1.x, arg_1.x), arg_1.x), vec3<bool>(false, var_3.b, false), arg_0 <= 34329i))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~u_input.d;
    var var_1 = vec4<bool>(true, true, arg_0, -324f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f - arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.a.x, arg_3.a.x, arg_1.b)) - arg_1.a.x), u_input.d.x >= ~u_input.c)));
    let var_2 = vec2<bool>(!var_1.x, arg_2);
    var_1 = arg_1.d;
    let var_3 = func_2(u_input.b.x, !(!select(vec3<bool>(true, arg_2, false), select(vec3<bool>(var_2.x, arg_0, false), vec3<bool>(true, false, arg_1.d.x), var_2.x), vec3<bool>(arg_3.d.x, true, true))));
    return var_3;
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> vec2<i32> {
    var var_0 = !(!select(arg_2.d.zxw, arg_2.d.wxx, !arg_1.zyy));
    var var_1 = select(u_input.a ^ (vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), vec2<i32>(61167i, u_input.b.x))), -(countOneBits(min(vec2<i32>(u_input.a.x, u_input.a.x), u_input.b)) << (u_input.d.yx % vec2<u32>(32u))), vec2<bool>(false | !func_2(u_input.a.x, arg_1.zxy).b, all(!vec4<bool>(var_0.x, false, var_0.x, false))));
    var var_2 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(var_1.x, u_input.a.x, var_1.x)), vec3<i32>(-1i, u_input.b.x, 1i) ^ vec3<i32>(u_input.b.x, 0i, u_input.a.x)) | _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.b.x, -2147483647i, 15973i), vec3<i32>(var_1.x, -28079i, var_1.x), vec3<bool>(arg_1.x, false, false)), vec3<i32>(u_input.b.x, var_1.x, 63257i)), vec3<i32>(var_1.x, u_input.b.x, -var_1.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, -2147483647i, -11633i), vec3<i32>(var_1.x, 1i, u_input.a.x)) | vec3<i32>(~(-8782i), -1i, -var_1.x), reverseBits(-firstLeadingBit(vec3<i32>(26730i, 6223i, -52562i)))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~(vec3<i32>(12012i, u_input.b.x, var_1.x) >> (u_input.d % vec3<u32>(32u))), vec3<i32>(u_input.a.x >> (arg_0 % 32u), -u_input.b.x, ~(-11039i))), select(~vec3<i32>(u_input.a.x, -8793i, u_input.b.x) | -vec3<i32>(6707i, var_1.x, var_1.x), select(vec3<i32>(1i, var_1.x, u_input.a.x), abs(vec3<i32>(2147483647i, 1i, -29674i)), func_2(-1i, vec3<bool>(true, false, arg_1.x)).d.zwy), all(vec4<bool>(false, var_0.x, var_0.x, true)))));
    var var_3 = _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.c, arg_2.c << (55927u % 32u), 0u ^ u_input.c) >> (~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_2.c, 48137u, 0u), vec4<u32>(28866u, 4294967295u, 1u, arg_3))) % vec4<u32>(32u)), vec4<u32>(43222u, ~1u, _wgslsmith_div_u32(0u, ~u_input.d.x) << (func_1(arg_1.x || arg_2.d.x, Struct_1(vec3<f32>(1000f, arg_2.a.x, arg_2.a.x), arg_2.d.x, u_input.d.x, vec4<bool>(arg_1.x, false, arg_2.d.x, false)), arg_2.d.x, func_2(2147483647i, vec3<bool>(false, false, false))).c % 32u), _wgslsmith_dot_vec3_u32(min(~u_input.d, abs(u_input.d)), u_input.d)));
    var var_4 = arg_2.a.x;
    return vec2<i32>(u_input.b.x, -u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_mult_vec2_i32(firstLeadingBit(-vec2<i32>(u_input.b.x, ~u_input.b.x)), ~(~func_5(u_input.d.x, vec4<bool>(false, false, true, true), func_1(false, Struct_1(vec3<f32>(-320f, -1959f, -1514f), false, 7319u, vec4<bool>(false, false, var_0, var_0)), var_0, Struct_1(vec3<f32>(-1000f, -292f, 1074f), var_0, 4294967295u, vec4<bool>(true, false, var_0, true))), u_input.d.x)));
    let var_2 = u_input.d.x;
    var var_3 = func_2(-_wgslsmith_clamp_i32(u_input.b.x, abs(u_input.b.x ^ u_input.b.x), u_input.b.x), vec3<bool>(var_0, true, !var_0));
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(func_1(!(true | var_3.d.x), Struct_1(var_3.a, true, 24265u, vec4<bool>(var_3.b, true, var_3.b, var_3.d.x)), false, Struct_1(var_3.a, false, min(4294967295u, var_2), !var_3.d)).a.x))));
    var var_5 = func_2(var_1.x, vec3<bool>(true & (func_1(true, Struct_1(var_3.a, true, 30117u, vec4<bool>(false, true, var_0, var_3.d.x)), var_0, Struct_1(var_3.a, var_3.b, 0u, var_3.d)).c <= (var_2 << (var_2 % 32u))), false, var_3.a.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(503f)), 1333f)));
    var var_6 = _wgslsmith_add_vec3_i32(~(vec3<i32>(-1i) * -abs(vec3<i32>(var_1.x, 0i, -1i))), vec3<i32>(~21035i, _wgslsmith_mod_i32(u_input.a.x, u_input.b.x), var_1.x));
    var var_7 = func_1(true, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-217f, var_5.a.x, var_5.a.x), var_5.a), var_5.a), true, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, select(0u, 4294967295u, var_3.b), ~11285u), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(var_2, var_3.c, 1u)), max(vec3<u32>(var_2, 1u, 1u), u_input.d))), !(!select(var_5.d, var_5.d, vec4<bool>(false, true, true, var_0)))), _wgslsmith_mod_u32((37617u ^ u_input.c) | u_input.d.x, func_1(any(var_3.d), Struct_1(vec3<f32>(-713f, 778f, -2015f), false, var_3.c, var_3.d), func_1(true, Struct_1(vec3<f32>(var_5.a.x, var_3.a.x, var_5.a.x), false, var_3.c, vec4<bool>(var_3.b, false, var_3.b, var_5.d.x)), var_3.b, Struct_1(vec3<f32>(var_3.a.x, var_3.a.x, var_3.a.x), var_3.d.x, u_input.c, vec4<bool>(var_3.d.x, var_5.d.x, false, var_0))).d.x, func_2(-10700i, var_5.d.zzx)).c) == 63039u, Struct_1(var_5.a, true, ~var_5.c, var_5.d));
    var var_8 = -64045i;
    let x = u_input.a;
    s_output = StorageBuffer(var_7.c, select(min(_wgslsmith_mult_vec4_i32(vec4<i32>(var_6.x, var_6.x, var_6.x, var_1.x), vec4<i32>(-31276i, -60639i, u_input.a.x, var_1.x)), ~vec4<i32>(u_input.a.x, u_input.b.x, var_6.x, 65132i)) ^ vec4<i32>(~var_6.x, ~var_6.x, 32317i, min(var_6.x, u_input.a.x)), -(~select(vec4<i32>(var_6.x, -43480i, u_input.b.x, -2147483647i), vec4<i32>(6959i, var_1.x, -18237i, 2147483647i), var_3.d)), vec4<bool>(var_7.a.x < _wgslsmith_f_op_f32(f32(-1f) * -1000f), !all(vec3<bool>(var_7.b, true, false)), -u_input.a.x <= _wgslsmith_div_i32(-19726i, var_1.x), !var_3.d.x)), ~9021u, 308f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_7.a.xy - var_7.a.yy))));
}

