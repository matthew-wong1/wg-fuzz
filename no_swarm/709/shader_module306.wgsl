struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, false, true, false, true, true, false, true, false, false, false, true, false, false, false, true, false, false, true, false, true, true, true, true, true, true, false, false, false, true);

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.a, 1i)) << (~77828u % 32u), u_input.b, _wgslsmith_div_i32(36762i, -11143i) >> (select(arg_0.a.x, 0u, true) % 32u)), _wgslsmith_add_vec4_i32(vec4<i32>(max(arg_2, -1i), arg_2, -41511i, _wgslsmith_mod_i32(0i, arg_2)), select(~vec4<i32>(22905i, 0i, 2147483647i, 0i), vec4<i32>(arg_2, arg_2, -37473i, 59722i), select(vec4<bool>(arg_1.b, false, arg_0.c.x, false), vec4<bool>(false, false, false, false), global1.x)))), _wgslsmith_add_vec4_i32(-((vec4<i32>(-2147483647i, 12076i, u_input.b, 79267i) ^ vec4<i32>(-2370i, 1i, u_input.b, 43687i)) ^ vec4<i32>(u_input.a, 0i, u_input.a, u_input.b)), countOneBits(vec4<i32>(u_input.a, select(-2147483647i, arg_2, true), 1i, 1i))), true);
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(arg_0.a.x, 35618u)), select(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1.a, arg_1.a, arg_3.a), ~arg_3.a), vec2<u32>(_wgslsmith_mod_u32(arg_3.a.x, arg_3.a.x), arg_0.a.x), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 32u)], arg_0.b), arg_0.e.zy, true)), abs(vec2<u32>(arg_3.a.x, 60402u)) << (arg_3.a % vec2<u32>(32u))), true, !(!arg_3.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - arg_0.d))), vec3<bool>(arg_0.c.x, !(4294967295u <= arg_0.a.x), arg_0.e.x));
    var_0 = vec4<i32>(arg_2, arg_2, -12907i, 1i);
    var var_2 = 0u;
    var_0 = _wgslsmith_div_vec4_i32(-vec4<i32>(reverseBits(1i), reverseBits(max(-44524i, u_input.b)), -2147483647i, -20115i), vec4<i32>(_wgslsmith_div_i32(2147483647i, u_input.b) ^ 0i, 34249i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.x, arg_2, 46109i), vec4<i32>(var_0.x, u_input.a, u_input.b, -2147483647i)), 12414i, _wgslsmith_add_i32(-13304i ^ u_input.a, -5856i)) & vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, var_0.x, u_input.a, u_input.a), ~vec4<i32>(var_0.x, var_0.x, u_input.a, u_input.a)), -_wgslsmith_mult_i32(var_0.x, 45168i), _wgslsmith_mod_i32(min(-14837i, -22030i), _wgslsmith_sub_i32(u_input.a, var_0.x)), 2147483647i));
    return vec4<bool>(var_1.e.x, !all(vec4<bool>(49940u <= arg_1.a.x, u_input.a >= arg_2, all(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(arg_3.a.x, 32u)])), all(var_1.e.yx))), arg_3.e.x, true);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = -vec2<i32>(~1i ^ u_input.b, -2147483647i);
    return Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(34979u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_1.x, 1235u, arg_1.x), vec4<u32>(arg_1.x, 62270u, arg_1.x, arg_1.x))), firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_1.x), vec2<u32>(arg_1.x, arg_1.x)))), all(select(func_3(Struct_1(arg_1, global0[_wgslsmith_index_u32(1u, 32u)], vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 32u)], false, global0[_wgslsmith_index_u32(1u, 32u)]), -1000f, vec3<bool>(true, global1.x, global1.x)), Struct_1(arg_1, false, vec3<bool>(false, global1.x, global1.x), 872f, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], false, global1.x)), -1i, Struct_1(vec2<u32>(arg_1.x, 4294967295u), global0[_wgslsmith_index_u32(4294967295u, 32u)], vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 32u)], global0[_wgslsmith_index_u32(27344u, 32u)], global1.x), -1000f, vec3<bool>(global0[_wgslsmith_index_u32(37679u, 32u)], true, true))), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(20938u, 32u)], global1.x, global1.x), vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], false, global1.x, global0[_wgslsmith_index_u32(arg_1.x, 32u)]), global1.x), false)), select(vec3<bool>(!global1.x & (0u <= arg_1.x), any(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 32u)], global1.x, global1.x, global0[_wgslsmith_index_u32(arg_1.x, 32u)])), all(!vec3<bool>(global1.x, global1.x, true))), !(!vec3<bool>(true, global1.x, global1.x)), all(global1.yx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-770f - _wgslsmith_f_op_f32(-153f - -672f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(462f + -105f) * 278f)))), !func_3(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(26158u, arg_1.x), arg_1), all(vec4<bool>(global1.x, false, global1.x, global0[_wgslsmith_index_u32(arg_1.x, 32u)])), !vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 32u)], global1.x, global1.x), _wgslsmith_f_op_f32(ceil(857f)), !vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 32u)], global1.x)), Struct_1(arg_1, global0[_wgslsmith_index_u32(arg_1.x, 32u)] | false, !vec3<bool>(global1.x, global1.x, true), _wgslsmith_f_op_f32(f32(-1f) * -1677f), select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(15012u, 32u)]), vec3<bool>(global0[_wgslsmith_index_u32(49151u, 32u)], global0[_wgslsmith_index_u32(arg_1.x, 32u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(73250u, 32u)], global0[_wgslsmith_index_u32(arg_1.x, 32u)]))), arg_3.x, Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 25855u), arg_1), global0[_wgslsmith_index_u32(~arg_1.x, 32u)], vec3<bool>(global1.x, true, true), _wgslsmith_f_op_f32(max(1598f, -413f)), select(vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, true, global1.x)))).wxz);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global1 = vec3<bool>(!all(!vec4<bool>(true, true, arg_0.c.x, arg_0.e.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(arg_1.a.x << (arg_1.a.x % 32u)), arg_0.a.x, 0u), ~(vec3<u32>(1u, 1u, 0u) ^ vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)) << (vec3<u32>(4294967295u, 1u, _wgslsmith_sub_u32(arg_0.a.x, 0u)) % vec3<u32>(32u))), 32u)], !any(arg_1.e.yx));
    var var_0 = select(select(!arg_1.c.yx, !(!vec2<bool>(arg_0.b, arg_1.b)), global1.zz), !func_2(u_input.b, ~vec2<u32>(26931u, 4294967295u), -2147483647i & ~u_input.b, select(vec4<i32>(-32857i, 7789i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 7920i, u_input.b), all(arg_0.c))).e.xz, arg_0.e.zx);
    var var_1 = Struct_1(firstTrailingBit(arg_1.a | firstTrailingBit(arg_0.a)), arg_1.a.x <= min(arg_1.a.x, reverseBits(arg_1.a.x)), arg_0.e, arg_0.d, func_3(arg_1, Struct_1(~arg_0.a | ~arg_1.a, !var_0.x, arg_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) + 1000f), select(!arg_1.e, vec3<bool>(arg_0.c.x, var_0.x, false), select(vec3<bool>(false, true, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 32u)], global1.x, arg_0.b), arg_0.e))), _wgslsmith_mod_i32(countOneBits(u_input.b) & _wgslsmith_div_i32(-16468i, u_input.a), u_input.b), Struct_1(arg_1.a, arg_1.b, func_2(u_input.b, vec2<u32>(arg_0.a.x, 35896u), _wgslsmith_dot_vec4_i32(vec4<i32>(17890i, 1i, u_input.b, u_input.a), vec4<i32>(u_input.b, u_input.b, u_input.a, 10418i)), vec4<i32>(u_input.a, -1i, -1i, u_input.a) << (vec4<u32>(arg_0.a.x, 1u, arg_1.a.x, 4294967295u) % vec4<u32>(32u))).e, func_2(u_input.b, _wgslsmith_div_vec2_u32(arg_0.a, arg_0.a), -u_input.b, -vec4<i32>(0i, u_input.b, u_input.a, u_input.b)).d, !(!vec3<bool>(false, arg_1.c.x, arg_1.e.x)))).xyy);
    let var_2 = Struct_1(arg_0.a, arg_1.e.x, vec3<bool>(global0[_wgslsmith_index_u32(max(~(~630u), arg_0.a.x), 32u)], select(arg_0.b, arg_0.b, true), false), -1411f, var_1.c);
    var_1 = func_2(u_input.b, ~vec2<u32>(1u, 4294967295u), 13328i, min(_wgslsmith_clamp_vec4_i32(select(~vec4<i32>(-14866i, 1i, u_input.a, -1686i), abs(vec4<i32>(-2147483647i, u_input.a, 0i, -13174i)), vec4<bool>(global1.x, false, var_2.b, var_2.b)), -vec4<i32>(-1i, u_input.b, -1i, 31483i), countOneBits(-vec4<i32>(u_input.b, u_input.b, u_input.b, -1i))), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -2147483647i, -67602i), vec4<i32>(-9192i, -8503i, u_input.a, u_input.a))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1687i, u_input.b, u_input.b, -49622i), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.b)))));
    return var_2.d;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    global1 = vec3<bool>(true, all(vec3<bool>(true, false, false && (global1.x || global1.x))), true);
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(45378i, vec2<u32>(81296u, 1u), arg_0.x, vec4<i32>(50258i, arg_0.x, -59514i, u_input.b)), func_2(arg_0.x, vec2<u32>(1u, 0u), -55511i, vec4<i32>(u_input.a, u_input.a, -22733i, arg_0.x)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f))))), 1101f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2364f, -1009f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-845f - 1000f) - -1337f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1775f))));
    global0 = array<bool, 32>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(879f, -839f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(778f, var_1)))))));
    return _wgslsmith_clamp_u32(22823u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 68958u, 40887u), vec3<u32>(5233u, 0u, 4294967295u)) | firstLeadingBit(1u), max(4294967295u, ~(~(0u >> (1u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(func_1(vec2<i32>(-1i, u_input.b) | vec2<i32>(u_input.a, -2147483647i)) >> ((~4147u & _wgslsmith_clamp_u32(1535u, 4294967295u, 4294967295u)) % 32u), ~42900u), true, vec3<bool>(true, true, any(vec3<bool>(true, true, global1.x)) | true), _wgslsmith_f_op_f32(func_4(Struct_1(vec2<u32>(44877u, 4294967295u), func_2(u_input.a, vec2<u32>(13107u, 5204u), -1i ^ u_input.a, vec4<i32>(51208i, -37731i, -17549i, u_input.b)).e.x, func_2(-2147483647i, vec2<u32>(1u, 1u), u_input.a, select(vec4<i32>(u_input.b, 3314i, u_input.a, u_input.b), vec4<i32>(u_input.b, u_input.a, 48379i, u_input.b), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)], true, global0[_wgslsmith_index_u32(17411u, 32u)]))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1064f, 211f))), !vec3<bool>(global1.x, false, global1.x)), Struct_1(~abs(vec2<u32>(0u, 1u)), !global0[_wgslsmith_index_u32(abs(20515u), 32u)], vec3<bool>(false, global1.x, true), -544f, vec3<bool>(false, u_input.b != -1i, !global1.x)))), select(!func_2(u_input.a & u_input.b, vec2<u32>(8408u, 41543u), 1i, _wgslsmith_mult_vec4_i32(vec4<i32>(27908i, u_input.a, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 53358i))).c, !select(func_2(u_input.b, vec2<u32>(40180u, 0u), 1i, vec4<i32>(u_input.b, 32593i, u_input.a, 1i)).e, select(vec3<bool>(global0[_wgslsmith_index_u32(53241u, 32u)], global0[_wgslsmith_index_u32(6668u, 32u)], false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 32u)], false, false), vec3<bool>(global1.x, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)])), all(vec4<bool>(global1.x, global1.x, true, global1.x))), any(!vec3<bool>(global1.x, global1.x, false))));
    let var_1 = all(func_2(firstLeadingBit(~(-32705i)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(var_0.a.x, var_0.a.x)), vec2<u32>(var_0.a.x, var_0.a.x)), select(vec2<u32>(0u, 0u), var_0.a, true)), u_input.a, vec4<i32>(12197i, -4484i, -2147483647i, _wgslsmith_add_i32(u_input.b, u_input.b) & -24627i)).c);
    var var_2 = Struct_1(abs(vec2<u32>(_wgslsmith_mod_u32(countOneBits(45630u), ~var_0.a.x), (4294967295u ^ var_0.a.x) ^ var_0.a.x)), all(var_0.e), vec3<bool>(!(false | global0[_wgslsmith_index_u32(0u, 32u)]), var_0.b, all(vec4<bool>(var_0.e.x, true, true, any(global1.yz)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1684f + 1118f))), select(select(var_0.e, select(var_0.c, vec3<bool>(false, global1.x, var_0.c.x), any(global1.zz)), !func_2(u_input.a, vec2<u32>(var_0.a.x, var_0.a.x), -1i, vec4<i32>(u_input.b, 18004i, u_input.b, 1i)).c), var_0.e, !var_1));
    let var_3 = firstTrailingBit(select(_wgslsmith_mult_vec2_i32(max(-vec2<i32>(1i, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -122073i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.b))), vec2<i32>(abs(-21809i), -u_input.b)), vec2<i32>(1i, 1i), global1.x));
    let var_4 = -52110i;
    let var_5 = Struct_1(select(vec2<u32>(firstLeadingBit(_wgslsmith_add_u32(var_2.a.x, 41991u)), ~var_2.a.x), _wgslsmith_div_vec2_u32(~select(vec2<u32>(7874u, 16341u), vec2<u32>(var_2.a.x, var_2.a.x), global1.x), ~var_2.a), !(!(!var_0.e.xx))), !(!all(vec2<bool>(true, true))), !func_3(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-9551i, -1i, var_3.x), vec3<i32>(var_4, -20587i, 0i)), ~vec2<u32>(var_2.a.x, var_2.a.x), 2147483647i, select(vec4<i32>(-1i, 2147483647i, 0i, var_4), vec4<i32>(-2147483647i, var_4, var_4, 14537i), true)), func_2(var_3.x & var_3.x, var_2.a, 1i, min(vec4<i32>(1i, -7711i, u_input.a, u_input.b), vec4<i32>(var_4, -4354i, 2147483647i, -1i))), u_input.a, func_2(-var_4, _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, 652u), var_0.a), min(1i, var_4), select(vec4<i32>(-14772i, 61708i, var_4, 16086i), vec4<i32>(var_4, var_3.x, 2147483647i, 1i), vec4<bool>(true, false, false, var_2.c.x)))).zyy, var_0.d, vec3<bool>(var_2.b, var_2.e.x, false));
    global1 = !func_2(u_input.b, min(~firstTrailingBit(vec2<u32>(4294967295u, 0u)), countOneBits(var_5.a)), var_3.x, select(vec4<i32>(2147483647i, -15110i, var_3.x, -1i), vec4<i32>(u_input.a, firstTrailingBit(var_4), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, -2147483647i, -26940i, var_4), vec4<i32>(1i, 1i, var_4, -6319i)), reverseBits(60206i)), func_3(func_2(var_3.x, vec2<u32>(37015u, var_0.a.x), 1i, vec4<i32>(-41670i, 25830i, var_4, 0i)), func_2(24960i, vec2<u32>(var_5.a.x, 1u), -172i, vec4<i32>(5478i, 53181i, var_4, -1i)), u_input.a, Struct_1(var_5.a, true, vec3<bool>(var_2.e.x, var_5.e.x, false), var_5.d, vec3<bool>(true, true, var_2.b))))).e;
    var_2 = func_2(1i, _wgslsmith_mult_vec2_u32(var_2.a, ~vec2<u32>(var_5.a.x, 27889u)), _wgslsmith_div_i32(-24634i, -u_input.a), vec4<i32>(var_4, 0i, -(firstLeadingBit(2147483647i) & firstTrailingBit(var_3.x)), abs(-(u_input.a & var_4))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~(-vec4<i32>(~var_3.x, var_4 ^ -1i, var_4, 0i)), _wgslsmith_f_op_f32(min(732f, var_0.d)), ~(-2147483647i));
}

