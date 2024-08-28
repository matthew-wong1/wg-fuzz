struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(8152u, 8648u, 0u, 7714u, 4294967295u, 13257u);

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(26612u, 1u, 53434u, 48852u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(16582u, 17926u, 0u, 31226u), vec4<u32>(1u, 31000u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 104527u, 1u), vec4<u32>(0u, 23651u, 0u, 15126u));

var<private> global3: array<f32, 27>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(reverseBits(1i), arg_0.d.d), _wgslsmith_add_vec2_i32(-abs(arg_0.a.zw), -vec2<i32>(arg_1, -9221i)));
    global2 = array<vec4<u32>, 8>();
    global3 = array<f32, 27>();
    global2 = array<vec4<u32>, 8>();
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(arg_0.a >> (vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(0u, 6u)], 0u) % vec4<u32>(32u)), arg_0.a) >> ((abs(~30312u) ^ ~global0[_wgslsmith_index_u32(abs(0u), 6u)]) % 32u), ~(-arg_1));
    return false;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3) -> vec3<bool> {
    global3 = array<f32, 27>();
    global2 = array<vec4<u32>, 8>();
    var var_0 = Struct_1(!(!select(!vec3<bool>(arg_1.b, true, false), !vec3<bool>(false, arg_1.b, true), vec3<bool>(arg_1.b, true, arg_1.b))), !vec3<bool>(all(!vec3<bool>(arg_1.b, arg_1.b, false)), func_3(Struct_2(vec4<i32>(arg_0.x, arg_0.x, -1i, 34155i), vec2<bool>(arg_1.b, arg_1.b), Struct_1(vec3<bool>(true, true, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, false), arg_1.b, u_input.a.x), Struct_1(vec3<bool>(false, true, arg_1.b), vec3<bool>(true, arg_1.b, false), arg_1.b, arg_0.x), Struct_1(vec3<bool>(arg_1.b, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, true), true, u_input.a.x)), -2147483647i, arg_1, vec3<i32>(arg_0.x, arg_0.x, u_input.a.x)), !arg_1.b), any(vec3<bool>(true, true, true)) && !arg_1.b, abs(_wgslsmith_mod_i32(min(-1i, u_input.a.x & arg_0.x), u_input.a.x)));
    global0 = array<u32, 6>();
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1.c.x, 27u)] * -1300f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-884f + arg_1.a)))))));
    return !(!select(select(var_0.a, !var_0.a, select(var_0.a, var_0.b, var_0.b)), !(!vec3<bool>(var_0.b.x, false, false)), true));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = ~countOneBits(~vec2<u32>(reverseBits(4294967295u), ~0u));
    let var_1 = vec2<u32>(abs(~abs(~global0[_wgslsmith_index_u32(33461u, 6u)])), select(~(~1u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)]), ~var_0.x), var_0.x), all(select(vec3<bool>(false, false, arg_3.b.x), vec3<bool>(arg_3.c, false, true), vec3<bool>(arg_3.b.x, arg_3.a.x, arg_3.a.x)))));
    global3 = array<f32, 27>();
    var var_2 = any(select(select(!select(arg_3.a.zz, vec2<bool>(arg_2.e.c, arg_2.e.c), true), !(!arg_2.d.a.zx), !arg_3.b.xz), arg_3.a.yz, true));
    global2 = array<vec4<u32>, 8>();
    return func_2(~select(vec2<i32>(arg_0, 1i), -vec2<i32>(arg_0, arg_0), any(arg_3.b) | true), Struct_3(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~32473u, ~var_1.x), 27u)] + global3[_wgslsmith_index_u32(~42776u >> (global0[_wgslsmith_index_u32(62959u, 6u)] % 32u), 27u)]), all(vec3<bool>(arg_3.a.x, any(vec4<bool>(false, arg_2.b.x, true, true)), true)), select(select(vec2<u32>(global0[_wgslsmith_index_u32(54264u, 6u)], var_1.x), _wgslsmith_clamp_vec2_u32(var_1, var_1, var_0), true), var_1, all(vec3<bool>(arg_3.c, true, true)) || true)));
}

fn func_1(arg_0: bool, arg_1: bool) -> vec3<bool> {
    var var_0 = func_4(~u_input.a.x, abs(-(u_input.a.x ^ (u_input.a.x ^ -2147483647i))), Struct_2(vec4<i32>(u_input.a.x, 59487i, 2147483647i, u_input.a.x) | -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), vec2<bool>(false, !(arg_0 == true)), Struct_1(vec3<bool>(arg_1 && arg_0, all(vec3<bool>(arg_1, false, true)), arg_0), select(select(vec3<bool>(false, false, arg_0), vec3<bool>(false, true, true), vec3<bool>(arg_0, arg_1, arg_1)), !vec3<bool>(arg_1, false, arg_0), func_2(u_input.a, Struct_3(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33200u, 6u)], 6u)], 27u)], false, vec2<u32>(1u, 8448u)))), false, u_input.a.x), Struct_1(!(!vec3<bool>(true, true, arg_0)), func_2(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-56423i, 1i)), Struct_3(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59039u, 6u)], 27u)], arg_0, vec2<u32>(4294967295u, 25090u))), any(!vec3<bool>(false, true, arg_1)), abs(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), Struct_1(func_2(countOneBits(u_input.a), Struct_3(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18199u, 6u)], 6u)], 27u)], arg_0, vec2<u32>(122212u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47327u, 6u)], 6u)]))), vec3<bool>(arg_0 || false, arg_1, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 27u)] == global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 27u)]), _wgslsmith_clamp_i32(14229i, -2583i, 1273i) <= ~u_input.a.x, abs(abs(-2013i)))), Struct_1(!func_2(u_input.a, Struct_3(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 27u)], true, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 1u))), vec3<bool>(arg_1, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 27u)]) == global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(8580u, 6u)], 27u)], all(!vec2<bool>(true, arg_0))), all(vec3<bool>(arg_1, !arg_0, arg_1)), 0i));
    var var_1 = Struct_1(select(vec3<bool>(true, !arg_0, arg_0), vec3<bool>(true, arg_0, func_4(abs(u_input.a.x), -u_input.a.x, Struct_2(vec4<i32>(u_input.a.x, 8298i, u_input.a.x, u_input.a.x), var_0.xz, Struct_1(vec3<bool>(arg_1, true, arg_0), vec3<bool>(arg_0, arg_0, arg_1), var_0.x, 2147483647i), Struct_1(vec3<bool>(true, arg_1, arg_0), vec3<bool>(arg_1, false, arg_0), true, -1i), Struct_1(vec3<bool>(true, false, var_0.x), vec3<bool>(true, false, var_0.x), arg_1, -9482i)), Struct_1(vec3<bool>(var_0.x, false, true), vec3<bool>(false, arg_0, arg_0), false, -2147483647i)).x), !vec3<bool>(func_3(Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec2<bool>(arg_1, false), Struct_1(vec3<bool>(arg_1, true, var_0.x), vec3<bool>(arg_0, var_0.x, true), arg_0, u_input.a.x), Struct_1(vec3<bool>(arg_1, false, var_0.x), vec3<bool>(var_0.x, true, arg_0), arg_1, u_input.a.x), Struct_1(vec3<bool>(var_0.x, arg_1, false), vec3<bool>(var_0.x, false, false), false, 1i)), u_input.a.x, Struct_3(global3[_wgslsmith_index_u32(0u, 27u)], true, vec2<u32>(1u, 0u)), vec3<i32>(19344i, -38938i, u_input.a.x)), var_0.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4372u, 6u)], 6u)], 27u)] <= -1211f)), vec3<bool>(arg_0, all(select(vec3<bool>(arg_1, arg_1, arg_1), func_4(1i, u_input.a.x, Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, -5852i, 2147483647i), vec2<bool>(true, arg_0), Struct_1(vec3<bool>(false, true, false), vec3<bool>(var_0.x, false, var_0.x), false, -35949i), Struct_1(vec3<bool>(false, var_0.x, true), vec3<bool>(true, true, true), true, 0i), Struct_1(vec3<bool>(arg_0, false, var_0.x), vec3<bool>(true, false, false), var_0.x, u_input.a.x)), Struct_1(vec3<bool>(true, true, true), vec3<bool>(arg_0, var_0.x, false), arg_0, u_input.a.x)), vec3<bool>(arg_1, false, false))), select(true, any(!vec3<bool>(arg_0, true, true)), arg_1)), !select(!all(vec3<bool>(false, true, arg_0)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(48439u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)]), 27u)] <= -1000f, arg_0), -29681i);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 27u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(global0[_wgslsmith_index_u32(4294967295u, 6u)], 134895u, var_1.a.x), countOneBits(8347u)), 27u)]))), global3[_wgslsmith_index_u32(countOneBits((_wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(17016u, 6u)]) & _wgslsmith_dot_vec4_u32(vec4<u32>(79105u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48917u, 6u)], 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)]), global2[_wgslsmith_index_u32(0u, 8u)])) & (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 59640u) & global0[_wgslsmith_index_u32(~29449u, 6u)])), 27u)], any(vec2<bool>(true, true)) | true));
    var var_3 = Struct_4(Struct_1(func_2(countOneBits(u_input.a & vec2<i32>(-33392i, u_input.a.x)), Struct_3(872f, !var_0.x, vec2<u32>(57980u, 1u))), var_1.a, all(!(!vec4<bool>(false, var_0.x, false, true))), var_1.d), 20290u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~firstTrailingBit(countOneBits(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], 6u)], 6u)]))), 6u)], 6u)], 6u)], Struct_1(vec3<bool>(true, true, true), vec3<bool>(var_0.x, true, func_3(Struct_2(vec4<i32>(-1i, u_input.a.x, 0i, -3825i), vec2<bool>(true, arg_1), Struct_1(vec3<bool>(false, true, var_0.x), var_1.b, false, -2147483647i), Struct_1(var_1.b, vec3<bool>(var_0.x, var_0.x, false), var_0.x, 27247i), Struct_1(var_1.a, vec3<bool>(false, false, true), var_0.x, u_input.a.x)), -1i, Struct_3(-209f, false, vec2<u32>(8284u, global0[_wgslsmith_index_u32(27587u, 6u)])), vec3<i32>(0i, -19959i, var_1.d)) != true), (_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 27u)] - global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58864u, 6u)], 27u)]) < global3[_wgslsmith_index_u32(select(0u, 1u, true), 27u)]) && false, -2147483647i), Struct_1(var_1.b, vec3<bool>(true, !arg_1 || !var_0.x, true), !(select(false, true, arg_1) && true), firstLeadingBit(_wgslsmith_sub_i32(u_input.a.x, var_1.d >> (59336u % 32u)))));
    var var_4 = countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(~0u, 6u)]), ~firstLeadingBit(vec3<u32>(16864u, global0[_wgslsmith_index_u32(var_3.c, 6u)], 1u))));
    return !func_2(u_input.a, Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(-478f, -1000f), global3[_wgslsmith_index_u32(var_3.b, 27u)]), !arg_0, ~var_4.zy));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1065f - -990f), global3[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(37631u, 1u, select(global0[_wgslsmith_index_u32(arg_0.x, 6u)], 20190u, true))), 27u)]));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(var_1.c, global0[_wgslsmith_index_u32(arg_2.c, 6u)])), 27u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    let var_3 = Struct_2(select(vec4<i32>(arg_2.e.d, 56850i, -15465i, ~arg_2.e.d), _wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.a.d, -20567i, -18625i, arg_2.e.d), vec4<i32>(var_1.d.d, 2147483647i, arg_1.a.d, 0i)), abs(-vec4<i32>(arg_2.a.d, arg_1.d.d, 12663i, -1i))), arg_2.d.a.x), func_1(1u != var_1.b, arg_2.e.a.x).zx, arg_1.e, Struct_1(arg_1.a.b, vec3<bool>(arg_2.a.b.x, arg_2.a.c, all(arg_2.e.b) | false), any(!vec2<bool>(arg_2.a.c, var_1.d.b.x)), arg_2.a.d), arg_1.d);
    let var_4 = Struct_3(var_0, true, vec2<u32>(4294967295u, (countOneBits(arg_0.x) >> ((arg_1.b ^ 4294967295u) % 32u)) << ((_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 6u)], 6u)], 49998u) ^ (var_1.c >> (arg_2.c % 32u))) % 32u)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~_wgslsmith_div_vec2_u32(abs(~vec2<u32>(4294967295u, 0u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 6u)], 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(77346u, 6u)], 6u)]), vec2<u32>(4294967295u, 44446u)), 4294967295u)));
    let var_1 = func_5(abs(global2[_wgslsmith_index_u32(var_0.x, 8u)]), Struct_4(Struct_1(select(func_1(true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true, -17804i), ~(var_0.x ^ 0u) ^ 22465u, 4294967295u, Struct_1(vec3<bool>(3189i < u_input.a.x, true, true), vec3<bool>(true, true, false), false, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 8158i, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, -35730i, 0i)))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), false, u_input.a.x << (global0[_wgslsmith_index_u32(147508u, 6u)] % 32u))), Struct_4(Struct_1(vec3<bool>(all(vec4<bool>(true, false, true, false)), true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23169u, 6u)], 6u)], 6u)] >= var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), func_3(Struct_2(vec4<i32>(1i, 0i, 2147483647i, -1i), vec2<bool>(true, true), Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false, -2147483647i), Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false, u_input.a.x), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false, 6602i)), 70253i, Struct_3(1944f, false, var_0), vec3<i32>(-2147483647i, -16498i, u_input.a.x)) && true, -1i), abs(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36043u, 6u)], 6u)], 6u)]), 6u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(47166u, 4294967295u), firstLeadingBit(42444u), countOneBits(global0[_wgslsmith_index_u32(var_0.x, 6u)])), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32495u, 6u)], 6u)], 42007u), vec3<u32>(46856u, var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)])))), Struct_1(vec3<bool>(12596u > var_0.x, any(vec4<bool>(false, false, false, false)), true), func_4(5320i, i32(-1i) * -30349i, Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, -10936i, u_input.a.x), vec2<bool>(true, true), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false, u_input.a.x), Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false, u_input.a.x), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true, 1i)), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false, -1i)), true & any(vec4<bool>(false, true, true, true)), _wgslsmith_sub_i32(u_input.a.x | 44957i, -37994i >> (global0[_wgslsmith_index_u32(0u, 6u)] % 32u))), Struct_1(func_1(true, true), vec3<bool>(true, true, true), true, i32(-1i) * -u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_1.b, 1u), 8u)], -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(min(firstLeadingBit(u_input.a.x), -3356i), abs(-1i), _wgslsmith_mult_i32(func_5(vec4<u32>(86822u, global0[_wgslsmith_index_u32(var_0.x, 6u)], var_0.x, var_1.b), Struct_4(var_1.a, 1u, global0[_wgslsmith_index_u32(40583u, 6u)], var_1.a, Struct_1(vec3<bool>(var_1.a.a.x, var_1.d.c, var_1.a.b.x), var_1.e.a, var_1.e.b.x, u_input.a.x)), Struct_4(var_1.d, var_0.x, global0[_wgslsmith_index_u32(var_0.x, 6u)], var_1.d, var_1.a)).e.d, ~(-51729i))), -(~vec3<i32>(1i, 26199i, var_1.a.d))));
}

