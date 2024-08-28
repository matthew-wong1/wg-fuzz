struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: i32, arg_3: vec3<i32>) -> bool {
    global0 = array<f32, 28>();
    return !(!arg_1.a.x & (15972u < _wgslsmith_clamp_u32(4294967295u, u_input.b.x, ~u_input.b.x)));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: bool) -> vec4<i32> {
    let var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(0u), 28u)];
    var var_1 = Struct_3(arg_0, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 28u)] * global0[_wgslsmith_index_u32(1u, 28u)]))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1277f, 698f, -915f) + vec3<f32>(global0[_wgslsmith_index_u32(0u, 28u)], -218f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)])) * _wgslsmith_div_vec3_f32(vec3<f32>(782f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec3<f32>(-1095f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-256f, 1134f, 737f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)])))), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(76422u, 28u)], 264f, 1000f) - vec3<f32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), Struct_5(vec4<bool>(arg_1, arg_3, true, arg_1)), -u_input.c.x, u_input.c))), 1f), vec3<bool>(all(vec3<bool>(!arg_3, 6275u > u_input.b.x, false)), true, false), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1242f * global0[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_f_op_f32(select(-629f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(25562u, 28u)])))), !(!vec2<bool>(arg_0 >= -20491i, arg_3)));
    global0 = array<f32, 28>();
    var var_2 = vec3<bool>(true, any(select(vec3<bool>(true, !arg_3, true), select(!var_1.c, !var_1.c, arg_3), !select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, var_1.e.x), true))), arg_3);
    let var_3 = Struct_3(var_1.a, var_1.b, select(vec3<bool>(all(!vec4<bool>(arg_3, arg_3, var_2.x, arg_1)), false, var_1.c.x), select(var_1.c, select(vec3<bool>(true, true, arg_3), !vec3<bool>(false, true, var_2.x), true), true), !(!any(vec4<bool>(true, var_2.x, var_2.x, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.b.yx + vec2<f32>(-616f, var_1.b.b.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1280f, -1783f)))))), select(vec2<bool>(var_2.x, var_1.e.x), select(var_1.e, select(var_2.zy, var_2.yx, select(var_1.e, vec2<bool>(var_2.x, false), true)), vec2<bool>(true, true)), !any(vec3<bool>(arg_1, var_2.x, arg_1)) || false));
    return _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-25050i, ~arg_0, ~u_input.a, ~arg_2), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.a, -1i, var_3.a, arg_0), select(vec4<i32>(var_1.a, 61476i, 52261i, -22295i), vec4<i32>(var_3.a, arg_0, 2147483647i, arg_2), vec4<bool>(var_3.e.x, var_2.x, true, true)))), arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(2147483647i, var_1.a, 34130i, arg_2), vec4<i32>(u_input.c.x, 2147483647i, u_input.a, arg_2), false), -vec4<i32>(-1978i, 7546i, arg_0, -35288i)), countOneBits(vec4<i32>(var_3.a, 24200i, arg_0, var_3.a))), 0i), select(~(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.a, 2147483647i, -1i, var_3.a), vec4<i32>(u_input.a, arg_0, -2147483647i, 1i)) | max(vec4<i32>(arg_2, -78111i, -2147483647i, 48816i), vec4<i32>(var_1.a, -2147483647i, -2147483647i, -16945i))), vec4<i32>(arg_2, _wgslsmith_mod_i32(0i, max(var_1.a, -35549i)), ~_wgslsmith_mult_i32(-86221i, var_3.a), reverseBits(_wgslsmith_clamp_i32(arg_2, arg_0, 0i))), vec4<bool>(arg_1, false, true, !(!arg_1))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~26921u, 28u)])), global0[_wgslsmith_index_u32(u_input.b.x, 28u)], !all(vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], 1583f, -568f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(547f, 427f, 1384f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -907f))), -1256f, _wgslsmith_f_op_f32(f32(-1f) * -222f))), -1000f);
    var var_1 = Struct_1(_wgslsmith_sub_i32(0i, select(12568i, -1i, true)), vec3<u32>(u_input.b.x, ~_wgslsmith_mult_u32(1u, abs(0u)), _wgslsmith_dot_vec4_u32(u_input.b << (abs(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 19222u)) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (abs(u_input.b) % vec4<u32>(32u)))), ~vec2<u32>(1u, _wgslsmith_dot_vec2_u32(select(u_input.b.zy, vec2<u32>(u_input.b.x, u_input.b.x), vec2<bool>(false, true)), u_input.b.zy << (u_input.b.ww % vec2<u32>(32u)))));
    global0 = array<f32, 28>();
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(max(u_input.b, firstLeadingBit(~vec4<u32>(u_input.b.x, 2209u, 1u, var_1.c.x))), u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_add_u32(133084u, 35897u)), firstTrailingBit(4294967295u) | 4294967295u, select(u_input.b.x, ~var_1.b.x, false)), _wgslsmith_mod_vec3_u32(max(var_1.b, vec3<u32>(u_input.b.x, 12489u, u_input.b.x)), vec3<u32>(u_input.b.x, 0u, u_input.b.x) | u_input.b.wxw) & max(vec3<u32>(0u, 1u, u_input.b.x) ^ vec3<u32>(u_input.b.x, 72488u, 22280u), _wgslsmith_mod_vec3_u32(vec3<u32>(23968u, 35541u, u_input.b.x), u_input.b.xwz))), var_1.c.x);
    let var_3 = vec2<i32>(firstTrailingBit(arg_0.x), ~3018i);
    return firstLeadingBit(u_input.b);
}

fn func_2() -> Struct_2 {
    global0 = array<f32, 28>();
    let var_0 = Struct_4(max(func_5(u_input.c.zz, func_4(max(u_input.c.x, u_input.a), func_3(vec3<f32>(2065f, global0[_wgslsmith_index_u32(1u, 28u)], -1268f), Struct_5(vec4<bool>(false, false, false, false)), u_input.a, vec3<i32>(-35776i, u_input.c.x, 2147483647i)), u_input.a, true)), vec4<u32>(~35551u, u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 4294967295u), u_input.b.x) >> (_wgslsmith_sub_vec4_u32(~u_input.b, ~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))), Struct_3(-_wgslsmith_sub_i32(~(-1i), abs(27027i)), Struct_2(218f, vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 28u)]), 552f, -769f), 859f), select(vec3<bool>(true, all(vec2<bool>(true, false)), true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), true)), vec2<f32>(-930f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1580f + 1847f))), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, true)), func_3(vec3<f32>(-250f, global0[_wgslsmith_index_u32(0u, 28u)], -1787f), Struct_5(vec4<bool>(true, false, false, false)), u_input.c.x, u_input.c)), (u_input.c.x > u_input.c.x) != true)), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-452f * -487f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(37044u, 28u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(63476u, 28u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1079f) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))), -797f), !vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))));
    global0 = array<f32, 28>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1193f, global0[_wgslsmith_index_u32(56404u, 28u)]))))), 1275f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.x, 28u)]), _wgslsmith_f_op_f32(abs(785f)))), 579f) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b.x, 163f)))), var_0.c.b.xx))));
    var var_2 = _wgslsmith_f_op_f32(abs(-1000f));
    return Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.d.x, 281f) * _wgslsmith_f_op_f32(min(var_0.b.b.a, var_0.c.b.x))))), 224f, true)), vec3<f32>(-303f, 418f, _wgslsmith_f_op_f32(532f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-223f - -263f) - -180f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 1u), 28u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.x, 28u)])))), _wgslsmith_f_op_f32(abs(var_1.x))));
}

fn func_1() -> Struct_5 {
    global0 = array<f32, 28>();
    var var_0 = !vec4<bool>((38905u > u_input.b.x) || select(select(false, true, true), true, true), true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))) | true, ~(~0u) > u_input.b.x);
    let var_1 = u_input.b.x;
    let var_2 = Struct_3(-u_input.c.x, func_2(), var_0.yww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 28u)], 814f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(18073u, 28u)], global0[_wgslsmith_index_u32(var_1, 28u)]) * vec2<f32>(1000f, 1282f)))))), var_0.zy);
    let var_3 = Struct_4(u_input.b, var_2, var_2.b, var_0.xz);
    return Struct_5(vec4<bool>(true, (-5699i & u_input.a) == _wgslsmith_mod_i32(-6075i, var_3.b.a), select(12086u, 56426u | u_input.b.x, true) < ~(~26239u), all(!select(vec3<bool>(var_3.b.e.x, false, true), var_2.c, vec3<bool>(var_3.b.e.x, var_3.b.e.x, var_3.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(-2147483647i ^ (u_input.a ^ u_input.c.x), -2147483647i, abs(u_input.c.x), -2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 28u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(1117f)))), -1274f), ~(-(~abs(vec4<i32>(u_input.a, u_input.c.x, u_input.a, -43974i)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 28u)] - global0[_wgslsmith_index_u32(~u_input.b.x, 28u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2510f - global0[_wgslsmith_index_u32(u_input.b.x, 28u)]) + global0[_wgslsmith_index_u32(174u, 28u)]) * -211f)), u_input.a);
}

