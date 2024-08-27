struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> bool {
    global0 = array<vec4<u32>, 13>();
    let var_0 = arg_1;
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    var var_1 = select(vec3<i32>(-2147483647i, -1i, var_0.a ^ -1i), -(~(~firstTrailingBit(vec3<i32>(arg_1.d, 1i, 0i)))), var_0.c);
    return false;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(441f)) + _wgslsmith_f_op_f32(1993f + -269f)) + -1000f) - _wgslsmith_f_op_f32(-553f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-279f)) + -1060f))));
    let var_1 = Struct_1(20700i, _wgslsmith_sub_vec2_i32(~(vec2<i32>(u_input.a.x, 2147483647i) | (u_input.a << (vec2<u32>(4294967295u, arg_2) % vec2<u32>(32u)))), u_input.a), select(true, arg_1, false), u_input.a.x, u_input.a.x);
    var var_2 = _wgslsmith_add_u32(4294967295u << (_wgslsmith_div_u32(arg_2, 1u) % 32u), firstLeadingBit(~min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 96607u), vec2<u32>(u_input.b, arg_2)), firstTrailingBit(2086u))));
    var var_3 = ~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(0u, 48298u) % vec2<u32>(32u)), vec2<u32>(18118u, arg_0))) <= _wgslsmith_mod_u32(43530u, ~(arg_2 ^ arg_2));
    var_3 = any(select(!(!select(vec2<bool>(false, var_1.c), vec2<bool>(false, false), vec2<bool>(arg_1, arg_1))), !(!vec2<bool>(arg_1, arg_1)), select(!vec2<bool>(true, arg_1), vec2<bool>(true & var_1.c, !arg_1), vec2<bool>(true, true))));
    return vec4<bool>(true, arg_1, u_input.a.x > _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 30615i, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.e, 21988i, -25417i, -40188i), vec4<i32>(2147483647i, 0i, var_1.e, 14897i))), firstLeadingBit(vec4<i32>(1i, 0i, 14688i, 0i) | vec4<i32>(-18771i, u_input.a.x, 2147483647i, var_1.d))), true);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    global0 = array<vec4<u32>, 13>();
    var var_0 = select(!(!(!select(vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(arg_1, false, true, false), arg_3.x))), vec4<bool>(any(!arg_3.xx), ~(-1i & u_input.a.x) >= 2147483647i, -2147483647i != firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, 0i)), u_input.a.x < -1i), arg_3.x);
    global0 = array<vec4<u32>, 13>();
    let var_1 = ~_wgslsmith_add_vec3_u32(((vec3<u32>(arg_0, 0u, u_input.b) & vec3<u32>(1u, 0u, arg_0)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 21504u, 26253u), vec3<u32>(36873u, arg_0, 1u))) >> (~(~vec3<u32>(1u, arg_0, 1u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(49754u, arg_0, 3529u) << (vec3<u32>(110987u, u_input.b, 1u) % vec3<u32>(32u)), vec3<u32>(1842u, 1u, 13591u) ^ vec3<u32>(u_input.b, arg_0, u_input.b)) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, arg_0), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 0u, u_input.b), vec3<u32>(u_input.b, 13151u, 4294967295u))));
    var_0 = func_4(_wgslsmith_add_u32(arg_0, var_1.x), func_3(~(~(u_input.b << (u_input.b % 32u))), Struct_1(-2147483647i, _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, -21188i)), vec2<i32>(u_input.a.x, u_input.a.x) << (var_1.zx % vec2<u32>(32u))), true, u_input.a.x | 2147483647i, 0i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -587f))), _wgslsmith_f_op_f32(f32(-1f) * -957f))), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, select(arg_0, _wgslsmith_clamp_u32(arg_0, u_input.b, arg_0), arg_3.x), firstTrailingBit(max(0u, 4294967295u)), var_1.x), vec4<u32>(arg_0, 30496u, var_1.x, ~66212u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-473f * 1140f), _wgslsmith_f_op_f32(f32(-1f) * -211f));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(reverseBits(71094u), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(min(170f, _wgslsmith_f_op_f32(sign(1000f)))), any(vec4<bool>(true, true, true, true)))), vec3<bool>(true, !(arg_1.x < arg_1.x), true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-312f, -504f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(726f))))) + _wgslsmith_f_op_f32(ceil(1000f))));
    let var_1 = Struct_1(43775i, select(vec2<i32>(_wgslsmith_mult_i32(-1i, arg_3), arg_2), _wgslsmith_clamp_vec2_i32(~u_input.a >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), ~u_input.a << (vec2<u32>(83507u, 1u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(1i, 16302i)) >> (select(arg_1.xy, arg_1.yz, true) % vec2<u32>(32u))), true), any(vec2<bool>(!(arg_3 == arg_3), any(func_4(27285u, true, 4294967295u).zzy))), min(_wgslsmith_add_i32(~arg_2, _wgslsmith_mod_i32(~3985i, 12605i)), _wgslsmith_mult_i32(abs(u_input.a.x), arg_3)), 1i);
    global0 = array<vec4<u32>, 13>();
    let var_2 = max(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, ~17058u, arg_1.x & arg_0, ~arg_0), reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1.yx, vec2<u32>(arg_0, arg_0)), ~arg_1.x, _wgslsmith_mult_u32(51215u, arg_1.x), arg_0))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~firstTrailingBit(arg_0), 0u), ~(~(0u >> (arg_1.x % 32u)))), 13u)]);
    var var_3 = vec4<i32>(~(~_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_2, -17041i), ~vec2<i32>(19704i, 5087i))), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_2, var_1.e, arg_2, -1i)) >> (select(_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(u_input.b, 13u)], vec4<u32>(u_input.b, 1u, 5254u, arg_0)), var_2, var_1.c) % vec4<u32>(32u)), (vec4<i32>(2241i, u_input.a.x, arg_3, u_input.a.x) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, var_1.e, 1i, -1i), vec4<i32>(var_1.b.x, 15040i, 0i, arg_2))) & abs(vec4<i32>(var_1.d, u_input.a.x, var_1.b.x, u_input.a.x) << (global0[_wgslsmith_index_u32(34514u, 13u)] % vec4<u32>(32u)))), -1i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, arg_3, 2147483647i), reverseBits(vec3<i32>(2147483647i, 0i, arg_3))), firstLeadingBit(~vec3<i32>(arg_2, arg_2, -1i))));
    return _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, ~(arg_0 << (1u % 32u)), u_input.b) | (~_wgslsmith_mult_vec4_u32(var_2, var_2) >> (global0[_wgslsmith_index_u32(arg_0, 13u)] % vec4<u32>(32u))), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 13>();
    var var_0 = u_input.a.x;
    global0 = array<vec4<u32>, 13>();
    var_0 = -1i;
    var var_1 = _wgslsmith_add_vec4_u32(max(global0[_wgslsmith_index_u32(~u_input.b, 13u)], vec4<u32>(u_input.b, ~u_input.b, select(u_input.b, u_input.b, true), 27907u)) & func_1(countOneBits(max(0u, u_input.b)), min(select(vec3<u32>(26685u, 39487u, u_input.b), vec3<u32>(4294967295u, 4294967295u, u_input.b), false), vec3<u32>(u_input.b, 25990u, u_input.b)), u_input.a.x, -2147483647i), reverseBits(max(~vec4<u32>(u_input.b, u_input.b, 24778u, 33011u) & global0[_wgslsmith_index_u32(4294967295u, 13u)], _wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 13u)], ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, select(~(~92356u), 51382u, true) & 36805u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(533f)), _wgslsmith_div_f32(990f, 1306f), 1000f)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(619f, 2254f, -622f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-394f, 2119f, 250f), vec3<f32>(102f, -663f, -169f), false)), vec3<f32>(690f, -589f, 800f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-863f, 744f, 851f, 1218f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 371f, -821f, -443f)))), vec4<f32>(1f, 1f, 1f, 1f))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1311u, 1848u, var_1.x, 4294967295u) ^ ~vec4<u32>(4294967295u, 15502u, 1u, var_1.x), global0[_wgslsmith_index_u32(76296u, 13u)], ~global0[_wgslsmith_index_u32(firstTrailingBit(1u), 13u)])));
}

