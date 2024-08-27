struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 15>;

var<private> global3: array<f32, 5>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<i32>) -> vec4<bool> {
    var var_0 = ~(~(~arg_0.c.c));
    let var_1 = arg_1.b.c;
    var var_2 = Struct_1(vec2<bool>(any(select(global0[_wgslsmith_index_u32(6496u, 4u)], select(vec4<bool>(arg_0.a.x, false, var_1.a.x, arg_1.b.c.b), vec4<bool>(true, true, true, arg_0.c.a.x), true), false)), true), !all(vec3<bool>(arg_0.c.b, arg_1.d.a.x, any(vec3<bool>(true, var_1.b, arg_1.d.a.x)))), var_1.c, ~_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, max(arg_0.c.d, -11903i)), ~1i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d.e) * vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.c.e.x)), _wgslsmith_f_op_f32(arg_1.c.x - -1174f), arg_0.c.e.x)), arg_1.d.e)));
    let var_3 = Struct_2(select(global0[_wgslsmith_index_u32(~13244u, 4u)], vec4<bool>(!any(vec3<bool>(var_2.a.x, false, var_2.a.x)), any(vec2<bool>(arg_0.c.a.x, var_2.a.x)), true, select(true, var_2.b, true)), select(!select(arg_1.b.a, vec4<bool>(true, true, arg_1.d.b, false), vec4<bool>(var_1.a.x, false, arg_1.b.c.a.x, true)), select(select(vec4<bool>(true, var_2.b, arg_1.d.b, false), global0[_wgslsmith_index_u32(u_input.c, 4u)], false), !arg_0.a, select(vec4<bool>(var_2.b, true, var_1.a.x, false), arg_0.a, global0[_wgslsmith_index_u32(var_2.c.x, 4u)])), false)), arg_1.b.b, arg_0.c);
    global1 = 0u;
    return global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_3.c.c.x ^ var_3.c.c.x, select(0u, 111345u, true)), 4294967295u)), 4u)];
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_div_f32(-1500f, -235f);
    let var_1 = !(!(!select(vec4<bool>(true, false, true, false), func_3(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 4u)], vec2<i32>(2147483647i, u_input.b), global2[_wgslsmith_index_u32(u_input.d, 15u)]), Struct_3(vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.d), Struct_2(vec4<bool>(false, true, false, false), vec2<i32>(-17323i, -4749i), Struct_1(vec2<bool>(false, false), true, vec3<u32>(u_input.c, u_input.c, u_input.c), -2147483647i, vec3<f32>(-2209f, 202f, global3[_wgslsmith_index_u32(68314u, 5u)]))), vec4<f32>(231f, global3[_wgslsmith_index_u32(u_input.c, 5u)], -688f, 1412f), Struct_1(vec2<bool>(false, true), false, vec3<u32>(32744u, u_input.d, 4294967295u), u_input.a, vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 5u)], global3[_wgslsmith_index_u32(0u, 5u)], 865f)), global3[_wgslsmith_index_u32(u_input.c, 5u)]), vec2<i32>(u_input.a, u_input.b)), global0[_wgslsmith_index_u32(~u_input.c, 4u)])));
    let var_2 = global3[_wgslsmith_index_u32(abs(u_input.d), 5u)];
    var var_3 = var_1.x;
    var var_4 = Struct_3(~vec4<u32>(reverseBits(71826u), u_input.d, u_input.c, min(u_input.d, min(u_input.c, u_input.c))), Struct_2(var_1, vec2<i32>(-reverseBits(u_input.a), countOneBits(u_input.b) << (min(0u, 4294967295u) % 32u)), Struct_1(vec2<bool>(true, func_3(Struct_2(var_1, vec2<i32>(u_input.b, u_input.b), Struct_1(vec2<bool>(var_1.x, true), var_1.x, vec3<u32>(u_input.d, 71966u, u_input.d), 0i, vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(u_input.c, 5u)], global3[_wgslsmith_index_u32(u_input.c, 5u)]))), Struct_3(vec4<u32>(u_input.d, u_input.c, 4294967295u, 4294967295u), Struct_2(vec4<bool>(var_1.x, true, true, false), vec2<i32>(-8350i, u_input.a), Struct_1(var_1.yy, false, vec3<u32>(u_input.c, 4294967295u, 4148u), u_input.a, vec3<f32>(255f, global3[_wgslsmith_index_u32(0u, 5u)], -599f))), vec4<f32>(-190f, -256f, -841f, global3[_wgslsmith_index_u32(47532u, 5u)]), Struct_1(vec2<bool>(true, var_1.x), true, vec3<u32>(4294967295u, 1u, 0u), 42541i, vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 5u)], -669f, 638f)), -887f), vec2<i32>(u_input.a, -1i)).x), true & any(vec3<bool>(var_1.x, false, var_1.x)), ~(vec3<u32>(u_input.d, u_input.d, u_input.c) ^ vec3<u32>(u_input.c, 4294967295u, u_input.d)), firstLeadingBit(~u_input.b), vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(6454u, 5u)]), global3[_wgslsmith_index_u32(60288u, 5u)], global3[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 5u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3[_wgslsmith_index_u32(u_input.d, 5u)], 1342f, global3[_wgslsmith_index_u32(35028u, 5u)], 1000f))), vec4<f32>(global3[_wgslsmith_index_u32(12611u, 5u)], -1000f, 664f, -1277f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-555f, global3[_wgslsmith_index_u32(u_input.c, 5u)], -1023f, global3[_wgslsmith_index_u32(43617u, 5u)]), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(u_input.c, 5u)], -230f, global3[_wgslsmith_index_u32(u_input.d, 5u)])))))), Struct_1(var_1.yw, var_1.x, vec3<u32>(~u_input.c, u_input.d, ~(~1u)), (-2147483647i | -u_input.b) << (min(~9201u, 0u) % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1640f, global3[_wgslsmith_index_u32(u_input.d, 5u)], 758f))), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(~(_wgslsmith_div_u32(4294967295u, 1u) | (u_input.d & 24276u)), 5u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d << (u_input.c % 32u), 0u), 5u)])));
    return 1i;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = !all(arg_3.a) | arg_3.b;
    var var_1 = firstLeadingBit(-8069i >> (_wgslsmith_mult_u32(firstLeadingBit(~44922u), arg_3.c.x) % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(~arg_3.c.x, 5u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-2492f, global3[_wgslsmith_index_u32(u_input.c, 5u)])))), _wgslsmith_f_op_f32(step(-1695f, 775f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_3.c.x, 5u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.e.x, arg_3.e.x, -207f, 784f)), vec4<f32>(-229f, arg_3.e.x, 914f, global3[_wgslsmith_index_u32(83257u, 5u)])) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 5u)], -1232f, 929f, global3[_wgslsmith_index_u32(4294967295u, 5u)]) * vec4<f32>(570f, 414f, arg_3.e.x, 1131f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.e.x, 594f, arg_3.e.x, 1757f), vec4<f32>(global3[_wgslsmith_index_u32(arg_3.c.x, 5u)], global3[_wgslsmith_index_u32(u_input.d, 5u)], global3[_wgslsmith_index_u32(arg_3.c.x, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)]), true)))), vec4<f32>(-1521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.e.x)) * _wgslsmith_f_op_f32(-942f + -409f)), _wgslsmith_f_op_f32(-1182f + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 5u)])), 1f))), !(!vec4<bool>(!arg_3.a.x, true, false, false))));
    let var_3 = Struct_1(arg_3.a, any(arg_3.a), reverseBits(~(~(~arg_3.c))), -(~(-34635i) << (_wgslsmith_dot_vec2_u32(arg_3.c.xx, arg_3.c.zy) % 32u)) ^ _wgslsmith_dot_vec2_i32(~(~vec2<i32>(3684i, arg_1.x)), arg_1.yy), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, -780f, 466f))), arg_3.e, vec3<bool>(!all(global0[_wgslsmith_index_u32(u_input.c, 4u)]), true, true))));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, ~(~(u_input.d ^ 0u)) >> (var_3.c.x % 32u)), 4u)];
    return firstLeadingBit(reverseBits(~(~_wgslsmith_mod_i32(arg_1.x, 56025i))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = firstLeadingBit(68388u) ^ firstTrailingBit(~firstTrailingBit(20988u) & _wgslsmith_dot_vec4_u32(vec4<u32>(5968u, 28679u, arg_1.c.x, arg_0.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(53156u, 0u, 17490u, 25298u), vec4<u32>(83471u, u_input.c, 38708u, arg_0.c.x))));
    let var_1 = select(-49540i, ~_wgslsmith_div_i32(u_input.b, func_4(-vec2<i32>(1i, -1i), vec4<i32>(-26024i, -2147483647i, 1i, -9878i) << (vec4<u32>(u_input.d, u_input.c, arg_0.c.x, 1u) % vec4<u32>(32u)), func_2(), global2[_wgslsmith_index_u32(~0u, 15u)])), all(!vec2<bool>(!arg_0.b, true)));
    var var_2 = Struct_3(countOneBits(select(vec4<u32>(_wgslsmith_clamp_u32(arg_0.c.x, arg_0.c.x, arg_1.c.x), 1u, 0u >> (var_0 % 32u), var_0 ^ 30592u), firstLeadingBit(vec4<u32>(var_0, 11656u, 4294967295u, arg_0.c.x)), vec4<bool>(any(vec4<bool>(arg_0.a.x, arg_1.b, arg_1.a.x, arg_0.b)), arg_0.b, !arg_1.b, all(arg_1.a)))), Struct_2(select(select(!vec4<bool>(arg_0.a.x, false, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, false, false, true), select(vec4<bool>(false, false, arg_0.b, true), vec4<bool>(arg_0.a.x, arg_1.a.x, false, arg_1.a.x), global0[_wgslsmith_index_u32(u_input.d, 4u)])), global0[_wgslsmith_index_u32(0u, 4u)], vec4<bool>(!arg_1.a.x, true, false, all(arg_0.a))), ~(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, -1i), vec2<i32>(arg_1.d, 1i)) ^ vec2<i32>(arg_0.d, u_input.a)), Struct_1(select(!arg_1.a, vec2<bool>(false, false), true), true, arg_1.c, -1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-199f, global3[_wgslsmith_index_u32(27299u, 5u)], -1000f), arg_1.e))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1394f, global3[_wgslsmith_index_u32(4294967295u, 5u)], arg_0.e.x, -1981f), vec4<f32>(-267f, 631f, 1998f, -1454f))))))), global2[_wgslsmith_index_u32(abs(1u), 15u)], 927f);
    global3 = array<f32, 5>();
    var var_3 = Struct_1(vec2<bool>(true, (_wgslsmith_f_op_f32(arg_0.e.x - arg_1.e.x) > -471f) && (u_input.d != _wgslsmith_dot_vec3_u32(arg_0.c, vec3<u32>(arg_1.c.x, 0u, u_input.d)))), var_2.d.b, var_2.b.c.c & ~(~select(arg_1.c, vec3<u32>(arg_1.c.x, 76292u, 4294967295u), arg_1.b)), _wgslsmith_add_i32(min(2147483647i, var_2.d.d), 12906i), arg_1.e);
    return var_3.c.x;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    let var_0 = 2147483647i;
    var var_1 = Struct_2(select(vec4<bool>((arg_0 > 737f) && true, !select(true, true, arg_1), select(false, true, select(arg_1, arg_2.a.x, true)), !arg_2.a.x), vec4<bool>(true, true, true, arg_2.a.x), (~arg_2.c.x <= ~0u) | true), vec2<i32>(countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 16548i), vec2<i32>(var_0, var_0)), vec2<i32>(0i, arg_2.d))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, arg_2.d), _wgslsmith_clamp_vec2_i32(vec2<i32>(-19121i, -2147483647i), vec2<i32>(arg_2.d, arg_2.d), vec2<i32>(u_input.a, arg_2.d))), ~2147483647i)), arg_2);
    let var_2 = arg_2.e.x;
    global2 = array<Struct_1, 15>();
    var var_3 = _wgslsmith_dot_vec4_u32(select(vec4<u32>(firstLeadingBit(var_1.c.c.x), ~var_1.c.c.x, _wgslsmith_clamp_u32(51183u, arg_2.c.x, 5112u), reverseBits(36642u)), vec4<u32>(~arg_2.c.x, 1u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.c.x, 1u, u_input.c, 1u), vec4<u32>(u_input.d, u_input.c, 33976u, u_input.d))), !(arg_3.x <= 132f)) | abs(~(vec4<u32>(u_input.d, u_input.c, 1702u, 4294967295u) ^ vec4<u32>(arg_2.c.x, u_input.c, u_input.d, u_input.d))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_2.c.x, var_1.c.c.x, 107944u), vec4<u32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, 4294967295u), vec4<u32>(4294967295u, 0u, arg_2.c.x, var_1.c.c.x)) | vec4<u32>(arg_2.c.x, arg_2.c.x, var_1.c.c.x, 1u), ~(vec4<u32>(4294967295u, 26042u, var_1.c.c.x, 4294967295u) >> (vec4<u32>(74208u, 4294967295u, 67760u, var_1.c.c.x) % vec4<u32>(32u))), ~firstLeadingBit(vec4<u32>(var_1.c.c.x, 34314u, arg_2.c.x, 0u))), vec4<u32>(~32357u, u_input.c, 34234u, ~u_input.c), ~vec4<u32>(~72979u, 1u, var_1.c.c.x, ~4294967295u)));
    return any(vec3<bool>(true, false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(4294967295u, 5u)], _wgslsmith_div_f32(-518f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 5u)] + global3[_wgslsmith_index_u32(u_input.d, 5u)])))), true, Struct_1(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true), true, vec3<u32>(1u ^ u_input.c, func_1(global2[_wgslsmith_index_u32(u_input.c, 15u)], global2[_wgslsmith_index_u32(6746u, 15u)], -28105i), 4935u), -2147483647i, vec3<f32>(_wgslsmith_f_op_f32(-751f * 1000f), global3[_wgslsmith_index_u32(u_input.d & 15713u, 5u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 5u)]))), vec4<f32>(825f, 948f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(u_input.d, 5u)], -842f))), global3[_wgslsmith_index_u32(u_input.d, 5u)])) & any(!func_3(Struct_2(vec4<bool>(true, true, false, false), vec2<i32>(-23122i, u_input.a), Struct_1(vec2<bool>(true, false), false, vec3<u32>(1u, u_input.d, u_input.c), u_input.b, vec3<f32>(-1388f, global3[_wgslsmith_index_u32(41190u, 5u)], -1023f))), Struct_3(vec4<u32>(31848u, 1u, u_input.d, u_input.d), Struct_2(global0[_wgslsmith_index_u32(u_input.d, 4u)], vec2<i32>(-15561i, u_input.b), Struct_1(vec2<bool>(true, false), true, vec3<u32>(u_input.c, u_input.c, 12165u), -64082i, vec3<f32>(321f, 551f, global3[_wgslsmith_index_u32(1u, 5u)]))), vec4<f32>(global3[_wgslsmith_index_u32(u_input.d, 5u)], 617f, global3[_wgslsmith_index_u32(u_input.c, 5u)], 1696f), global2[_wgslsmith_index_u32(u_input.d, 15u)], 1356f), abs(vec2<i32>(-89i, -3130i))).xy);
    let var_1 = Struct_1(select(select(vec2<bool>(true, any(vec3<bool>(false, var_0, var_0))), !select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), var_0), false), !(!select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), vec2<bool>(false, var_0))), func_3(Struct_2(vec4<bool>(var_0, var_0, var_0, var_0), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 45871i), vec2<i32>(-3252i, -2147483647i)), global2[_wgslsmith_index_u32(~51125u, 15u)]), Struct_3(firstTrailingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)), Struct_2(global0[_wgslsmith_index_u32(u_input.c, 4u)], vec2<i32>(u_input.b, u_input.b), Struct_1(vec2<bool>(var_0, true), var_0, vec3<u32>(u_input.d, u_input.c, u_input.d), u_input.a, vec3<f32>(global3[_wgslsmith_index_u32(41273u, 5u)], global3[_wgslsmith_index_u32(0u, 5u)], -1247f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3[_wgslsmith_index_u32(u_input.c, 5u)], 504f, -246f, global3[_wgslsmith_index_u32(u_input.d, 5u)]))), Struct_1(vec2<bool>(false, var_0), false, vec3<u32>(u_input.d, u_input.d, 72017u), 0i, vec3<f32>(1270f, -1631f, global3[_wgslsmith_index_u32(u_input.d, 5u)])), -644f), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 9915i), vec2<i32>(u_input.a, u_input.a))).wy), any(!(!(!global0[_wgslsmith_index_u32(21321u, 4u)]))), firstLeadingBit(~vec3<u32>(1u, 69970u, u_input.d)) >> (~(~(vec3<u32>(u_input.c, 0u, 1u) >> (vec3<u32>(56394u, u_input.d, 1u) % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -43906i), vec2<i32>(8773i, 0i)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, 2147483647i, 32820i)), min(vec3<i32>(u_input.a, 18306i, -37342i), vec3<i32>(-2147483647i, 2073i, -1i))), ~func_4(vec2<i32>(u_input.a, 11919i), vec4<i32>(u_input.b, -1i, u_input.a, 0i), -2147483647i, global2[_wgslsmith_index_u32(10810u, 15u)])) << (~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(38658u, 0u, 74914u, 52038u), vec4<u32>(1u, 0u, u_input.d, u_input.c)), u_input.c, ~4321u) % 32u), vec3<f32>(1000f, 645f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c, 5u)] * _wgslsmith_f_op_f32(abs(201f)))));
    var var_2 = -311f;
    var var_3 = select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(8574u, ~var_1.c.x) & reverseBits(1u), 4u)], vec4<bool>(false, select(select(u_input.d, u_input.d, false) < _wgslsmith_div_u32(4294967295u, var_1.c.x), !select(false, var_0, var_1.b), true), var_0, any(select(!vec3<bool>(false, false, var_1.b), vec3<bool>(var_0, var_1.a.x, true), true | var_1.a.x))), global0[_wgslsmith_index_u32(~var_1.c.x, 4u)]);
    global2 = array<Struct_1, 15>();
    var var_4 = firstTrailingBit(~(-vec3<i32>(~(-2147483647i), 2147483647i, var_1.d)));
    let var_5 = Struct_2(global0[_wgslsmith_index_u32(11152u, 4u)], -_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.d, var_4.x), var_4.yz, vec2<i32>(var_1.d, -42487i)), var_4.xy) >> (~(~vec2<u32>(var_1.c.x, 66231u)) % vec2<u32>(32u)), Struct_1(!(!var_1.a), true, _wgslsmith_add_vec3_u32(~(~vec3<u32>(var_1.c.x, 4294967295u, 7268u)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.c, vec3<u32>(u_input.c, 4294967295u, var_1.c.x)), select(var_1.c, vec3<u32>(u_input.d, u_input.d, 4294967295u), false))), 5225i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1568f, -1377f, 725f), _wgslsmith_f_op_vec3_f32(-var_1.e))))));
    let var_6 = vec2<bool>(!var_3.x, true);
    global0 = array<vec4<bool>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.e.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_5.c.e.x, _wgslsmith_f_op_f32(-276f * 2290f), var_0))))), var_1.c.yz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1685f, _wgslsmith_f_op_f32(f32(-1f) * -462f), var_1.e.x)))));
}

