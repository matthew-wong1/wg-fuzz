struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 16> = array<i32, 16>(i32(-2147483648), -25270i, 0i, -40394i, 32020i, 2147483647i, -14294i, 0i, -1i, -75190i, -28734i, 0i, 1i, 25410i, 1i, i32(-2147483648));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> vec3<f32> {
    global0 = _wgslsmith_add_i32(~(-3244i), arg_0.b);
    global1 = array<i32, 16>();
    let var_0 = Struct_1(vec3<i32>(arg_2.x, arg_3.a.x, abs(-2147483647i)), _wgslsmith_div_i32(~(~global1[_wgslsmith_index_u32(abs(arg_1.c.x), 16u)]), 0i), ~arg_3.c, ~_wgslsmith_mod_vec3_u32(~countOneBits(arg_1.e.zyy), vec3<u32>(_wgslsmith_mult_u32(u_input.a, arg_0.c.x), _wgslsmith_dot_vec3_u32(arg_3.e.xxx, vec3<u32>(arg_1.e.x, 40123u, arg_0.c.x)), ~u_input.a)), max(vec4<u32>(~(~arg_1.c.x), 1u, abs(reverseBits(4294967295u)), 1u), ~min(~arg_1.e, _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 8987u), vec4<u32>(0u, 1u, u_input.b, arg_3.c.x)))));
    var var_1 = arg_0;
    global0 = ~1i;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(622f, -829f, 1357f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-329f - -1357f) + _wgslsmith_f_op_f32(385f - -425f)), 596f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(966f, 188f, true)), _wgslsmith_f_op_f32(select(-363f, -734f, false)), false))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(355f, 1607f, 419f))))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-619f + 2048f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-466f, -683f)), _wgslsmith_f_op_f32(-697f - 717f), arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1497f + -292f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-848f)))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3(arg_1, arg_1, var_0.a, Struct_1(abs(arg_1.a), _wgslsmith_add_i32(arg_1.b, global1[_wgslsmith_index_u32(1u, 16u)]), ~var_0.d.xz, vec3<u32>(u_input.a, arg_1.d.x, 4294967295u), vec4<u32>(u_input.a, var_0.c.x, arg_1.c.x, 33011u) ^ vec4<u32>(u_input.a, 0u, 51725u, 0u)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -751f), -1134f), -1000f, _wgslsmith_f_op_f32(-931f - _wgslsmith_f_op_f32(621f - 400f))))));
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(reverseBits(~(-arg_1.a)), _wgslsmith_div_vec3_i32(max(~arg_1.a, var_0.a), -arg_1.a)), firstLeadingBit(-1i), arg_1.e.ww, ~vec3<u32>(arg_1.c.x, ~35582u, ~u_input.a) << (~arg_1.e.ywz % vec3<u32>(32u)), vec4<u32>(u_input.b, var_0.d.x, var_0.d.x | 1u, ~u_input.a) << (vec4<u32>(abs(4294967295u), _wgslsmith_dot_vec2_u32(arg_1.e.wy, arg_1.d.yz), _wgslsmith_dot_vec4_u32(~var_0.e, ~vec4<u32>(26434u, 21930u, arg_1.c.x, 1u)), ~(u_input.b | 9982u)) % vec4<u32>(32u)));
    global0 = -(~0i & (_wgslsmith_dot_vec4_i32(-vec4<i32>(-51070i, var_0.b, -522i, global1[_wgslsmith_index_u32(arg_1.d.x, 16u)]), _wgslsmith_add_vec4_i32(vec4<i32>(19006i, global1[_wgslsmith_index_u32(arg_1.c.x, 16u)], var_2.a.x, var_0.b), vec4<i32>(var_0.a.x, 0i, 1i, var_2.b))) ^ -_wgslsmith_clamp_i32(arg_1.a.x, arg_1.b, 1i)));
    let var_3 = 4294967295u >> (0u % 32u);
    return ~vec4<u32>(_wgslsmith_sub_u32(~4294967295u & ~var_3, firstLeadingBit(reverseBits(u_input.a))), ~54315u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(arg_1.d, vec3<u32>(var_2.c.x, var_3, arg_1.c.x)), firstLeadingBit(4294967295u ^ u_input.a)), 13529u);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = !(!all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))));
    let var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, 1u, u_input.a), arg_1.d)), ~(~(arg_1.e.zwz >> (vec3<u32>(arg_1.d.x, arg_2.x, 29413u) % vec3<u32>(32u))))), arg_2.xzw);
    let var_2 = Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], -16161i, firstLeadingBit((global1[_wgslsmith_index_u32(arg_1.e.x, 16u)] | 2147483647i) ^ abs(arg_1.b))), max(i32(-1i) * -224i, 2147483647i) & -(~global1[_wgslsmith_index_u32(reverseBits(63792u), 16u)]), arg_1.e.yx, _wgslsmith_add_vec3_u32(vec3<u32>(1u, _wgslsmith_sub_u32(arg_2.x, u_input.a & arg_2.x), (var_1.x ^ var_1.x) & ~arg_1.d.x), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, ~u_input.b, reverseBits(25636u)), firstLeadingBit(arg_2.wzx))), reverseBits(reverseBits(arg_2)) >> (vec4<u32>(var_1.x, _wgslsmith_mult_u32(0u & var_1.x, 415u), _wgslsmith_add_u32(_wgslsmith_add_u32(0u, var_1.x), abs(72786u)), var_1.x) % vec4<u32>(32u)));
    var var_3 = Struct_1(var_2.a, abs(firstLeadingBit(var_2.a.x) << (min(~45041u, arg_1.c.x & var_1.x) % 32u)), ~_wgslsmith_div_vec2_u32(var_1.yx, vec2<u32>(4294967295u >> (1u % 32u), _wgslsmith_add_u32(arg_2.x, 0u))), vec3<u32>(firstTrailingBit(arg_1.e.x), 1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_2.x, min(0u, 35518u)), func_2(true, Struct_1(vec3<i32>(-1i, var_2.a.x, global1[_wgslsmith_index_u32(111072u, 16u)]), global1[_wgslsmith_index_u32(var_2.e.x, 16u)], arg_1.d.xz, vec3<u32>(u_input.b, u_input.b, arg_2.x), arg_1.e)).x)), var_2.e);
    var var_4 = 1330f;
    return !vec4<bool>(var_0, var_0, !(arg_0.x != _wgslsmith_f_op_f32(1000f - arg_0.x)), !((var_3.d.x < 4294967295u) || var_0));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(48646i), global1[_wgslsmith_index_u32(16207u, 16u)]), _wgslsmith_clamp_i32(max(-75039i, global1[_wgslsmith_index_u32(u_input.a, 16u)]), -8456i, ~global1[_wgslsmith_index_u32(u_input.b, 16u)]), global1[_wgslsmith_index_u32(0u, 16u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(37468i, -45797i, 41174i) & abs(vec3<i32>(20213i, -1i, global1[_wgslsmith_index_u32(62931u, 16u)])), vec3<i32>(-global1[_wgslsmith_index_u32(u_input.b, 16u)], ~1i, min(-6367i, -1i)))), -2147483647i, select(abs(~vec2<u32>(u_input.a, 4294967295u) | _wgslsmith_mod_vec2_u32(vec2<u32>(25929u, u_input.b), vec2<u32>(4294967295u, u_input.b))), select(~(~vec2<u32>(4294967295u, u_input.a)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(32746u, 4294967295u), vec2<u32>(u_input.a, u_input.a)), 0u), !select(vec2<bool>(true, true), vec2<bool>(true, false), true)), all(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2029f, -342f)), Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], 0i), -1727i, vec2<u32>(4515u, u_input.a), vec3<u32>(u_input.b, 24878u, u_input.a), vec4<u32>(4294967295u, u_input.b, 38751u, u_input.b)), func_2(false, Struct_1(vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]), global1[_wgslsmith_index_u32(u_input.b, 16u)], vec2<u32>(u_input.a, 1u), vec3<u32>(1u, u_input.a, u_input.b), vec4<u32>(9443u, 98818u, u_input.b, u_input.b)))))), ~vec3<u32>(func_2(true, Struct_1(vec3<i32>(1i, global1[_wgslsmith_index_u32(11784u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)]), global1[_wgslsmith_index_u32(u_input.b, 16u)], vec2<u32>(68382u, u_input.b), vec3<u32>(u_input.a, 10465u, u_input.b), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))).x, _wgslsmith_mod_u32(~u_input.b, ~4294967295u), 1u), vec4<u32>(0u, u_input.b, _wgslsmith_mult_u32(u_input.a, 0u), ~u_input.a));
    global0 = _wgslsmith_dot_vec2_i32(var_0.a.yz, vec2<i32>(_wgslsmith_sub_i32(~var_0.a.x, global1[_wgslsmith_index_u32(var_0.c.x, 16u)]), -reverseBits(firstLeadingBit(-7407i))));
    var var_1 = false;
    let var_2 = Struct_1(vec3<i32>(var_0.a.x, -2147483647i, -global1[_wgslsmith_index_u32(11881u, 16u)]), countOneBits(var_0.b << (~u_input.a % 32u)), ~countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, var_0.c.x), ~vec2<u32>(var_0.c.x, u_input.b))), _wgslsmith_clamp_vec3_u32(countOneBits(abs(vec3<u32>(var_0.e.x, u_input.a, 0u) << (var_0.d % vec3<u32>(32u)))), select(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.b, 1u), var_0.e.yyz & vec3<u32>(u_input.b, 1u, var_0.d.x)), vec3<u32>(~28735u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 3248u, 24008u, u_input.a), var_0.e), ~30712u), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false))), ~vec3<u32>(1u, u_input.b, u_input.b) ^ ~(~var_0.e.zwy)), ~var_0.e);
    global1 = array<i32, 16>();
    return func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-945f, _wgslsmith_f_op_f32(1459f * 273f)))), var_2, var_0.e).xzx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 16>();
    let var_0 = -101f;
    var var_1 = !func_1();
    global0 = 0i;
    let var_2 = 53003i;
    let var_3 = ~(~(vec4<i32>(_wgslsmith_div_i32(1i, -1i), _wgslsmith_add_i32(0i, -10861i), var_2 >> (30587u % 32u), ~var_2) >> (min(~vec4<u32>(u_input.b, 0u, u_input.a, 52232u), vec4<u32>(u_input.a, 104u, u_input.a, 88395u)) % vec4<u32>(32u))));
    global0 = ~(-47322i);
    global1 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(0i, 297f);
}

