struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<i32>, 2>;

var<private> global3: array<u32, 24> = array<u32, 24>(19673u, 18755u, 60414u, 4294967295u, 43953u, 1u, 13762u, 1u, 4294967295u, 0u, 20488u, 14941u, 105228u, 37347u, 72208u, 11812u, 23144u, 38491u, 78621u, 0u, 58537u, 73063u, 41979u, 6997u);

var<private> global4: vec2<i32> = vec2<i32>(7398i, 28010i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = false;
    global3 = array<u32, 24>();
    global2 = array<vec2<i32>, 2>();
    var var_1 = -vec3<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1781i, 0i, u_input.d, 1i)), min(vec4<i32>(23346i, -10782i, global1.a, 5974i), -vec4<i32>(u_input.c, u_input.c, 70374i, 0i))), global4.x, -2147483647i);
    var var_2 = ~10553i;
    return ~global3[_wgslsmith_index_u32(0u, 24u)];
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    let var_0 = true;
    var var_1 = 1u;
    global0 = array<Struct_2, 17>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b.x, max(arg_2.c.x, 972u)), u_input.b.x), select(vec2<u32>(arg_1.b.x, func_3()), ~global1.c, !var_0)), _wgslsmith_div_vec2_u32(min(reverseBits(_wgslsmith_mult_vec2_u32(u_input.b, arg_1.b.zx)), vec2<u32>(arg_1.b.x, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(78432u, 24u)], 32060u))), arg_1.b.xx)), 17u)];
    let var_3 = Struct_3(arg_1.a, vec3<u32>(_wgslsmith_sub_u32(4294967295u, 61604u), 0u, ~(~u_input.a)));
    return arg_2.d;
}

fn func_1() -> Struct_2 {
    global4 = select(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(0u, 20798u, true), ~global1.c.x), 2u)], global1.b.xy, true);
    var var_0 = Struct_3(select(select(vec4<bool>(any(vec2<bool>(global1.e.c, global1.e.c)), u_input.a <= u_input.b.x, global1.e.c, true), select(vec4<bool>(false, false, global1.e.c, global1.d), select(vec4<bool>(global1.e.c, false, global1.e.c, true), vec4<bool>(global1.e.c, false, false, global1.e.c), vec4<bool>(false, global1.d, global1.d, global1.e.c)), vec4<bool>(global1.d, global1.e.c, global1.d, global1.e.c)), !select(vec4<bool>(false, global1.e.c, global1.e.c, true), vec4<bool>(true, global1.d, global1.e.c, true), vec4<bool>(true, global1.d, global1.d, true))), !select(!vec4<bool>(global1.e.c, global1.d, global1.e.c, true), vec4<bool>(false, true, global1.d, true), !global1.e.c), true == select(global1.e.c, func_2(vec2<f32>(-271f, -126f), Struct_3(vec4<bool>(global1.d, false, global1.e.c, global1.e.c), vec3<u32>(4294967295u, 64162u, 0u)), Struct_2(global1.b.x, vec3<i32>(0i, 0i, global4.x), vec2<u32>(32657u, u_input.a), global1.e.c, global1.e)), true)), ~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 24u)], 24u)], ~1u, ~0u) | ~(vec3<u32>(global3[_wgslsmith_index_u32(global1.c.x, 24u)], global3[_wgslsmith_index_u32(global1.c.x, 24u)], 61622u) | vec3<u32>(44616u, 0u, global1.c.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1000f, 121f)))))) - _wgslsmith_f_op_f32(select(-1141f, 1536f, var_0.a.x))) + 1f);
    var_0 = Struct_3(vec4<bool>(true, global1.d, true, true), var_0.b);
    let var_2 = firstTrailingBit(~vec4<u32>(~global3[_wgslsmith_index_u32(u_input.b.x, 24u)], countOneBits(~u_input.b.x), _wgslsmith_add_u32(var_0.b.x, 0u) >> ((50145u >> (global1.c.x % 32u)) % 32u), max(~58151u, _wgslsmith_div_u32(global1.c.x, 61375u))));
    return Struct_2(1i, ~(global1.b ^ min(global1.b, global1.b)), var_2.xx, true, Struct_1(u_input.c, ~abs(min(global4.x, u_input.c)), false));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(abs(_wgslsmith_div_i32(arg_3.x, 2147483647i)), 16815i, -1i, -arg_2.x & arg_2.x), vec4<i32>(_wgslsmith_div_i32(arg_3.x, func_1().a), -(~(~u_input.c)), select(-arg_1.a, -2147483647i, arg_0.d), -1476i | ~arg_2.x));
    let var_1 = arg_1;
    global1 = arg_0;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1446f))))))), -1621f);
    let var_3 = _wgslsmith_mod_i32(-(~_wgslsmith_add_i32(47848i, _wgslsmith_mod_i32(arg_3.x, 1i))), ~var_1.a >> (reverseBits(_wgslsmith_mult_u32(u_input.a | arg_1.c.x, 0u)) % 32u));
    return Struct_3(vec4<bool>(any(!vec2<bool>(var_1.e.c, var_1.d)), !(min(global1.c.x, arg_0.c.x) == _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 124822u), vec2<u32>(1315u, 52534u))), !(0i <= arg_3.x), false), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.c.x, ~(~3392u), 1u), abs(max(min(vec3<u32>(49398u, 0u, 19573u), vec3<u32>(4294967295u, global1.c.x, var_1.c.x)), vec3<u32>(58339u, global3[_wgslsmith_index_u32(u_input.b.x, 24u)], 78333u) >> (vec3<u32>(u_input.b.x, 4294967295u, arg_1.c.x) % vec3<u32>(32u))))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> Struct_2 {
    var var_0 = vec4<i32>(global4.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(max(arg_1.b.x, global3[_wgslsmith_index_u32(124263u, 24u)]), 1u, global1.c.x), ~select(vec3<u32>(global1.c.x, u_input.b.x, global1.c.x), vec3<u32>(arg_1.b.x, 1u, 27979u), vec3<bool>(arg_3, arg_0.x, arg_1.a.x))) % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(4662i), global4.x, u_input.d, _wgslsmith_div_i32(u_input.d, -2147483647i)), -(vec4<i32>(global4.x, -2147483647i, -39438i, global1.e.a) >> (vec4<u32>(4294967295u, 39757u, global1.c.x, 31723u) % vec4<u32>(32u)))), min(~(-2147483647i), firstLeadingBit(-global1.b.x)), _wgslsmith_div_i32(_wgslsmith_mod_i32(global1.b.x, 11709i), global4.x));
    var_0 = -_wgslsmith_clamp_vec4_i32(abs(-reverseBits(vec4<i32>(u_input.d, 1i, 2147483647i, -2147483647i))), vec4<i32>(-2147483647i, 0i, 3290i, _wgslsmith_div_i32(-17761i, ~(-13555i))), firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(8572i, u_input.d), select(-4481i, 9701i, false), global1.a, 1i)));
    global2 = array<vec2<i32>, 2>();
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2 - arg_2), 1102f)) + _wgslsmith_f_op_f32(min(-1541f, _wgslsmith_f_op_f32(min(arg_2, arg_2))))))), arg_2, !(-30500i > global1.b.x)));
    global1 = Struct_2(-_wgslsmith_mult_i32(global4.x, 37667i), vec3<i32>(-2147483647i, -(-global4.x & 28341i), -_wgslsmith_mod_i32(i32(-1i) * -1i, 1i)), _wgslsmith_add_vec2_u32(u_input.b, reverseBits(~u_input.b)), arg_0.x | (arg_2 < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(2657f, arg_2)), -772f))), Struct_1(-max(reverseBits(-1i), ~(-25280i)), 0i, !(!global1.e.c)));
    return global0[_wgslsmith_index_u32(func_4(Struct_2(-2147483647i, select(vec3<i32>(global4.x & global1.e.b, _wgslsmith_mod_i32(-1i, -1i), -1082i), ~global1.b >> (arg_1.b % vec3<u32>(32u)), all(!arg_1.a.zz)), ~vec2<u32>(~34124u, func_3()), any(!arg_0.zzy), Struct_1(var_0.x, _wgslsmith_mod_i32(func_1().e.a, max(1i, 2147483647i)), false)), Struct_2(u_input.c, vec3<i32>(1i, var_0.x, _wgslsmith_mult_i32(select(u_input.d, 19574i, false), 0i)), arg_1.b.yy, any(arg_0.yxx), Struct_1(-2147483647i, global4.x << (0u % 32u), true)), ~(~reverseBits(vec4<i32>(1i, var_0.x, 28557i, -23319i))), var_0.www).b.x, 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.e;
    var var_1 = global2[_wgslsmith_index_u32(43188u, 2u)];
    global1 = func_5(vec4<bool>(all(vec2<bool>(true, true)), !var_0.c, global1.d, var_0.c), func_4(func_1(), func_1(), select(vec4<i32>(var_0.b, 2147483647i, -1i, 38956i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(global4.x, 1i, -2147483647i, var_1.x), vec4<i32>(-37556i, u_input.d, 3105i, var_1.x)), vec4<i32>(-1i) * -vec4<i32>(29629i, 1i, -6290i, var_0.a), vec4<bool>(true, 14195u > u_input.b.x, false, false)), global1.b), -1484f, !(!(global4.x >= 10544i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(19633i, (~1i & _wgslsmith_div_i32(global1.a, var_1.x)) << (~(~1u) % 32u), i32(-1i) * -_wgslsmith_sub_i32(global1.a, -2384i)), global1.c.x);
}

