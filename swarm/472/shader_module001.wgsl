struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>) -> i32 {
    var var_0 = Struct_1(vec3<i32>(-2147483647i ^ ~u_input.d.x, 20818i, _wgslsmith_dot_vec3_i32(u_input.a.xzw, vec3<i32>(-12128i, -1i, -2147483647i) >> (~vec3<u32>(arg_1.x, arg_1.x, arg_1.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(abs(1021f)));
    var var_1 = 1000f;
    var var_2 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(var_0.a) >> (~arg_1.zww % vec3<u32>(32u)), vec3<i32>(u_input.b, 2147483647i, 10385i), ~(~vec3<i32>(u_input.c.x, u_input.d.x, u_input.a.x))), u_input.a.wxz), _wgslsmith_f_op_f32(f32(-1f) * -1402f));
    var var_3 = Struct_1(abs(min(vec3<i32>(_wgslsmith_div_i32(var_0.a.x, 3829i), 0i, ~(-17257i)), _wgslsmith_div_vec3_i32(var_2.a, ~vec3<i32>(-12457i, var_0.a.x, 13415i)))), 471f);
    var_2 = Struct_1(vec3<i32>(-(~u_input.d.x), u_input.d.x, -44252i >> (0u % 32u)), _wgslsmith_f_op_f32(-var_2.b));
    return 0i;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = !(!vec2<bool>(true, arg_0.x));
    var var_1 = Struct_1(vec3<i32>(2147483647i, -2147483647i, -51464i), -192f);
    let var_2 = var_0.x;
    let var_3 = select(~_wgslsmith_mult_vec3_u32(abs(firstLeadingBit(vec3<u32>(32601u, 1u, 72612u))), countOneBits(vec3<u32>(1u, 1u, 1u))), firstTrailingBit(vec3<u32>(~(~0u), _wgslsmith_add_u32(56131u, countOneBits(45726u)), min(min(1u, 8396u), 48203u))), var_0.x);
    var_1 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(func_3(var_0, vec4<u32>(4890u, 15421u, 0u, var_3.x) & vec4<u32>(var_3.x, var_3.x, var_3.x, 3302u)), -var_1.a.x & -var_1.a.x, -_wgslsmith_mod_i32(u_input.a.x, 2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i | var_1.a.x, var_1.a.x >> (1u % 32u), 1i), ~vec3<i32>(-2147483647i, u_input.c.x, var_1.a.x), abs(~vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_1.b), all(vec2<bool>(var_0.x, arg_0.x && arg_0.x)))));
    return Struct_1(vec3<i32>(-2147483647i, max(13612i, ~(-1i)), 37887i), _wgslsmith_f_op_f32(sign(1683f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = all(vec2<bool>(!(!any(vec4<bool>(false, true, true, false))), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    let var_1 = firstTrailingBit(-(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 23810i), arg_1.wz) & _wgslsmith_add_vec2_i32(arg_1.zw, u_input.a.xx))) >> (~_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(5939u, 0u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 39359u), vec2<u32>(17408u, 1u), vec2<bool>(false, true)), reverseBits(vec2<u32>(10839u, 41674u)))) % vec2<u32>(32u));
    var_0 = any(select(vec2<bool>(true, false), vec2<bool>(true, true), _wgslsmith_f_op_f32(1148f + -1897f) <= _wgslsmith_f_op_f32(ceil(-285f)))) | all(vec3<bool>(true || (var_1.x != u_input.a.x), true, true & (arg_0.a.x <= 0i)));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, var_2.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -1709f)), true)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.b, -1000f))), false))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-676f, 1390f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1824f, 1066f), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.b, var_2.b), vec2<f32>(arg_0.b, -638f)), true))))));
    return func_2(vec2<bool>(any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, false), all(vec2<bool>(false, false)))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(arg_1.a.x, -u_input.c.x, u_input.e.x), _wgslsmith_f_op_f32(659f + _wgslsmith_f_op_f32(1075f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - arg_1.b))));
    var var_1 = var_0.a;
    let var_2 = Struct_1(~u_input.a.yyw, -1413f);
    var var_3 = arg_1;
    var_3 = arg_1;
    return Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(1i), arg_1.a.x & -2147483647i, arg_0.a.x), u_input.e) & var_0.a, _wgslsmith_f_op_f32(var_3.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f) + arg_0.b)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = true;
    let var_1 = func_5(func_4(func_2(arg_0.zz), ~(-firstTrailingBit(u_input.a))), func_4(Struct_1(vec3<i32>(-2147483647i | u_input.b, _wgslsmith_clamp_i32(u_input.c.x, -1038i, 38814i), countOneBits(29953i)), arg_1.x), min(vec4<i32>(_wgslsmith_mod_i32(-3078i, -1i), u_input.e.x, func_3(arg_0.zx, arg_3), ~u_input.c.x), -vec4<i32>(u_input.a.x, 72227i, 3701i, u_input.a.x))));
    var var_2 = Struct_1(vec3<i32>(u_input.c.x, var_1.a.x, _wgslsmith_mult_i32(var_1.a.x, reverseBits(0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b)))));
    var_2 = Struct_1(vec3<i32>(i32(-1i) * -8866i, i32(-1i) * -2147483647i, func_4(var_1, u_input.a).a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x)), 1f)));
    var var_3 = var_1;
    return Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-var_2.a, ~(-vec3<i32>(var_3.a.x, -8189i, var_2.a.x)), var_1.a & var_3.a), select(func_2(vec2<bool>(arg_0.x, arg_0.x)).a, var_1.a, !arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1233f));
}

fn func_6(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.b, arg_2.b, arg_2.b, arg_2.b))) + vec4<f32>(1749f, -1463f, 127f, arg_2.b)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(280f, arg_2.b, 856f, arg_2.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-784f, arg_2.b, 1575f, 1183f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, arg_2.b, arg_2.b, arg_2.b))), all(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, true, true, true), vec4<bool>(arg_0, true, arg_0, arg_0))))))));
    let var_1 = vec3<u32>(_wgslsmith_add_u32(~(~1u), _wgslsmith_clamp_u32(countOneBits(1u), 4294967295u, ~_wgslsmith_mult_u32(45668u, 16214u))), max(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 3179u, 9772u), vec4<u32>(6355u, 33211u, 0u, 4294967295u)), 1u), _wgslsmith_sub_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 16272u, 1u), vec3<u32>(11566u, 1u, 7352u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 13866u))), ~(~25822u)));
    let var_2 = arg_2;
    let var_3 = _wgslsmith_sub_i32(u_input.a.x, -25858i);
    var var_4 = reverseBits(abs(~u_input.a));
    return var_2;
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = func_5(arg_2, func_6(true, select(vec4<i32>(-1i, arg_1.a.x, _wgslsmith_div_i32(arg_1.a.x, -9553i), -1i), u_input.a, !(!vec4<bool>(false, arg_3.x, true, arg_3.x))), Struct_1(arg_1.a, -399f), min(~(-arg_1.a.yz), ~vec2<i32>(-2147483647i, arg_1.a.x))));
    let var_1 = func_1(select(!arg_3, select(select(vec3<bool>(arg_3.x, arg_3.x, arg_3.x), arg_3, vec3<bool>(false, arg_3.x, arg_3.x)), arg_3, true), arg_3), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 3206f)), _wgslsmith_f_op_f32(trunc(func_5(Struct_1(u_input.d, arg_2.b), func_6(true, u_input.a, Struct_1(vec3<i32>(var_0.a.x, arg_2.a.x, 30400i), 679f), var_0.a.xz)).b))), vec3<u32>(reverseBits(arg_0.x), arg_0.x, arg_0.x) << (reverseBits(~max(vec3<u32>(1u, 0u, arg_0.x), vec3<u32>(arg_0.x, 4294967295u, 4294967295u))) % vec3<u32>(32u)), abs(select(vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x) ^ select(vec4<u32>(38658u, 18548u, 4294967295u, 1u), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_0.x), true), vec4<u32>(arg_0.x, 42580u, 77316u, _wgslsmith_mult_u32(arg_0.x, arg_0.x)), !(!vec4<bool>(false, false, arg_3.x, true)))));
    var var_2 = func_4(Struct_1(func_5(Struct_1(u_input.a.zzz, var_0.b), Struct_1(var_0.a, 1124f)).a ^ vec3<i32>(-2147483647i, _wgslsmith_sub_i32(arg_2.a.x, -15921i), 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -2825f)), vec4<i32>(-(~arg_2.a.x), ~(~(-1i) | _wgslsmith_clamp_i32(arg_2.a.x, -2147483647i, arg_1.a.x)), -11896i, -var_1.a.x));
    var var_3 = func_1(select(vec3<bool>(false, arg_3.x, any(!vec3<bool>(arg_3.x, arg_3.x, false))), select(arg_3, !(!arg_3), arg_3.x), vec3<bool>(var_1.a.x <= (0i << (1u % 32u)), true, true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.b, -1000f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1684f, arg_2.b) - vec2<f32>(arg_1.b, 571f)))))), ~max(vec3<u32>(~arg_0.x, 0u, _wgslsmith_clamp_u32(arg_0.x, arg_0.x, arg_0.x)), ~vec3<u32>(1u, 0u, arg_0.x)), vec4<u32>(arg_0.x, 1u, 1u, 1u));
    var var_4 = arg_3.x;
    return func_5(var_1, Struct_1(vec3<i32>(_wgslsmith_add_i32(54856i, -49669i), _wgslsmith_sub_i32(2147483647i, _wgslsmith_sub_i32(35043i, var_2.a.x)), var_1.a.x ^ 3536i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(var_3.b * -501f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(vec2<u32>(select(52882u, 4294967295u, all(vec2<bool>(true, true))), _wgslsmith_sub_u32(1u, firstLeadingBit(4294967295u))), func_6(!(u_input.a.x >= _wgslsmith_mult_i32(43264i, u_input.b)), u_input.a, func_1(vec3<bool>(all(vec4<bool>(false, false, true, false)), true, false), vec2<f32>(-160f, _wgslsmith_f_op_f32(sign(-104f))), reverseBits(select(vec3<u32>(41947u, 19423u, 15253u), vec3<u32>(0u, 31332u, 59623u), vec3<bool>(true, true, false))), _wgslsmith_add_vec4_u32(min(vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(35955u, 0u, 1u, 23435u)), vec4<u32>(1u, 1u, 1u, 1u))), func_5(func_5(Struct_1(u_input.a.yxx, 1053f), Struct_1(u_input.e, -501f)), func_1(vec3<bool>(true, false, true), vec2<f32>(-1631f, 241f), ~vec3<u32>(2666u, 4294967295u, 30656u), vec4<u32>(1u, 0u, 52057u, 1u))).a.zy), Struct_1(u_input.e | ~select(vec3<i32>(u_input.a.x, u_input.b, 1i), u_input.d, vec3<bool>(false, false, false)), func_4(Struct_1(min(vec3<i32>(u_input.a.x, u_input.b, u_input.e.x), u_input.e), -204f), u_input.a).b), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))));
    var var_1 = vec3<bool>((_wgslsmith_f_op_f32(round(var_0.b)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))) & true, !(false || all(vec3<bool>(true, true, true))), false);
    let var_2 = Struct_1(countOneBits(vec3<i32>(~(u_input.d.x ^ u_input.e.x), firstTrailingBit(~var_0.a.x), ~countOneBits(-17960i))), func_2(!(!(!var_1.zz))).b);
    var var_3 = select(vec3<i32>(var_2.a.x, max(var_0.a.x, firstLeadingBit(abs(-2147483647i))), var_0.a.x), var_2.a, (_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(0i, var_2.a.x, 25203i, var_2.a.x), u_input.a)) == firstLeadingBit(var_0.a.x)) || !(!all(vec4<bool>(true, false, var_1.x, true))));
    var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(-select(-2147483647i, var_3.x, false), 14450i, var_2.a.x), ~u_input.a.yzx);
    let var_4 = false;
    let var_5 = any(select(!vec3<bool>(false, any(var_1.yz), any(vec3<bool>(false, true, var_1.x))), vec3<bool>(true, 1u >= _wgslsmith_dot_vec3_u32(vec3<u32>(60848u, 15995u, 1u), vec3<u32>(1u, 61747u, 0u)), var_4), var_4));
    let var_6 = ~firstLeadingBit(-(~var_2.a.x) >> (~firstLeadingBit(1u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-func_2(vec2<bool>(true, false)).a, _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 1u, ~0u, ~firstTrailingBit(43347u)), ~vec4<u32>(1u, 1u, 1u, 1u)), 575f, -11669i, var_6);
}

