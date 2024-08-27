struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = arg_2;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0.a)))));
    var var_2 = firstLeadingBit(max(~vec4<u32>(25497u, 29086u, 4294967295u, u_input.a), vec4<u32>(u_input.a & 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(142292u, u_input.a, 4294967295u), vec3<u32>(1u, u_input.a, 4294967295u)), 48787u, 14832u)) << (select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, 1u), vec2<u32>(1u, 0u)), u_input.a, ~arg_3, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 24531u, 0u), vec3<u32>(1u, 24940u, 0u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(6673u, 4294967295u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 1u, 48703u)), true) % vec4<u32>(32u)));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, var_1.a.x, _wgslsmith_div_f32(arg_1.x, global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -903f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_1.a)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x + global0.a.x), 783f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1411f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))))));
    var var_3 = Struct_4(vec3<i32>(arg_0.a, select(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_0.a, -2147483647i, -1i), vec4<i32>(arg_2, arg_2, 5238i, 1i))), _wgslsmith_clamp_i32(arg_2, ~arg_2, arg_0.a ^ 2147483647i), true), i32(-1i) * -_wgslsmith_mod_i32(1i, -1i)), ~_wgslsmith_add_u32(59416u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, u_input.a), var_2.yy), 3785u)));
    return max(58353u, select(4294967295u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, 4294967295u, 42084u), vec4<u32>(0u, 11972u, var_2.x, 4294967295u)) % 32u), _wgslsmith_div_u32(u_input.a, 49610u), true));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = u_input.a >> (_wgslsmith_clamp_u32(~func_3(Struct_1(0i), _wgslsmith_div_vec3_f32(vec3<f32>(-230f, 366f, arg_1.x), global0.a.zxy), -130i >> (1u % 32u), ~77561u), u_input.a, max(firstTrailingBit(u_input.a), _wgslsmith_add_u32(u_input.a, 30706u))) % 32u);
    var var_1 = -501f;
    let var_2 = Struct_4(~vec3<i32>(arg_2.x << (_wgslsmith_mult_u32(var_0, 0u) % 32u), i32(-1i) * -66923i, 1i), ~u_input.a);
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_1.x, -2389f)), arg_1.x)), _wgslsmith_f_op_f32(step(-1000f, 1264f))));
    var var_3 = vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, true);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), -1425f, 247f, arg_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = arg_0.a.x;
    let var_1 = Struct_4(vec3<i32>(4389i, 1i << (arg_2 % 32u), -39955i), arg_1.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.a.wxy, vec3<f32>(-360f, 1481f, 237f), vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a.x, global0.a.x, 1000f)))))), vec3<f32>(_wgslsmith_f_op_f32(1335f - _wgslsmith_f_op_f32(step(arg_0.a.x, 148f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -213f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1605f - 2211f), _wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(round(-225f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1315f, -801f) + _wgslsmith_f_op_f32(f32(-1f) * -882f)))))));
    var var_3 = firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(-35457i, var_1.a.x)) ^ -(~_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-46275i, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a.x, -2147483647i), var_1.a.xz)));
    let var_4 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_3.x, -56921i, var_1.a.x, var_1.a.x), firstTrailingBit(firstTrailingBit(vec4<i32>(var_3.x, -1i, 0i, var_1.a.x)))), countOneBits(_wgslsmith_add_vec4_i32(-vec4<i32>(var_1.a.x, 23671i, var_3.x, var_3.x), reverseBits(vec4<i32>(var_3.x, var_3.x, 2147483647i, 1i))))) & _wgslsmith_div_vec4_i32(reverseBits(-vec4<i32>(-2147483647i, var_3.x, 0i, var_3.x)), ~(-select(vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<i32>(var_1.a.x, 7761i, var_1.a.x, 1i), true)));
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(u_input.a, 77848u);
    var var_1 = global0.a.x;
    global0 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1262f, 219f, -1745f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 268f)) - vec2<f32>(856f, 131f)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-53773i, -2147483647i, -9569i), select(vec3<i32>(10069i, -62138i, -2147483647i), vec3<i32>(-1i, 0i, 0i), true))))), vec3<u32>(func_3(Struct_1(_wgslsmith_div_i32(-2147483647i, 853i)), global0.a.wyy, abs(560i), firstTrailingBit(4294967295u)), 4294967295u, ~_wgslsmith_div_u32(u_input.a, 32955u)), var_0);
    global0 = func_4(Struct_2(global0.a), vec3<u32>(u_input.a, u_input.a, 4294967295u), 11798u);
    let var_2 = _wgslsmith_sub_u32(82666u, 11769u);
    return Struct_1(select(-_wgslsmith_mod_i32(~16268i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -69422i), vec2<i32>(13289i, 17632i))), _wgslsmith_div_i32(firstTrailingBit(~9712i), 51489i), true));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> vec2<u32> {
    return vec2<u32>(0u, 1u);
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec4_i32(~(select(-vec4<i32>(23315i, -2147483647i, 39874i, -1i), vec4<i32>(27314i, 39129i, -14797i, 55897i) << (vec4<u32>(1u, arg_2.x, u_input.a, 36602u) % vec4<u32>(32u)), !vec4<bool>(arg_0, arg_0, arg_0, arg_0)) & ~(-vec4<i32>(-1i, -1i, 5529i, 1i))), vec4<i32>(-2147483647i, firstLeadingBit(-1i), -1i, ~(countOneBits(0i) | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -47439i, -28388i, -26925i), vec4<i32>(1i, 9245i, 2147483647i, 27127i)))));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1578f, arg_1.a.x, _wgslsmith_f_op_f32(2404f + _wgslsmith_div_f32(global0.a.x, 356f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f), global0.a.x)) - _wgslsmith_f_op_vec4_f32(-global0.a)));
    global0 = func_4(func_4(arg_1, ~(~vec3<u32>(1u, arg_2.x, u_input.a)), ~(~(0u << (arg_2.x % 32u)))), countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, arg_2.x), vec3<u32>(arg_2.x, 4294967295u, 44174u), vec3<u32>(4294967295u, arg_2.x, 4294967295u)) >> (vec3<u32>(3298u, u_input.a, 4294967295u) % vec3<u32>(32u)), ~abs(vec3<u32>(arg_2.x, arg_2.x, u_input.a)))), arg_2.x | 22983u);
    let var_1 = u_input.a;
    global0 = func_4(func_4(func_4(func_4(func_4(Struct_2(arg_1.a), vec3<u32>(arg_2.x, arg_2.x, 4294967295u), 40318u), abs(vec3<u32>(u_input.a, 4294967295u, 4294967295u)), 21331u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 0u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(9897u, 56921u, arg_2.x), vec3<u32>(u_input.a, arg_2.x, 63910u)), vec3<u32>(30737u, var_1, 1u)), ~func_3(Struct_1(-1i), vec3<f32>(-1855f, global0.a.x, arg_1.a.x), 69138i, 0u)), vec3<u32>(_wgslsmith_sub_u32(arg_2.x, 67938u), _wgslsmith_clamp_u32(4294967295u, 8081u, ~arg_2.x), ~countOneBits(var_1)), arg_2.x), firstLeadingBit(vec3<u32>(~(arg_2.x << (var_1 % 32u)), 1u, arg_2.x)), ~22526u);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(true, Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a.x, 423f, _wgslsmith_f_op_f32(floor(global0.a.x)), global0.a.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1691f, global0.a.x, global0.a.x, global0.a.x)))))), ~func_5(vec4<bool>(true, true, true, true), func_1(all(vec4<bool>(false, false, true, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), firstLeadingBit(u_input.a), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(34503i, 61831i, 1605i)), vec3<i32>(4087i, -33672i, -1i))));
    var var_0 = func_6(true, func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-global0.a)), ~select(vec3<u32>(u_input.a, 0u, 13297u), select(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<bool>(true, false, false)), vec3<bool>(true, false, true)), ~u_input.a), vec2<u32>(4294967295u, _wgslsmith_add_u32(~u_input.a, ~u_input.a)));
    var_0 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-global0.a)), vec3<u32>(u_input.a, func_5(vec4<bool>(true, true, true, true), func_1(true, vec2<bool>(true, true), vec2<bool>(true, true)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 5330u), vec3<u32>(u_input.a, u_input.a, u_input.a)), max(1i << (u_input.a % 32u), _wgslsmith_mult_i32(1i, 3319i))).x, u_input.a), firstLeadingBit(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(59294u, 8956u, u_input.a), vec3<u32>(u_input.a, u_input.a, 75420u)))));
    let var_1 = select(select(vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), all(vec3<bool>(true, true, true)), true, !(global0.a.x != var_0.a.x)), vec4<bool>(true, true, true, true), true), !vec4<bool>(!all(vec2<bool>(false, true)), any(vec4<bool>(false, true, true, false)) && false, all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))), !(!vec4<bool>(true, any(vec2<bool>(true, false)), true, true)));
    let var_2 = vec3<f32>(global0.a.x, 1538f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-284f)) - _wgslsmith_f_op_f32(var_0.a.x + 940f)))), _wgslsmith_f_op_f32(trunc(var_0.a.x)))));
    var var_3 = func_1(var_1.x, !vec2<bool>(all(select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, false))), var_1.x), var_1.wy);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(sign(-1826f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1531f)), -835f))), var_2.x, global0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.a, 22277u));
}

