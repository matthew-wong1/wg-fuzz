struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: vec3<u32>) -> vec4<u32> {
    var var_0 = arg_0;
    var var_1 = -1434f;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -713f) * _wgslsmith_f_op_f32(-133f - 935f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f - -309f)))))));
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1000f, -377f, true))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(-584f, _wgslsmith_f_op_f32(max(427f, 1946f))))));
    let var_2 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))) || all(vec3<bool>(true, true, true));
    return vec4<u32>(~var_0.d.x & var_0.d.x, ~(~26299u), abs(1u), 27377u);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(22581u, u_input.c.x, 0u, arg_1.d.x), ~vec4<u32>(arg_1.d.x, 0u, arg_1.d.x, arg_1.d.x), !vec4<bool>(true, arg_2, arg_0, true)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.d.x, u_input.c.x, u_input.c.x, 0u), vec4<u32>(arg_1.d.x, 6719u, arg_1.d.x, arg_1.d.x)), abs(vec4<u32>(u_input.c.x, u_input.c.x, 2426u, u_input.c.x))), vec4<u32>(57564u, arg_1.d.x, 144914u, 3070u) << (func_3(Struct_2(vec4<i32>(-13315i, -49069i, arg_1.b, arg_1.b), u_input.b.x, arg_1.c, arg_1.d), arg_1.a.x, Struct_3(vec2<i32>(arg_1.a.x, u_input.a), arg_1.a), vec3<u32>(28150u, u_input.c.x, arg_1.d.x)) % vec4<u32>(32u))), vec4<u32>(28504u & arg_1.d.x, _wgslsmith_mult_u32(32156u, u_input.c.x), select(4294967295u, _wgslsmith_div_u32(4294967295u, arg_1.d.x), all(vec3<bool>(true, false, arg_0))), ~(~1u))) >> (_wgslsmith_sub_vec4_u32((~vec4<u32>(arg_1.d.x, 24803u, 54267u, 9405u) << (~vec4<u32>(74003u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) & vec4<u32>(1u, firstTrailingBit(u_input.c.x), arg_1.d.x, arg_1.d.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c.x, 24124u, u_input.c.x), select(vec4<u32>(0u, arg_1.d.x, 0u, u_input.c.x), vec4<u32>(arg_1.d.x, 63489u, 0u, 14557u), vec4<bool>(arg_0, true, arg_2, false))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, arg_1.d.x, arg_1.d.x, arg_1.d.x), vec4<u32>(u_input.c.x, arg_1.d.x, 4294967295u, arg_1.d.x)), ~0u, 47788u << (u_input.c.x % 32u), ~4294967295u), abs(vec4<u32>(12570u, arg_1.d.x, 1u, u_input.c.x)) | (vec4<u32>(arg_1.d.x, arg_1.d.x, 47818u, arg_1.d.x) ^ vec4<u32>(arg_1.d.x, u_input.c.x, arg_1.d.x, 1u)))) % vec4<u32>(32u));
    let var_1 = ~_wgslsmith_dot_vec4_u32(max(select(vec4<u32>(u_input.c.x, arg_1.d.x, u_input.c.x, arg_1.d.x), vec4<u32>(arg_1.d.x, 1u, var_0.x, 26493u) ^ vec4<u32>(var_0.x, var_0.x, arg_1.d.x, u_input.c.x), true), vec4<u32>(select(15563u, arg_1.d.x, true), u_input.c.x, countOneBits(61946u), var_0.x)), ~vec4<u32>(arg_1.d.x, u_input.c.x, _wgslsmith_add_u32(arg_1.d.x, 4294967295u), 36687u));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1085f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-233f + -522f)), 1f, _wgslsmith_f_op_f32(round(888f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -537f, 349f, 931f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-381f, 404f, 156f, 332f) - vec4<f32>(268f, 280f, 281f, 798f))) * vec4<f32>(629f, _wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(f32(-1f) * -2172f), _wgslsmith_f_op_f32(ceil(578f)))) + vec4<f32>(879f, 783f, _wgslsmith_f_op_f32(-1141f * 142f), 640f)), true));
    var var_3 = abs(~(-_wgslsmith_div_vec2_i32(vec2<i32>(56854i, arg_1.b), vec2<i32>(arg_1.c.x, arg_1.b) ^ vec2<i32>(u_input.b.x, -3797i))));
    return vec2<bool>(!(_wgslsmith_f_op_f32(-var_2.x) == var_2.x), select(true, any(!(!vec2<bool>(false, arg_2))), arg_0));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> Struct_3 {
    var var_0 = arg_0.x;
    return Struct_3(u_input.b.wz, vec4<i32>(select(max(u_input.a, u_input.b.x), ~0i, false) | firstTrailingBit(~u_input.a), _wgslsmith_mult_i32(~(-38434i ^ u_input.a), 1i), -_wgslsmith_add_i32(u_input.b.x, -41351i) << (~select(u_input.c.x, 14239u, true) % 32u), firstLeadingBit(-1i)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(0i, select(reverseBits(abs(arg_2)), arg_1.b.x, select(select(true, false, true), all(vec4<bool>(true, false, true, false)), all(vec4<bool>(false, true, false, false))))) >= 1i;
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(391f, -819f)) * _wgslsmith_div_f32(-774f, -574f))) == 133f, false, all(!vec2<bool>(true, var_0 != var_0)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-188f * _wgslsmith_f_op_f32(step(1092f, -1529f))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(631f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(355f, _wgslsmith_f_op_f32(1736f + -1946f))))) + _wgslsmith_f_op_f32(select(779f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1001f))), true)));
    let var_4 = Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a >> (u_input.c.x % 32u), ~47341i, -7050i & arg_1.a.x, firstTrailingBit(1i)), vec4<i32>(-2147483647i, u_input.a, -88540i, arg_1.b.x) & vec4<i32>(13290i, arg_2, -8458i, 66926i)) << (~vec4<u32>(u_input.c.x, firstTrailingBit(u_input.c.x), 55766u << (arg_0.x % 32u), ~1u) % vec4<u32>(32u)), ~(arg_1.b.x & countOneBits(firstLeadingBit(-18407i))), -(_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_2, 1i, 2147483647i, arg_1.b.x), vec4<i32>(-11297i, arg_2, u_input.a, arg_2)) << (~(vec4<u32>(77671u, u_input.c.x, u_input.c.x, u_input.c.x) << (vec4<u32>(4294967295u, 4294967295u, arg_0.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_0);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(-921f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1583f, 1514f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-265f, 277f) + vec2<f32>(var_3, -1000f))))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = func_5(vec2<u32>(4294967295u, _wgslsmith_mod_u32(1u, u_input.c.x) >> (10415u % 32u)) & vec2<u32>(countOneBits(countOneBits(14440u)), u_input.c.x), func_4(select(select(vec2<bool>(true, true), func_2(false, Struct_2(vec4<i32>(arg_0, arg_0, arg_0, 9154i), arg_0, u_input.b, u_input.c.yx), true), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), -29788i << (~select(u_input.c.x, u_input.c.x, 43324u != u_input.c.x) % 32u));
    let var_1 = func_5(firstTrailingBit(vec2<u32>(~4294967295u, 820u << (0u % 32u))), Struct_3(abs(vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, -2147483647i), arg_0)), -vec4<i32>(3073i, 2147483647i, arg_0, -38842i) | u_input.b), ~_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.b.x, u_input.b.x), u_input.b)), 2147483647i));
    var var_2 = select(_wgslsmith_mod_u32(firstLeadingBit(49370u), ~min(96435u, u_input.c.x)), 4294967295u, !(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec3<i32>(-15081i, 0i, arg_0)), min(u_input.b.zwx, vec3<i32>(arg_0, arg_0, u_input.b.x))) != -firstLeadingBit(u_input.a)));
    var_2 = 5586u & ~(~firstTrailingBit(u_input.c.x) ^ _wgslsmith_mult_u32(u_input.c.x, ~u_input.c.x));
    let var_3 = (~(~firstLeadingBit(44400u)) >> (~u_input.c.x % 32u)) <= ~1u;
    return Struct_3(abs(~u_input.b.xy), max(_wgslsmith_add_vec4_i32(-u_input.b, reverseBits(vec4<i32>(u_input.a, arg_0, 17413i, u_input.a))), u_input.b));
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = arg_1.a.x | _wgslsmith_clamp_i32(~41089i, 2147483647i, arg_1.b.x);
    var_0 = 1i;
    var var_1 = func_5(~vec2<u32>(u_input.c.x, max(~4294967295u, ~u_input.c.x)), arg_1, i32(-1i) * -1i).a.x;
    let var_2 = reverseBits(vec4<i32>(1i, -_wgslsmith_div_i32(firstLeadingBit(u_input.a), arg_1.b.x), 1i, ~(-16653i)));
    let var_3 = ~abs(~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(32522u, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, 39918u, u_input.c.x)), ~u_input.c));
    return vec2<f32>(arg_2.a.x, arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_6(-143f, func_1(u_input.a), func_5(~u_input.c.xx >> (_wgslsmith_mult_vec2_u32(u_input.c.zz, u_input.c.yy) % vec2<u32>(32u)), func_4(vec2<bool>(false, false), true), firstTrailingBit(_wgslsmith_div_i32(u_input.a, -71221i))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-803f, 219f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(149f, -684f) * vec2<f32>(-437f, 993f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(656f, 2605f))), vec2<bool>(true, true))) * vec2<f32>(1f, 1f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1470f, var_0.x)))))));
    var_0 = _wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), vec2<f32>(1463f, var_0.x))), vec2<bool>(true, true))) - func_5(~vec2<u32>(u_input.c.x, u_input.c.x), Struct_3(vec2<i32>(u_input.b.x, -23304i), vec4<i32>(u_input.b.x, 59024i, -24459i, 0i)), select(9460i, u_input.b.x, true)).a)));
    let var_2 = vec3<u32>(38116u, u_input.c.x, ~select(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), _wgslsmith_clamp_u32(0u, u_input.c.x, 1u), u_input.c.x != u_input.c.x)) & ~(~(~(u_input.c ^ vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))));
    var var_3 = func_1(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, var_2.x, 14452u, var_2.x), vec4<u32>(170599u, u_input.c.x, u_input.c.x, u_input.c.x)), ~vec4<u32>(var_2.x, 1u, 3252u, var_2.x)), select(countOneBits(~vec4<u32>(4294967295u, 1u, 4294967295u, 13822u)), vec4<u32>(func_3(Struct_2(vec4<i32>(u_input.b.x, u_input.a, -42130i, var_3.b.x), 1i, var_3.b, vec2<u32>(86212u, var_2.x)), -44909i, Struct_3(u_input.b.yw, u_input.b), var_2).x, 7874u, func_3(Struct_2(var_3.b, u_input.a, u_input.b, vec2<u32>(var_2.x, 1827u)), 1i, Struct_3(vec2<i32>(12783i, 0i), u_input.b), vec3<u32>(var_2.x, var_2.x, u_input.c.x)).x, var_2.x), !(u_input.b.x > 22315i)), _wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(80726u, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<u32>(_wgslsmith_div_u32(35338u, 84238u), abs(u_input.c.x), _wgslsmith_mod_u32(var_2.x, 0u), 30800u))), u_input.c.x, u_input.b.yz << (reverseBits(vec2<u32>(abs(var_2.x), 4294967295u)) % vec2<u32>(32u)));
}

