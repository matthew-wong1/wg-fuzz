struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

var<private> global1: u32;

var<private> global2: array<i32, 17> = array<i32, 17>(5906i, -12792i, -86720i, 32467i, i32(-2147483648), -11767i, 32246i, 0i, i32(-2147483648), 2147483647i, 2147483647i, 2147483647i, -20038i, i32(-2147483648), 0i, -42173i, 15173i);

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: u32, arg_3: u32) -> vec4<f32> {
    let var_0 = Struct_1(false, arg_1.x, global0[_wgslsmith_index_u32(~min(min(arg_1.x, arg_1.x), _wgslsmith_dot_vec2_u32(arg_1.xz, u_input.a.zw)), 32u)] << (u_input.a % vec4<u32>(32u)));
    let var_1 = var_0;
    global1 = 1u;
    global0 = array<vec4<i32>, 32>();
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 279f, 410f, 2016f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-395f, 954f))), -1454f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -115f)))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, -229f, var_2.x, -1643f))))), _wgslsmith_f_op_vec4_f32(select(var_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -480f, -459f, var_2.x) + var_2), vec4<bool>(var_0.a, var_1.a, true, var_1.a))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> u32 {
    global1 = arg_1.b.x;
    var var_0 = arg_1;
    var var_1 = Struct_1(true, 7992u, global0[_wgslsmith_index_u32(4294967295u, 32u)]);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_1.c.wxz, vec4<u32>(arg_1.b.x, var_0.b.x, 0u, var_1.b), 0u, 4294967295u)).x), arg_0.x))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0.x)))), _wgslsmith_f_op_f32(-1000f - -647f), _wgslsmith_f_op_f32(ceil(arg_0.x))))));
    var var_3 = !any(select(select(vec2<bool>(false, false), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, true), false), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, true), vec2<bool>(var_1.a, var_1.a))), vec2<bool>(any(vec3<bool>(var_1.a, var_1.a, var_1.a)), true), var_1.a));
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(~arg_2.x, var_0.b.x, _wgslsmith_clamp_u32(arg_2.x, firstTrailingBit(var_0.b.x), 103277u)), ~_wgslsmith_div_vec3_u32(reverseBits(u_input.a.xzx >> (vec3<u32>(arg_2.x, 0u, 1u) % vec3<u32>(32u))), vec3<u32>(max(arg_1.b.x, u_input.a.x), min(21294u, 1u), _wgslsmith_add_u32(18552u, 1u))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(-global2[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(-2147483647i, 56735i, global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), u_input.a, 60978u, arg_0.b)), Struct_2(arg_0.c.x, vec2<u32>(0u, 4294967295u)), firstTrailingBit(u_input.a.xz)) & _wgslsmith_clamp_u32(25327u << (arg_0.b % 32u), _wgslsmith_div_u32(4294967295u, u_input.b), 4294967295u), 17u)], u_input.a.xx);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> bool {
    global1 = _wgslsmith_add_u32(firstLeadingBit(~(~u_input.a.x)), ~(~23170u));
    var var_0 = select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.c < 41954i), _wgslsmith_f_op_f32(trunc(-718f)) == -553f), !vec3<bool>(u_input.a.x == 25189u, any(vec4<bool>(false, true, false, true)), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, 1u < func_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-975f, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), Struct_2(2147483647i, arg_0.b), vec2<u32>(9875u, arg_0.b.x) | vec2<u32>(u_input.a.x, 1u))), !all(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)));
    global1 = ~(u_input.a.x | 1u);
    var var_1 = vec3<bool>(var_0.x, var_0.x, false);
    global3 = all(vec4<bool>(false, true, !select(false, !var_0.x, true), any(!vec3<bool>(true, var_1.x, var_1.x))));
    return !any(vec4<bool>(select(u_input.b < 61329u, false, var_1.x), var_0.x, var_0.x, var_1.x));
}

fn func_6(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    global1 = ~((arg_2.x ^ 0u) ^ ~_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(arg_3.b, 0u, arg_2.x, arg_3.b)));
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(arg_3.c.xwz, vec4<u32>(59452u, 6885u, abs(~4294967295u), arg_3.b | arg_3.b) & _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_3.b, 36156u, 0u, 23157u), u_input.a & vec4<u32>(u_input.a.x, arg_3.b, arg_2.x, arg_3.b)), (1u >> ((arg_3.b & 23646u) % 32u)) << (45202u % 32u), ~_wgslsmith_clamp_u32(func_2(Struct_1(arg_0, 35438u, vec4<i32>(arg_3.c.x, arg_3.c.x, 2147483647i, 1i))).b.x, 4294967295u, func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(326f, -1320f, -1149f, -2060f), vec4<f32>(390f, 648f, 197f, -714f), vec4<bool>(true, true, true, true))), func_2(arg_3), _wgslsmith_clamp_vec2_u32(u_input.a.wy, u_input.a.ww, arg_2.yx))))).x;
    var var_1 = arg_0;
    var_1 = u_input.c >= _wgslsmith_div_i32(max(-1i, -2147483647i), u_input.c);
    let var_2 = arg_3;
    return arg_3;
}

fn func_1(arg_0: f32) -> u32 {
    global2 = array<i32, 17>();
    var var_0 = firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 34322u), u_input.a.xz), vec2<u32>(u_input.a.x >> (u_input.a.x % 32u), u_input.b << (u_input.a.x % 32u))), 17u)], u_input.c, ~(~countOneBits(global2[_wgslsmith_index_u32(4294967295u, 17u)]))));
    global3 = true;
    let var_1 = func_6(true, vec2<bool>(true, func_5(func_2(Struct_1(false, u_input.b, global0[_wgslsmith_index_u32(14551u, 32u)])), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1079f, arg_0, -950f, 1695f), vec4<f32>(323f, 2499f, -1387f, -1365f), vec4<bool>(false, true, false, true))))))), firstLeadingBit(u_input.a), Struct_1(!select(true, u_input.a.x >= 358u, false), _wgslsmith_dot_vec4_u32(~vec4<u32>(16987u, u_input.b, 0u, u_input.b) << (vec4<u32>(u_input.a.x, 0u, u_input.b, 0u) % vec4<u32>(32u)), abs(u_input.a)), _wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b, firstLeadingBit(u_input.b)), 32u)], _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(u_input.b, 32u)], vec4<i32>(12480i, 31321i, u_input.c, -2147483647i), vec4<i32>(-2147483647i, u_input.c, 1i, global2[_wgslsmith_index_u32(1u, 17u)])), select(global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], false)))));
    global2 = array<i32, 17>();
    return firstLeadingBit(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, ~firstLeadingBit(u_input.b), global0[_wgslsmith_index_u32(func_1(-1234f), 32u)]);
    var var_1 = var_0;
    let var_2 = ~1u;
    global1 = abs(var_2);
    var var_3 = var_0.a;
    global2 = array<i32, 17>();
    let var_4 = func_2(Struct_1(!(!(32863i > u_input.c)), _wgslsmith_add_u32(~(~1u), 1u), vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(1i, var_1.c.x, u_input.c, u_input.c))));
    var var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.a, u_input.c, 0i, 2147483647i), vec4<i32>(var_4.a, var_4.a, var_0.c.x, -1i)) & -2510i, _wgslsmith_sub_i32(var_1.c.x, global2[_wgslsmith_index_u32(var_4.b.x, 17u)] ^ u_input.c)), select(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, var_0.b, 1u), u_input.a)), u_input.a, vec4<bool>(1i <= var_4.a, any(vec2<bool>(var_1.a, var_1.a)), all(vec4<bool>(true, false, var_1.a, true)), 1i >= var_0.c.x)), func_6(!var_1.a, vec2<bool>(true, true), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 13273u, 4294967295u, var_4.b.x), ~u_input.a), func_6(!var_1.a, !vec2<bool>(true, var_0.a), ~vec4<u32>(0u, var_1.b, 4294967295u, var_4.b.x), var_0)).b, ~var_1.b)), _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(global2[_wgslsmith_index_u32(46486u, 17u)], _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, var_0.c.x), vec2<i32>(var_0.c.x, 2147483647i)), 35969i), u_input.a, 0u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_4.b, vec2<u32>(95037u, 0u)), ~(~var_4.b)))));
    var var_6 = vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(-_wgslsmith_mod_vec3_i32(min(vec3<i32>(var_4.a, global2[_wgslsmith_index_u32(var_2, 17u)], 28351i), vec3<i32>(var_1.c.x, -2147483647i, 1i)), ~vec3<i32>(34035i, 59898i, var_0.c.x)), ~u_input.a, _wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(0u, func_6(var_1.a, vec2<bool>(var_0.a, var_0.a), u_input.a, Struct_1(true, var_4.b.x, var_0.c)).b)), _wgslsmith_add_u32(var_1.b, var_1.b))).x, _wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5.x), 1000f, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(func_6(!var_0.a, vec2<bool>(select(var_0.a, true, var_1.a), false), vec4<u32>(var_2, _wgslsmith_mult_u32(var_2, 37400u), 1u, 33824u), var_0).b, var_0.b ^ var_2), 1i, var_1.b);
}

