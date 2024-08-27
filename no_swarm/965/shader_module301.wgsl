struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = ~(~41038u);
    let var_1 = 455f;
    let var_2 = select(~(~u_input.b.x), ((1u ^ u_input.b.x) | 0u) ^ _wgslsmith_sub_u32(~var_0, _wgslsmith_div_u32(countOneBits(0u), ~u_input.b.x)), all(!vec3<bool>(select(false, true, true), select(false, false, true), false)));
    var var_3 = abs(_wgslsmith_clamp_u32(firstTrailingBit(1u), min(var_0, _wgslsmith_div_u32(~28374u, ~50638u)), _wgslsmith_mod_u32(var_2 << ((616u >> (1u % 32u)) % 32u), 4294967295u ^ _wgslsmith_clamp_u32(34557u, 3397u, u_input.b.x))));
    let var_4 = false;
    return 1000f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = arg_0.a.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1761f * _wgslsmith_f_op_f32(-637f + 304f)), _wgslsmith_f_op_f32(f32(-1f) * -683f))) * _wgslsmith_div_f32(-503f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-671f - 406f))))) * _wgslsmith_f_op_f32(func_3()));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(917f, -802f, 283f, 385f) * vec4<f32>(-1927f, -150f, -832f, 1179f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(167f, var_1, var_1, 1613f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, -197f, var_1, 257f))))));
    var_2 = vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(785f))), 1014f, _wgslsmith_div_f32(_wgslsmith_div_f32(436f, 1366f), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(576f, var_2.x) * _wgslsmith_f_op_f32(-var_2.x)))));
    let var_3 = min(arg_1.c.x, _wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(u_input.c, ~u_input.c), -4496i));
    return select(select(select(select(vec2<bool>(true, arg_0.a.x), vec2<bool>(true, arg_0.a.x), vec2<bool>(arg_1.a.x, arg_1.a.x)), vec2<bool>(false, arg_1.b < 25352u), !(!arg_1.a)), !select(vec2<bool>(arg_0.a.x, arg_1.a.x), vec2<bool>(true, false), !arg_1.a), select(!(!arg_0.a), arg_0.a, arg_0.a.x)), !select(arg_1.a, vec2<bool>(true, true), arg_0.a), vec2<bool>(arg_0.a.x && arg_1.a.x, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = -204f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.x))));
    var var_1 = ~(~(-vec3<i32>(_wgslsmith_add_i32(u_input.d, arg_1.c.x), arg_0.d, i32(-1i) * -5072i)));
    let var_2 = vec4<u32>(abs(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(arg_0.b, 66185u))), 0u, arg_0.b, arg_1.b);
    let var_3 = 502f;
    return Struct_1(arg_0.a, u_input.b.x, (~(~vec3<i32>(var_1.x, arg_2.d, arg_2.d)) | vec3<i32>(abs(arg_2.c.x), -arg_0.c.x, _wgslsmith_dot_vec3_i32(arg_1.c, arg_1.c))) | firstLeadingBit(arg_0.c), arg_1.c.x);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(step(1830f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1150f, 1000f))), _wgslsmith_f_op_f32(414f + _wgslsmith_f_op_f32(func_3()))))))));
    var_0 = arg_0;
    let var_2 = arg_0;
    var var_3 = -415f;
    return func_4(arg_0, Struct_1(vec2<bool>(func_2(func_4(Struct_1(var_2.a, var_0.b, var_2.c, -2147483647i), Struct_1(var_2.a, var_2.b, vec3<i32>(-1i, -71686i, u_input.a), var_2.d), arg_0, vec3<f32>(var_1, -969f, var_1)), func_4(var_2, arg_0, Struct_1(arg_0.a, 23104u, vec3<i32>(-1i, var_2.d, 2147483647i), var_2.c.x), vec3<f32>(1055f, var_1, var_1))).x, arg_0.a.x), var_0.b, _wgslsmith_div_vec3_i32(var_2.c, vec3<i32>(~(-43508i), arg_0.c.x >> (var_2.b % 32u), 4477i)), _wgslsmith_sub_i32(min(1i, var_0.d) << (7211u % 32u), max(2147483647i, var_0.c.x) << (var_0.b % 32u))), arg_0, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -154f, 1751f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-734f, var_1, -1465f)))), all(select(vec4<bool>(var_0.a.x, true, false, var_2.a.x), vec4<bool>(false, false, true, arg_0.a.x), vec4<bool>(false, var_0.a.x, var_2.a.x, false))))))));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>) -> vec2<f32> {
    var var_0 = arg_0;
    var var_1 = abs(~13575u);
    var var_2 = countOneBits(~43634i);
    let var_3 = func_4(Struct_1(func_2(func_5(Struct_1(vec2<bool>(true, var_0.a.x), 0u, arg_0.c, var_0.d)), arg_0), 676u, vec3<i32>(u_input.c, _wgslsmith_dot_vec3_i32(-arg_0.c, -var_0.c), -arg_2.x & -2147483647i), -(-arg_2.x & -33585i)), Struct_1(arg_0.a, abs((arg_1 >> (arg_1 % 32u)) | ~44618u), _wgslsmith_mult_vec3_i32(var_0.c, countOneBits(func_4(arg_0, Struct_1(vec2<bool>(arg_0.a.x, var_0.a.x), 14716u, arg_2, arg_2.x), arg_0, vec3<f32>(-320f, 409f, 261f)).c)), min(u_input.c, _wgslsmith_dot_vec2_i32(var_0.c.yy, -vec2<i32>(2147483647i, -1i)))), arg_0, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-972f)), _wgslsmith_f_op_f32(1244f - -1000f), var_0.a.x && true)), _wgslsmith_f_op_f32(f32(-1f) * -518f))), _wgslsmith_f_op_f32(sign(722f)))).c.x;
    let var_4 = min(~arg_1, arg_1);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1169f, -1000f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-581f, -493f)))), true || all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-394f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1654f - 921f), _wgslsmith_f_op_f32(f32(-1f) * -1306f), true)))), vec2<bool>(arg_0.a.x, true)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_6(func_5(func_4(Struct_1(vec2<bool>(true, true), ~u_input.b.x, ~vec3<i32>(-1i, u_input.a, 1i), _wgslsmith_mod_i32(35517i, -19799i)), Struct_1(func_2(Struct_1(vec2<bool>(false, true), u_input.b.x, vec3<i32>(u_input.a, 15205i, -54989i), u_input.d), Struct_1(vec2<bool>(false, true), 0u, vec3<i32>(u_input.a, u_input.c, 19079i), u_input.d)), u_input.b.x, firstTrailingBit(vec3<i32>(26638i, -1i, 2147483647i)), _wgslsmith_clamp_i32(u_input.a, u_input.d, 53762i)), Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, false), false), max(u_input.b.x, 4294967295u), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 54807i, u_input.d), vec3<i32>(2147483647i, u_input.d, u_input.c)), u_input.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(318f, 1551f, -546f)))), u_input.b.x, vec3<i32>(-7488i, _wgslsmith_dot_vec3_i32(min(_wgslsmith_add_vec3_i32(vec3<i32>(-66026i, -34247i, -28420i), vec3<i32>(-1i, u_input.d, u_input.c)), select(vec3<i32>(-2147483647i, 24124i, u_input.a), vec3<i32>(14573i, u_input.c, 5796i), vec3<bool>(false, false, false))), min(~vec3<i32>(2147483647i, 0i, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(2654i, -9819i, u_input.c), vec3<i32>(u_input.a, u_input.c, -5406i)))), u_input.a)));
    var var_1 = Struct_1(!vec2<bool>(true, !all(vec2<bool>(false, false))), ~_wgslsmith_add_u32(u_input.b.x | (u_input.b.x | u_input.b.x), ~(~43228u)), vec3<i32>(-1i) * -vec3<i32>(-19545i, ~45198i, u_input.c), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.c), u_input.a, reverseBits(u_input.c)), ~(~vec3<i32>(u_input.c, -9773i, u_input.d))), _wgslsmith_sub_i32(27484i, u_input.d)));
    var_1 = func_4(Struct_1(!vec2<bool>(!var_1.a.x, var_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 86365u, 4294967295u, ~0u), vec4<u32>(1u, 21464u, var_1.b, 4294967295u) & vec4<u32>(var_1.b, 1u, u_input.b.x, u_input.b.x)), vec3<i32>(abs(firstTrailingBit(-27731i)), u_input.a, firstLeadingBit(min(u_input.d, 12238i))), func_4(func_5(func_5(Struct_1(var_1.a, 80338u, var_1.c, 9634i))), Struct_1(vec2<bool>(true, true), func_4(Struct_1(var_1.a, u_input.b.x, vec3<i32>(-55233i, -10002i, var_1.c.x), u_input.d), Struct_1(var_1.a, 0u, vec3<i32>(u_input.c, 2147483647i, var_1.c.x), -1i), Struct_1(vec2<bool>(true, var_1.a.x), var_1.b, var_1.c, -18127i), vec3<f32>(var_0.x, 201f, var_0.x)).b, var_1.c, 1i), func_5(Struct_1(vec2<bool>(true, true), var_1.b, vec3<i32>(-38359i, var_1.c.x, -2147483647i), -2147483647i)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-380f, var_0.x, var_0.x)))).d), Struct_1(select(select(vec2<bool>(var_1.a.x, var_1.a.x), select(var_1.a, var_1.a, var_1.a.x), var_1.b <= var_1.b), func_5(Struct_1(vec2<bool>(false, true), 1u, vec3<i32>(var_1.c.x, u_input.a, u_input.c), var_1.c.x)).a, false), 1u, var_1.c, -u_input.a & 1i), func_4(func_5(func_5(Struct_1(vec2<bool>(var_1.a.x, var_1.a.x), 28531u, vec3<i32>(-46371i, 12173i, var_1.c.x), 2147483647i))), func_4(func_4(Struct_1(vec2<bool>(var_1.a.x, var_1.a.x), 4294967295u, var_1.c, var_1.d), Struct_1(var_1.a, 4294967295u, var_1.c, var_1.c.x), Struct_1(vec2<bool>(true, true), 85528u, var_1.c, u_input.d), vec3<f32>(276f, var_0.x, var_0.x)), func_4(Struct_1(var_1.a, 1u, vec3<i32>(u_input.d, var_1.d, var_1.d), 0i), Struct_1(var_1.a, 0u, vec3<i32>(14387i, 41007i, 1i), -2147483647i), Struct_1(var_1.a, 1u, var_1.c, 2147483647i), vec3<f32>(var_0.x, -698f, var_0.x)), Struct_1(var_1.a, ~var_1.b, ~vec3<i32>(-2315i, var_1.c.x, 11380i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, -2147483647i), vec2<i32>(var_1.c.x, 1889i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(981f, -104f, var_0.x))))), Struct_1(var_1.a, var_1.b, select(~vec3<i32>(u_input.c, var_1.d, u_input.c), var_1.c, vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), 1i), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, -1028f)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -199f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(func_6(func_5(Struct_1(vec2<bool>(true, false), var_1.b, vec3<i32>(-57109i, -51993i, u_input.d), 2147483647i)), func_4(Struct_1(vec2<bool>(var_1.a.x, false), 4294967295u, vec3<i32>(var_1.c.x, 16034i, -31727i), -1i), Struct_1(var_1.a, 76220u, vec3<i32>(-2147483647i, 17594i, 2147483647i), 14947i), Struct_1(var_1.a, 8781u, var_1.c, -24598i), vec3<f32>(var_0.x, -374f, var_0.x)).b, vec3<i32>(var_1.c.x, -1i, u_input.a) | vec3<i32>(var_1.d, 32468i, 22874i))).x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-253f)), var_0.x, 494f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(1557f, var_0.x, var_0.x))))));
    var_1 = func_4(Struct_1(vec2<bool>(var_0.x != -454f, !(false || var_1.a.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u)), ~var_1.b), vec3<i32>(_wgslsmith_clamp_i32(var_1.d, var_1.c.x, -30147i) >> (var_1.b % 32u), -(~(-1i)), u_input.a), _wgslsmith_div_i32(reverseBits(25270i), firstLeadingBit(u_input.a))), func_4(Struct_1(!var_1.a, ~(~var_1.b), func_5(func_4(Struct_1(vec2<bool>(true, true), var_1.b, var_1.c, -23435i), Struct_1(vec2<bool>(true, var_1.a.x), var_1.b, vec3<i32>(28561i, u_input.d, 2147483647i), 24006i), Struct_1(var_1.a, 14510u, vec3<i32>(var_1.d, 0i, 1i), -2147483647i), vec3<f32>(var_0.x, 173f, var_0.x))).c, ~(i32(-1i) * -2147483647i)), func_4(func_4(Struct_1(var_1.a, 0u, vec3<i32>(u_input.c, 62412i, u_input.c), -24291i), func_4(Struct_1(var_1.a, var_1.b, var_1.c, -2147483647i), Struct_1(vec2<bool>(var_1.a.x, var_1.a.x), u_input.b.x, var_1.c, u_input.d), Struct_1(var_1.a, 102097u, var_1.c, u_input.c), vec3<f32>(var_0.x, 698f, 438f)), func_5(Struct_1(vec2<bool>(true, var_1.a.x), 71830u, var_1.c, -2147483647i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -119f, -940f) * vec3<f32>(-1132f, -958f, var_0.x))), func_5(func_4(Struct_1(var_1.a, 1u, vec3<i32>(1i, u_input.a, u_input.c), -5326i), Struct_1(vec2<bool>(false, true), 1u, var_1.c, var_1.d), Struct_1(var_1.a, u_input.b.x, var_1.c, var_1.c.x), vec3<f32>(1936f, var_0.x, 724f))), func_5(func_5(Struct_1(vec2<bool>(var_1.a.x, false), 24727u, var_1.c, -2147483647i))), vec3<f32>(var_0.x, -103f, _wgslsmith_f_op_f32(floor(-1017f)))), func_4(func_4(func_5(Struct_1(var_1.a, u_input.b.x, var_1.c, 1i)), Struct_1(vec2<bool>(var_1.a.x, false), 0u, var_1.c, u_input.a), Struct_1(var_1.a, u_input.b.x, var_1.c, -76193i), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, 1000f)))), func_4(func_5(Struct_1(vec2<bool>(var_1.a.x, var_1.a.x), 1u, vec3<i32>(var_1.c.x, u_input.d, var_1.c.x), -35611i)), func_5(Struct_1(vec2<bool>(var_1.a.x, var_1.a.x), var_1.b, vec3<i32>(2147483647i, -1i, u_input.c), u_input.c)), Struct_1(vec2<bool>(var_1.a.x, false), u_input.b.x, var_1.c, -16949i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(548f, 466f, var_0.x))), func_5(func_4(Struct_1(var_1.a, 42041u, var_1.c, 21979i), Struct_1(vec2<bool>(true, var_1.a.x), var_1.b, vec3<i32>(1i, u_input.c, u_input.c), -9643i), Struct_1(var_1.a, 66911u, vec3<i32>(13028i, 56539i, 0i), var_1.c.x), vec3<f32>(var_0.x, 1933f, 2300f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(var_0.x, var_0.x, 478f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(305f, -283f, 816f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) - vec3<f32>(-288f, var_0.x, -518f)))), Struct_1(!var_1.a, min(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), ~(~43285u)), var_1.c, u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, 232f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(var_0.x, var_0.x, 994f)), u_input.d <= u_input.c))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1188f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1895f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, 1328f, var_0.x))))))));
    let var_2 = var_1.b;
    return Struct_1(vec2<bool>(true, false), ~_wgslsmith_dot_vec2_u32(u_input.b, ~(u_input.b >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))), ~countOneBits(var_1.c), u_input.c);
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_6(arg_2, 24714u, vec3<i32>(-1i, u_input.d, _wgslsmith_clamp_i32(u_input.a, 1i, 43296i)))).x);
    var var_1 = Struct_1(!vec2<bool>(arg_2.a.x, all(vec4<bool>(arg_1.a.x, false, false, arg_1.a.x))), arg_1.b, func_1().c, _wgslsmith_add_i32(arg_0.x, func_5(Struct_1(arg_1.a, _wgslsmith_div_u32(66583u, 28347u), vec3<i32>(arg_0.x, u_input.a, 1i) | vec3<i32>(u_input.c, arg_2.d, arg_0.x), 1i)).c.x));
    let var_2 = func_5(arg_2).a.x;
    var var_3 = _wgslsmith_div_vec2_u32(~(~(~u_input.b)), select(select(~(~u_input.b), vec2<u32>(~0u, 0u), true), _wgslsmith_mod_vec2_u32(vec2<u32>(46856u, arg_1.b) ^ u_input.b, ~vec2<u32>(u_input.b.x, 1u)) & ~u_input.b, !(~arg_1.c.x > arg_1.d)));
    var_1 = Struct_1(vec2<bool>(arg_2.a.x, !arg_2.a.x), 1u, var_1.c, ~arg_1.d ^ (u_input.d >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.b, arg_1.b, 22416u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.x, u_input.b.x, 0u), vec3<u32>(arg_2.b, 4294967295u, arg_2.b))) % 32u)));
    return _wgslsmith_sub_u32(func_4(func_5(func_4(arg_2, func_5(arg_1), func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1111f, var_0, var_0)))), Struct_1(select(func_1().a, arg_1.a, true), var_3.x ^ func_1().b, arg_2.c ^ (arg_2.c >> (vec3<u32>(arg_1.b, var_1.b, 0u) % vec3<u32>(32u))), arg_0.x), arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, var_0, 2128f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1785f, 419f) + vec3<f32>(1931f, -596f, -2107f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2347f, 1853f, -798f) - vec3<f32>(var_0, 480f, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1466f, 1903f, 908f)), var_2)))).b, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(!all(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(~vec3<u32>(51020u, 74114u, 0u), ~vec3<u32>(75361u, u_input.b.x, u_input.b.x)), abs(~vec3<u32>(1u, u_input.b.x, 1u) & reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 10010u)))), vec3<i32>(~_wgslsmith_mult_i32(u_input.d, u_input.c), u_input.c, ~u_input.d >> (_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec3<u32>(0u, 4294967295u, u_input.b.x)), vec3<u32>(u_input.b.x, 34419u, u_input.b.x)) % 32u)), 1i & u_input.c);
    let var_1 = !select(!(!(!vec3<bool>(var_0.a.x, true, var_0.a.x))), vec3<bool>(!(var_0.a.x || var_0.a.x), !any(vec2<bool>(false, false)), false), _wgslsmith_mult_i32(u_input.a, -var_0.c.x) <= _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.d, var_0.d, var_0.d), -vec4<i32>(14640i, -2147483647i, u_input.d, 1i)));
    let var_2 = var_0;
    let var_3 = any(var_1) & true;
    let var_4 = vec2<u32>(0u, var_0.b);
    let var_5 = u_input.a;
    var var_6 = var_2;
    var var_7 = func_7(_wgslsmith_add_vec3_i32(var_6.c, reverseBits(var_2.c)), func_1(), var_0, var_0.b);
    let var_8 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2026f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_6(var_0, var_6.b, var_2.c)).x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_8, var_8)))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(var_8)), 1f)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1310f, -1887f) * vec2<f32>(-732f, -402f)) + vec2<f32>(var_8, var_8))))), _wgslsmith_div_vec2_i32(vec2<i32>(var_5, -2147483647i), (vec2<i32>(-16016i, var_6.d) | vec2<i32>(-68413i, var_0.d)) >> (firstTrailingBit(var_4) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(var_4, var_4) % vec2<u32>(32u)), 0i, var_5);
}

