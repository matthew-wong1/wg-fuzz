struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, true, true, false, true, true, false, false, false, true, true, true, false, true, true, false, false, false, false, true, false, false, true);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)));
    let var_1 = -37158i | _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, ~countOneBits(1i)), select(vec2<i32>(u_input.b, u_input.c), vec2<i32>(-21082i, abs(-2147483647i)), true));
    var var_2 = !select(select(vec4<bool>(global0[_wgslsmith_index_u32(35244u, 23u)] || false, -2147483647i >= var_1, all(vec4<bool>(false, false, false, false)), global0[_wgslsmith_index_u32(u_input.a.x, 23u)] & true), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], true, true, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(10262u, 23u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), true), vec4<bool>(!(global0[_wgslsmith_index_u32(u_input.d, 23u)] && true), all(!vec2<bool>(global0[_wgslsmith_index_u32(11389u, 23u)], false)), select(any(vec4<bool>(global0[_wgslsmith_index_u32(56286u, 23u)], false, false, global0[_wgslsmith_index_u32(63718u, 23u)])), global0[_wgslsmith_index_u32(0u ^ u_input.d, 23u)], true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.d), u_input.a), 23u)]), global0[_wgslsmith_index_u32(u_input.a.x, 23u)]);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-226f)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(245f, var_3, _wgslsmith_f_op_f32(round(841f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3, 826f, var_3), vec3<f32>(var_3, var_3, var_3), var_2.x))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(459f, -1489f, 2154f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -207f, var_3))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3, -1023f, var_3), vec3<f32>(var_3, var_3, -360f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3, var_3, var_3), vec3<f32>(-150f, -730f, var_3))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-767f, -1000f, var_3)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1075f, 1655f, var_3))))))));
    return var_1;
}

fn func_4(arg_0: i32) -> vec2<i32> {
    global0 = array<bool, 23>();
    let var_0 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x << (firstLeadingBit(u_input.d) % 32u), 23u)] | !any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(17196u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(1u, 23u)])), vec4<u32>(21569u, 4294967295u, u_input.d, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-802f, -1000f) + vec2<f32>(-814f, -584f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -195f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(638f, -618f)))), select(select(!vec2<bool>(global0[_wgslsmith_index_u32(44046u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], false), select(vec2<bool>(true, global0[_wgslsmith_index_u32(4390u, 23u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(16252u, 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))), !select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), false), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-404f, 1408f))))), vec2<i32>(func_3(), -u_input.c) & vec2<i32>(abs(u_input.b), -1i), !select(select(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.d, 23u)], true), vec4<bool>(global0[_wgslsmith_index_u32(4907u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], true, global0[_wgslsmith_index_u32(51747u, 23u)]), true), select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(7961u, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(87723u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true, true), true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(27094u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), u_input.a.x >= 22014u), any(vec2<bool>(true, true))), max(_wgslsmith_clamp_vec2_i32(vec2<i32>(~46787i, u_input.c), max(vec2<i32>(-1i, arg_0), abs(vec2<i32>(-2147483647i, u_input.b))), ~(~vec2<i32>(u_input.b, u_input.b))), _wgslsmith_div_vec2_i32(vec2<i32>(~arg_0, ~(-9596i)), _wgslsmith_sub_vec2_i32(vec2<i32>(32288i, arg_0) << (u_input.a.yx % vec2<u32>(32u)), vec2<i32>(-20378i, 48628i) ^ vec2<i32>(arg_0, u_input.c)))));
    return countOneBits(vec2<i32>(-1i, arg_0));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = ~_wgslsmith_mult_vec2_i32(func_4(_wgslsmith_sub_i32(-36279i, func_3())), vec2<i32>(arg_1.c.x, abs(0i) << (select(u_input.a.x, 1u, true) % 32u)));
    let var_1 = Struct_2(arg_1.a, arg_1.a.c.x, _wgslsmith_mod_vec2_i32(firstTrailingBit(reverseBits(var_0)), vec2<i32>(u_input.c >> (arg_1.a.b.x % 32u), -_wgslsmith_sub_i32(40274i, arg_1.e.x))), !arg_1.d, select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, var_0.x), ~var_0) | -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.e.x, var_0.x), vec2<i32>(-1i, arg_1.e.x)), vec2<i32>(~(var_0.x << (u_input.d % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, arg_1.e.x, -2147483647i, arg_1.e.x), vec4<i32>(var_0.x, 1i, -1i, arg_1.c.x)), ~vec4<i32>(var_0.x, var_0.x, -24022i, -65402i))), ~_wgslsmith_div_i32(-1i, var_0.x) != -1i));
    var var_2 = var_1.a.d;
    var_2 = arg_1.a.d;
    let var_3 = _wgslsmith_sub_vec4_u32(arg_1.a.b, arg_1.a.b);
    return vec2<i32>(select(-2147483647i, -4592i, !(-218f > _wgslsmith_f_op_f32(arg_1.a.c.x - arg_1.b))), var_1.e.x ^ _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.e.x, arg_1.c.x, u_input.b, 0i), vec4<i32>(var_0.x, 69064i, -1i, var_1.e.x) | vec4<i32>(-2147483647i, u_input.b, var_1.e.x, var_1.c.x)), min(vec4<i32>(24739i, var_1.e.x, -18355i, 22299i), vec4<i32>(1i, var_1.e.x, 48999i, 2147483647i)) >> (firstTrailingBit(arg_1.a.b) % vec4<u32>(32u))));
}

fn func_5(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    var var_0 = ~u_input.a.x;
    var var_1 = ~u_input.a.x;
    let var_2 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(~4294967295u, 23u)], vec4<u32>(1u, u_input.a.x ^ 0u, ~u_input.d, 4294967295u) | ~reverseBits(vec4<u32>(u_input.d, 0u, 29893u, u_input.d)), vec2<f32>(_wgslsmith_div_f32(-870f, _wgslsmith_f_op_f32(abs(738f))), _wgslsmith_f_op_f32(f32(-1f) * -155f)), !vec2<bool>(global0[_wgslsmith_index_u32(min(4294967295u, 42329u), 23u)], global0[_wgslsmith_index_u32(23646u, 23u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1564f * _wgslsmith_f_op_f32(trunc(-239f))))), _wgslsmith_f_op_f32(ceil(1f)))), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(arg_0, vec2<i32>(u_input.c, 2147483647i) | min(arg_0, arg_0)), vec2<i32>(u_input.b, 6942i)), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 0u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), 23u)], global0[_wgslsmith_index_u32(u_input.a.x >> (0u % 32u), 23u)]), -(select(~arg_0, _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(-1099i, 1i)), vec2<bool>(global0[_wgslsmith_index_u32(3639u, 23u)], false)) << (u_input.a.zy % vec2<u32>(32u))));
    return var_2.a;
}

fn func_1(arg_0: vec4<u32>) -> bool {
    var var_0 = func_5(_wgslsmith_sub_vec2_i32(select(vec2<i32>(abs(u_input.c), -u_input.c), func_2(false, Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.d, 23u)], arg_0, vec2<f32>(419f, 857f), vec2<bool>(true, false)), 838f, vec2<i32>(u_input.c, u_input.c), vec4<bool>(global0[_wgslsmith_index_u32(2371u, 23u)], true, false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec2<i32>(1i, -18972i))), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 23u)]))), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.b, 84240i)) ^ vec2<i32>(-36206i, 17194i)));
    let var_1 = func_5(vec2<i32>(-2147483647i, -10462i));
    var var_2 = Struct_2(func_5(-abs(vec2<i32>(0i, u_input.c)) << (var_0.b.yx % vec2<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<i32>(countOneBits(u_input.b), reverseBits(func_2(global0[_wgslsmith_index_u32(74647u, 23u)], Struct_2(var_1, -377f, vec2<i32>(-39690i, -3969i), vec4<bool>(false, var_1.a, false, var_0.d.x), vec2<i32>(23930i, 0i))).x) & (u_input.c & 1i)), !select(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], var_1.a, global0[_wgslsmith_index_u32(arg_0.x, 23u)], global0[_wgslsmith_index_u32(var_1.b.x, 23u)]), vec4<bool>(var_1.a, global0[_wgslsmith_index_u32(38634u, 23u)], global0[_wgslsmith_index_u32(7542u, 23u)], false), vec4<bool>(false, true, var_0.a, var_0.d.x)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.b.x, 23u)], false, var_0.a), vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 23u)], var_0.a, true, true), select(vec4<bool>(false, var_0.d.x, var_0.a, global0[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(false, var_0.d.x, var_1.a, var_0.d.x), global0[_wgslsmith_index_u32(var_0.b.x, 23u)])), !(!vec4<bool>(false, var_0.d.x, var_1.a, false))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-33338i, func_2(var_1.d.x, Struct_2(var_1, var_1.c.x, vec2<i32>(u_input.b, u_input.b), vec4<bool>(var_1.d.x, false, true, var_1.d.x), vec2<i32>(-1i, 11563i))).x, 41826i), -11373i), vec2<i32>(1304i, -u_input.c)));
    let var_3 = !func_5(_wgslsmith_sub_vec2_i32(var_2.e, vec2<i32>(var_2.e.x & 1i, abs(-70852i)))).d;
    global0 = array<bool, 23>();
    return false;
}

fn func_6(arg_0: i32, arg_1: vec3<bool>, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_1(!all(vec4<bool>(false, true, any(vec4<bool>(arg_1.x, true, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)])), true)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.d, 1u, 0u), (vec4<u32>(arg_2, u_input.a.x, 64656u, u_input.a.x) << (vec4<u32>(u_input.a.x, arg_2, 30905u, arg_2) % vec4<u32>(32u))) << (~vec4<u32>(16087u, u_input.d, arg_2, arg_2) % vec4<u32>(32u))) | vec4<u32>(reverseBits(u_input.a.x), 37909u, u_input.a.x, 7819u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(202f)), _wgslsmith_f_op_f32(select(-1800f, -390f, true))), vec2<f32>(1f, 1f)))), select(arg_1.xy, arg_1.xz, arg_1.x));
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_1 = select(select(select(!(!vec4<bool>(false, arg_1.x, var_0.d.x, true)), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_2, 23u)], false), select(vec4<bool>(false, var_0.d.x, var_0.d.x, arg_1.x), vec4<bool>(false, arg_1.x, false, false), false), select(vec4<bool>(true, false, true, arg_1.x), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2, 23u)], var_0.d.x, global0[_wgslsmith_index_u32(4294967295u, 23u)]), false)), select(!vec4<bool>(false, false, arg_1.x, false), vec4<bool>(false, var_0.d.x, true, false), !vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 23u)], arg_1.x, true, var_0.d.x))), !select(!vec4<bool>(true, arg_1.x, var_0.d.x, var_0.a), select(vec4<bool>(true, true, false, var_0.a), vec4<bool>(arg_1.x, true, false, false), true), false), var_0.a), !select(select(select(vec4<bool>(true, var_0.a, global0[_wgslsmith_index_u32(var_0.b.x, 23u)], false), vec4<bool>(false, true, global0[_wgslsmith_index_u32(1641u, 23u)], false), false), select(vec4<bool>(arg_1.x, false, var_0.d.x, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(var_0.b.x, 23u)], global0[_wgslsmith_index_u32(var_0.b.x, 23u)], true), vec4<bool>(arg_1.x, arg_1.x, false, true)), vec4<bool>(true, global0[_wgslsmith_index_u32(54971u, 23u)], true, true)), select(!vec4<bool>(true, false, arg_1.x, false), vec4<bool>(arg_1.x, false, false, global0[_wgslsmith_index_u32(43946u, 23u)]), !arg_1.x), !(!vec4<bool>(var_0.d.x, false, global0[_wgslsmith_index_u32(var_0.b.x, 23u)], false))), func_5(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, min(u_input.b, u_input.c)), i32(-1i) * -u_input.b)).d.x);
    return Struct_2(Struct_1(all(vec3<bool>(true, true, true)), vec4<u32>(abs(~u_input.d), ~_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(0u, 4294967295u, 29038u, var_0.b.x)), 481u, ~46828u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-263f, -1000f)) + _wgslsmith_f_op_vec2_f32(-var_0.c))), !select(vec2<bool>(arg_1.x, false), !vec2<bool>(true, var_1.x), global0[_wgslsmith_index_u32(1u, 23u)])), _wgslsmith_f_op_f32(-305f + -555f), vec2<i32>(2147483647i, u_input.c), select(!select(var_1, select(var_1, var_1, vec4<bool>(false, false, var_0.a, false)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(u_input.a.x, var_0.b.x, 0u, var_0.b.x)), 23u)]), var_1, var_0.a), _wgslsmith_div_vec2_i32(-min(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.b, 50097i)), _wgslsmith_mod_vec2_i32(vec2<i32>(41644i, arg_0), vec2<i32>(40031i, u_input.c))), abs(~vec2<i32>(u_input.b, -34349i)) >> (firstTrailingBit(var_0.b.zx) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -743f;
    let var_1 = func_6(u_input.b, vec3<bool>(any(vec3<bool>(true, var_0 >= 347f, true)), !func_1(vec4<u32>(u_input.d, u_input.a.x, u_input.a.x, 0u)) == false, !global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 23u)]), abs(75868u));
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_2 = var_1;
    var var_3 = var_1;
    global0 = array<bool, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(func_6(firstTrailingBit(1i << (var_1.a.b.x % 32u)), select(var_1.d.wwy, select(var_3.d.zwz, vec3<bool>(var_1.a.d.x, false, true), var_2.d.yzw), var_1.d.wzy), min(var_3.a.b.x & u_input.a.x, abs(27054u))).e.x ^ -75489i);
}

