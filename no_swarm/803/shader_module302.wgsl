struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    global0 = -1205f;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1739f), _wgslsmith_div_f32(-379f, -507f))) + _wgslsmith_f_op_f32(abs(-2114f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(847f, 697f)))), 429f))));
    let var_0 = Struct_2(Struct_1(u_input.c, u_input.a, u_input.c, ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 34063u), abs(vec3<u32>(70778u, 63825u, u_input.a)))), Struct_1(firstTrailingBit(~(-vec3<i32>(u_input.c.x, -1i, u_input.c.x))), u_input.a, ~vec3<i32>(60471i, firstTrailingBit(u_input.e), -1i), abs(countOneBits(select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u), false)))), Struct_1(u_input.c, ~abs(_wgslsmith_mod_u32(1u, u_input.a)), abs(~vec3<i32>(u_input.e, u_input.c.x, -30750i)) << ((vec3<u32>(5363u, u_input.a, 1u) << (vec3<u32>(94839u, u_input.a, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(127106u, u_input.a, 46104u), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(1u, 4294967295u, u_input.a)), vec3<u32>(1u, u_input.a, u_input.a)))), vec4<bool>(!select(false, false, true) && true, true, select(any(vec4<bool>(true, false, false, false)), true, u_input.a <= u_input.a) != all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), (~1i > u_input.d) || (true | (u_input.b < -u_input.e)));
    let var_1 = var_0;
    return -1055f;
}

fn func_2(arg_0: vec3<bool>) -> Struct_4 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-779f, _wgslsmith_f_op_f32(round(947f)), true))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1623f)), _wgslsmith_f_op_f32(880f + 240f)))), 1112f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(596f + -988f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_0 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_sub_i32(u_input.d, 1i), -u_input.d, max(u_input.d, reverseBits(u_input.c.x))), ~u_input.a, u_input.c, ~vec3<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a, 15084u), 12416u)), Struct_2(Struct_1(u_input.c, select(u_input.a | u_input.a, min(u_input.a, 0u), true), vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.e), vec2<i32>(36809i, 1i)), u_input.c.x << (u_input.a % 32u)), abs(reverseBits(vec3<u32>(0u, 44699u, u_input.a)))), Struct_1(-(~vec3<i32>(2147483647i, -10032i, 1i)), _wgslsmith_mult_u32(u_input.a, u_input.a) << ((0u << (u_input.a % 32u)) % 32u), vec3<i32>(u_input.e, ~u_input.e, u_input.e), abs(vec3<u32>(53331u, u_input.a, 4310u))), Struct_1(u_input.c, _wgslsmith_mod_u32(4294967295u, abs(u_input.a)), ~countOneBits(vec3<i32>(u_input.b, 0i, u_input.e)), firstLeadingBit(select(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 96798u, 27957u), arg_0))), !vec4<bool>(!arg_0.x, true, true, true), all(vec3<bool>(true, false, any(vec4<bool>(true, arg_0.x, false, true))))), select(select(!(!vec4<bool>(false, false, arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, false, arg_0.x | false, arg_0.x), !arg_0.x), select(!select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), true), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.x, arg_0.x, true, false), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, true), arg_0.x)), select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(false, true, arg_0.x, arg_0.x), arg_0.x)), arg_0.x));
    var var_1 = Struct_4(_wgslsmith_sub_vec3_u32(firstLeadingBit(var_0.b.b.d), max(~(~var_0.b.b.d), var_0.a.d)));
    var_1 = Struct_4(var_0.a.d);
    return Struct_4(_wgslsmith_sub_vec3_u32(var_0.b.c.d, vec3<u32>(~9897u & ~u_input.a, 4294967295u, 4294967295u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4) -> Struct_1 {
    let var_0 = any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true), all(vec4<bool>(false, true, true, true)))), all(vec2<bool>(false, false)) & !all(vec3<bool>(false, true, true))));
    let var_1 = u_input.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1236f, 679f, 1556f, 1701f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1476f, -1054f, -424f, 1277f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(210f, 1070f, 1027f, -826f), vec4<f32>(-295f, 862f, -468f, 156f), vec4<bool>(var_0, var_0, var_0, true))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2218f, -1000f, 111f, 359f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1405f)), _wgslsmith_f_op_f32(round(616f)), _wgslsmith_f_op_f32(-381f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1032f))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2986f + var_2.x), 758f)), var_2.x)), var_2.x) - -155f);
    return Struct_1(arg_0.zyx, 38434u, abs(u_input.c), abs(arg_1.a));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.a.x, -44331i, ~16187i), -_wgslsmith_add_vec3_i32(arg_2.a, vec3<i32>(-1i, arg_0.b.c.x, 65372i)), ~max(vec3<i32>(-14906i, 0i, 1i), arg_2.a)), ~_wgslsmith_sub_u32(func_2(vec3<bool>(arg_0.d.x, true, arg_0.d.x)).a.x, arg_0.c.d.x), vec3<i32>(_wgslsmith_sub_i32(arg_0.b.a.x, 2147483647i) | func_4(vec4<i32>(0i, -1i, -6947i, -52972i), Struct_4(arg_0.a.d)).c.x, -_wgslsmith_mult_i32(arg_0.c.c.x, u_input.b), reverseBits(arg_0.c.a.x)), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(60682u, 26949u, arg_2.b), arg_0.b.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(31594u, 30418u, arg_0.c.d.x), vec3<u32>(arg_2.d.x, arg_0.a.b, arg_0.a.d.x), arg_0.b.d), func_4(vec4<i32>(-1i, u_input.e, -14609i, arg_0.b.a.x), Struct_4(vec3<u32>(arg_2.b, 4294967295u, 4294967295u))).d)), arg_0, !(!select(arg_0.d, select(vec4<bool>(arg_0.e, arg_0.d.x, false, true), arg_0.d, true), arg_0.d)));
    var_0 = Struct_3(Struct_1(func_4(vec4<i32>(_wgslsmith_add_i32(var_0.b.c.a.x, var_0.b.c.c.x), arg_2.c.x, arg_0.b.c.x, ~15780i), Struct_4(var_0.a.d)).c, 4294967295u, select(vec3<i32>(~(-1i), 0i, max(arg_2.a.x, 37011i)), -(~var_0.a.c), all(var_0.c.wwy)), _wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(7722u), 38519u, arg_0.b.d.x), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 32725u), var_0.a.d))), Struct_2(func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.c.x, var_0.a.c.x, u_input.e, arg_0.c.a.x), vec4<i32>(2147483647i, -1i, 4049i, 0i)), func_2(vec3<bool>(false, false, true))), arg_2, Struct_1(vec3<i32>(_wgslsmith_div_i32(51177i, var_0.a.c.x), -5160i, var_0.a.c.x), arg_0.b.d.x, func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.a.x, var_0.b.c.a.x, var_0.b.a.a.x, 13857i), vec4<i32>(-2147483647i, -17594i, 1i, 2702i), vec4<i32>(u_input.b, 16276i, 0i, 1i)), func_2(var_0.b.d.xzy)).c, ~(~arg_0.c.d)), vec4<bool>(any(!vec2<bool>(arg_0.e, false)), arg_0.d.x, ~var_0.a.b < 12054u, !any(vec3<bool>(arg_0.d.x, false, arg_0.d.x))), var_0.b.d.x), !(!select(vec4<bool>(true, false, arg_0.e, arg_0.e), arg_0.d, true)));
    var_0 = Struct_3(Struct_1(~(vec3<i32>(u_input.b, -29660i, 1i) | arg_2.a), 33693u, arg_0.c.c, ~(~arg_2.d) << (~vec3<u32>(4294967295u, 0u, 77758u) % vec3<u32>(32u))), Struct_2(arg_2, func_4(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(0i, arg_0.b.c.x, 26849i, -1i)), min(vec4<i32>(var_0.a.c.x, arg_2.a.x, u_input.b, arg_0.c.c.x), vec4<i32>(1i, var_0.a.a.x, var_0.a.a.x, u_input.d))), func_2(select(var_0.c.ywy, var_0.b.d.xzy, true))), func_4(vec4<i32>(arg_2.a.x << (4294967295u % 32u), 0i, firstTrailingBit(var_0.a.c.x), u_input.d), func_2(arg_0.d.ywz)), select(!select(vec4<bool>(arg_0.e, var_0.b.e, true, arg_0.e), vec4<bool>(true, arg_0.e, false, false), arg_0.d.x), select(vec4<bool>(var_0.c.x, arg_0.d.x, arg_0.e, arg_0.e), !vec4<bool>(false, var_0.c.x, false, arg_0.e), !arg_0.d), vec4<bool>(true, true, arg_0.e, var_0.b.d.x)), (_wgslsmith_f_op_f32(arg_1 - 468f) <= 484f) | true), select(select(select(select(var_0.c, vec4<bool>(true, false, arg_0.e, false), vec4<bool>(var_0.c.x, arg_0.e, false, var_0.b.e)), !vec4<bool>(var_0.c.x, false, arg_0.e, arg_0.d.x), true), select(arg_0.d, vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), !var_0.b.d.x && true), vec4<bool>(false, any(arg_0.d.yzx), false, true), any(!(!var_0.b.d))));
    let var_1 = func_4(vec4<i32>(arg_2.c.x, ~(-31577i), -45308i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(var_0.a.a.x, 0i, -2147483647i, 22819i), vec4<i32>(2147483647i, u_input.c.x, arg_2.c.x, arg_0.b.c.x) & vec4<i32>(arg_0.c.a.x, -1i, 0i, 2147483647i)), vec4<i32>(~7446i, select(u_input.c.x, arg_0.b.c.x, arg_0.e), _wgslsmith_add_i32(u_input.d, 2147483647i), arg_0.a.c.x))), func_2(var_0.b.d.wyx)).b;
    let var_2 = Struct_2(func_4(vec4<i32>(arg_2.a.x, _wgslsmith_mult_i32(i32(-1i) * -66197i, -1i), -24692i, ~(-7989i)), func_2(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.e, var_0.b.d.x, false), !arg_0.d.wzz))), arg_2, arg_0.a, !(!arg_0.d), var_0.c.x);
    return arg_0;
}

fn func_1() -> Struct_4 {
    let var_0 = ~(~(~abs(reverseBits(vec3<u32>(0u, u_input.a, 7846u)))));
    let var_1 = func_5(Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(-u_input.c, u_input.c | vec3<i32>(u_input.e, u_input.c.x, 19827i)), var_0.x, -u_input.c, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, var_0.x, 4294967295u), var_0), max(var_0, var_0))), Struct_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(-65227i, u_input.d, u_input.d), u_input.c), abs(_wgslsmith_sub_u32(25064u, u_input.a)), u_input.c, var_0), func_4(vec4<i32>(firstLeadingBit(-50399i), 12758i >> (0u % 32u), u_input.d, u_input.e), func_2(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))), !vec4<bool>(all(vec3<bool>(true, false, false)), true, true, false), _wgslsmith_mod_i32(u_input.d, 1i) > abs(select(u_input.d, u_input.d, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-229f + 304f), 368f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(414f * 611f) - _wgslsmith_f_op_f32(-190f * -296f))))), func_4(vec4<i32>(_wgslsmith_div_i32(17241i << (u_input.a % 32u), countOneBits(u_input.c.x)), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d, 14970i, u_input.c.x), vec4<i32>(u_input.e, u_input.e, 48444i, u_input.c.x)) & (2147483647i << (u_input.a % 32u)), abs(u_input.d)), func_2(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), true))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-507f * 1000f)))), 1000f));
    let var_2 = Struct_4(var_0);
    var var_3 = vec2<u32>(_wgslsmith_add_u32(var_0.x, u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, ~45142u, var_2.a.x, ~0u), min(~countOneBits(vec4<u32>(926u, 5239u, 63257u, u_input.a)), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(23020u, 23059u, 26030u, u_input.a), vec4<u32>(1u, var_2.a.x, 62327u, var_2.a.x))))));
    return func_2(var_1.d.xyx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(max(-881f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1f)))));
    var var_0 = 76430u;
    var var_1 = func_1();
    let var_2 = true;
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.a, u_input.a, ~(~u_input.a)));
}

