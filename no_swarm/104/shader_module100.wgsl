struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -31605i, i32(-2147483648), -1i);

var<private> global1: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(547f, 702f, 133f), vec3<f32>(-490f, -712f, -536f), vec3<f32>(-495f, 879f, 2081f), vec3<f32>(1417f, -308f, -673f), vec3<f32>(737f, 1000f, 965f), vec3<f32>(-528f, 1000f, -826f), vec3<f32>(-364f, -850f, 1030f), vec3<f32>(1000f, 389f, 792f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> f32 {
    global1 = array<vec3<f32>, 8>();
    let var_0 = vec4<u32>(~arg_1.b << (arg_1.a % 32u), 57130u, _wgslsmith_dot_vec2_u32(firstLeadingBit(firstLeadingBit(vec2<u32>(arg_2, arg_2))), vec2<u32>(~1u, arg_1.a ^ ~10577u)), _wgslsmith_div_u32(u_input.a, 1u));
    let var_1 = Struct_3(2147483647i, arg_1, vec4<u32>(arg_1.b << (~67118u % 32u), 46918u, 95449u, 0u), var_0.xzw);
    var var_2 = firstLeadingBit(max(vec4<i32>(firstTrailingBit(86513i), var_1.a, -reverseBits(global0.x), _wgslsmith_mult_i32(var_1.a, ~1i)), -_wgslsmith_sub_vec4_i32(abs(vec4<i32>(42375i, 7149i, global0.x, global0.x)), ~vec4<i32>(var_1.a, 0i, global0.x, global0.x))));
    let var_3 = ~(-(firstTrailingBit(~global0.x) >> (68654u % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(810f)) * _wgslsmith_f_op_f32(478f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-571f)))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> u32 {
    var var_0 = max(0u, ~u_input.a);
    global1 = array<vec3<f32>, 8>();
    let var_1 = Struct_3(global0.x, arg_1.b, _wgslsmith_mult_vec4_u32(firstTrailingBit(~(vec4<u32>(u_input.a, arg_1.b.b, u_input.a, u_input.a) ^ vec4<u32>(4294967295u, 1u, arg_1.b.b, 4294967295u))), max(abs(max(vec4<u32>(39317u, u_input.a, u_input.a, arg_1.b.a), vec4<u32>(13562u, 28499u, u_input.a, 26466u))), vec4<u32>(14409u, 1u << (u_input.a % 32u), ~arg_1.b.a, ~arg_1.b.b))), abs(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b.b, u_input.a, 42395u), vec3<u32>(40856u, 1u, u_input.a)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.a, arg_1.b.a, 0u), vec3<u32>(u_input.a, 101972u, 0u)) % vec3<u32>(32u)))));
    global0 = vec4<i32>(-(~1i), ~(-var_1.a), _wgslsmith_sub_i32(1i, 0i << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.a, 16103u), vec2<u32>(var_1.d.x, u_input.a)), 4294967295u, 17784u) % 32u)), _wgslsmith_add_i32(-45548i, var_1.a));
    let var_2 = vec2<bool>(false, all(!select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, true), arg_2)) & true);
    return firstLeadingBit(1u);
}

fn func_2(arg_0: Struct_5, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_1(~495u, arg_1.x);
    var var_1 = _wgslsmith_add_u32(var_0.b, _wgslsmith_clamp_u32(var_0.a, 1u, arg_1.x));
    var var_2 = global0.xz;
    var_1 = func_4(var_2.x << (var_0.a % 32u), Struct_2(_wgslsmith_f_op_f32(func_3(select(true, false, true), var_0, 0u)), var_0), any(!(!vec3<bool>(false, arg_0.b, false))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(241f, 222f) * 2538f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-195f * _wgslsmith_f_op_f32(exp2(arg_0.c.x))) * _wgslsmith_f_op_f32(trunc(arg_0.c.x))))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1115f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3)))) * var_3), var_0);
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> i32 {
    return -7207i;
}

fn func_6(arg_0: i32, arg_1: Struct_5, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(96442u, _wgslsmith_clamp_u32(u_input.a, 1884u, u_input.a), u_input.a)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(u_input.a, 56382u, u_input.a) & vec3<u32>(u_input.a, 17813u, u_input.a)), vec3<u32>(countOneBits(1006u), 4294967295u, u_input.a) & firstTrailingBit(~vec3<u32>(u_input.a, 116335u, 8621u))), func_2(Struct_5(abs(-1i | arg_0), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 2164f))), vec4<u32>(~_wgslsmith_sub_u32(u_input.a, 13724u), ~_wgslsmith_sub_u32(u_input.a, 20226u), ~u_input.a, 1u >> (1u % 32u))).b, Struct_3(global0.x, Struct_1(max(_wgslsmith_sub_u32(u_input.a, 4294967295u), 12880u), abs(min(1u, u_input.a))), reverseBits(max(vec4<u32>(u_input.a, u_input.a, 4294967295u, 78946u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) & ~(~vec4<u32>(u_input.a, u_input.a, 16829u, 44087u)), vec3<u32>(39709u >> (u_input.a % 32u), u_input.a, _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(55266u, 1u)))));
    var var_1 = var_0.c.b;
    var var_2 = _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(~24114u, 46547u) << (vec2<u32>(~4294967295u, var_0.c.d.x) % vec2<u32>(32u))), ~max(~vec2<u32>(var_1.a, 0u), var_0.c.c.yy), abs(~vec2<u32>(var_1.a, var_0.a.x) | (_wgslsmith_mod_vec2_u32(var_0.c.d.zx, vec2<u32>(u_input.a, u_input.a)) << (~var_0.c.d.zx % vec2<u32>(32u)))));
    var var_3 = !(!select(!vec4<bool>(arg_1.b, true, false, arg_1.b), select(vec4<bool>(arg_1.b, arg_3, arg_3, true), !vec4<bool>(arg_1.b, false, arg_3, arg_3), true), select(vec4<bool>(arg_3, arg_3, false, true), !vec4<bool>(true, arg_3, false, arg_1.b), select(vec4<bool>(true, arg_1.b, arg_1.b, true), vec4<bool>(false, arg_3, arg_1.b, arg_1.b), arg_1.b))));
    let var_4 = ~firstLeadingBit(_wgslsmith_dot_vec2_u32(var_0.a.zy, vec2<u32>(_wgslsmith_div_u32(var_1.a, 11166u), var_0.a.x)));
    return func_2(arg_1, vec4<u32>(42008u, 79358u, ~(~31727u | var_4), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.c.b.b, var_4), var_1.b) << (max(reverseBits(30157u), var_0.b.b & var_0.a.x) % 32u))).b;
}

fn func_1() -> vec2<f32> {
    var var_0 = Struct_3(-(~(~global0.x)), func_6(abs(func_5(~vec3<u32>(35018u, 0u, 4294967295u), _wgslsmith_f_op_f32(-1744f * 939f), func_2(Struct_5(global0.x, true, vec2<f32>(1000f, 1767f)), vec4<u32>(1u, 0u, 5809u, 1u)))), Struct_5(reverseBits(global0.x) >> ((u_input.a ^ 6105u) % 32u), any(vec2<bool>(false, false)) && true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(279f, 2927f) * vec2<f32>(272f, -1161f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-103f, 558f)), _wgslsmith_f_op_f32(f32(-1f) * -957f))), -1153f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-615f, 466f)) - 1362f)), ~(reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)) | _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 10881u, 65867u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), ~vec4<u32>(31189u, u_input.a, u_input.a, 1u))), vec3<u32>(func_4(global0.x, Struct_2(_wgslsmith_f_op_f32(trunc(822f)), func_2(Struct_5(0i, false, vec2<f32>(232f, -1000f)), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)).b), true), ~u_input.a, func_2(Struct_5(global0.x, any(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2053f, -1449f) + vec2<f32>(-495f, -576f))), ~vec4<u32>(1u, u_input.a, u_input.a, 26044u)).b.b));
    let var_1 = 18403i;
    var_0 = Struct_3(max(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1, var_1, -63169i) | vec4<i32>(var_0.a, 0i, global0.x, 1i), vec4<i32>(2147483647i, var_0.a, var_0.a, var_0.a) & vec4<i32>(2147483647i, global0.x, 44286i, 40045i)), var_1) << (~_wgslsmith_add_u32(u_input.a, countOneBits(119786u)) % 32u), Struct_1((4294967295u & var_0.b.a) ^ max(0u, abs(0u)), ~(~(~var_0.d.x))), abs(~(abs(vec4<u32>(u_input.a, var_0.b.b, 1u, 0u)) ^ _wgslsmith_clamp_vec4_u32(var_0.c, var_0.c, var_0.c))), vec3<u32>(u_input.a, 0u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 37242u, u_input.a, 14769u), vec4<u32>(9327u, 1u, u_input.a, 63684u)) & var_0.d.x, 0u, false)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1040f, 780f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-541f, 300f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(143f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -657f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(575f, -897f), vec2<f32>(-740f, -193f), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1714f, 298f) - vec2<f32>(1000f, -258f)) - vec2<f32>(1918f, 371f)), true & any(vec4<bool>(true, false, false, true))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - 1152f) * func_2(Struct_5(-4490i, true, vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(floor(var_2.x)))), var_0.c).a);
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(var_2.x, -666f), _wgslsmith_f_op_f32(trunc(var_2.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.x, var_2.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-530f, var_2.x) + vec2<f32>(270f, 1000f)), vec2<f32>(-467f, 944f)), vec2<f32>(_wgslsmith_f_op_f32(var_2.x - 433f), -173f))))));
}

fn func_7(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = func_2(Struct_5(reverseBits(arg_0.x | -6963i), (func_4(arg_0.x, Struct_2(arg_1, Struct_1(u_input.a, u_input.a)), true) > _wgslsmith_dot_vec4_u32(vec4<u32>(13462u, u_input.a, 1u, 0u), vec4<u32>(1u, u_input.a, 54625u, 9952u))) == true, vec2<f32>(arg_1, func_2(Struct_5(2147483647i, true, arg_2), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, 1u, 48301u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))).a)), ~reverseBits(~vec4<u32>(0u, 0u, 0u, 0u)) & select(~vec4<u32>(103148u, 10142u, u_input.a, u_input.a), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 12714u, u_input.a), vec4<u32>(0u, u_input.a, 4294967295u, u_input.a)), ~vec4<u32>(0u, u_input.a, 4294967295u, 5550u), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false)), true)).b;
    global1 = array<vec3<f32>, 8>();
    global1 = array<vec3<f32>, 8>();
    global1 = array<vec3<f32>, 8>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global1[_wgslsmith_index_u32(~8642u, 8u)])) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 8u)])))))));
    return Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.a, 4294967295u, 1u) << (vec3<u32>(1u, 1u, var_0.a) % vec3<u32>(32u))), ~vec3<u32>(4294967295u, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(41441u, 1u, u_input.a), max(vec3<u32>(45547u, var_0.a, 0u), vec3<u32>(1597u, var_0.b, 0u)))), vec3<u32>(1193u, firstLeadingBit(u_input.a), min(_wgslsmith_mult_u32(4580u, 1u), _wgslsmith_div_u32(u_input.a, 3976u)))), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 8>();
    global1 = array<vec3<f32>, 8>();
    var var_0 = func_7(vec3<i32>(select(-21312i, global0.x, true), 66355i, global0.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.x, 1i, global0.x), vec4<i32>(global0.x, global0.x, -1i, 29271i))) | global0.wzy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1310f, 150f))) * 1776f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_1())))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1368f, _wgslsmith_f_op_f32(-271f + 707f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(569f, -320f)))))));
    var var_1 = Struct_5(i32(-1i) * -1i, any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, true)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(298f, -1649f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1732f), _wgslsmith_f_op_f32(round(295f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(215f, -292f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(125f, -1000f))), vec2<bool>(false, true))))));
    global1 = array<vec3<f32>, 8>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.x), 1935f, _wgslsmith_f_op_f32(round(var_1.c.x)), var_1.c.x))));
    global0 = -firstTrailingBit(-vec4<i32>(var_1.a >> (u_input.a % 32u), -2147483647i, 1i, -var_1.a));
    let var_3 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, firstTrailingBit(global0.zz), ~select(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 19587u), vec2<u32>(16255u, u_input.a)), vec2<u32>(var_0.a, u_input.a), var_1.b), ~u_input.a, vec4<u32>(u_input.a, _wgslsmith_clamp_u32(79598u, var_0.b, ~28678u), u_input.a, 24870u));
}

