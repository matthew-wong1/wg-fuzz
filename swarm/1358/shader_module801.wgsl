struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<i32, 7>;

var<private> global1: array<f32, 9>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(11229i, 133i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(12735i, 4518i), vec2<i32>(2147483647i, 4705i), vec2<i32>(i32(-2147483648), -69345i), vec2<i32>(2147483647i, 1i), vec2<i32>(35111i, -101951i), vec2<i32>(-64285i, 37761i), vec2<i32>(6821i, -8740i), vec2<i32>(-9162i, 1i), vec2<i32>(2147483647i, 13593i), vec2<i32>(2147483647i, 1i), vec2<i32>(-1203i, i32(-2147483648)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_clamp_u32(firstLeadingBit(~35452u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_0.b, 1u), arg_1.a.e, select(arg_0, arg_0, select(arg_0, vec2<bool>(arg_0.x, false), arg_0.x))), vec2<u32>(arg_2.e.x, 0u) & var_0.a.c.yw), arg_2.c.x);
    let var_2 = _wgslsmith_f_op_f32(arg_1.a.d - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -966f) + -323f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.d, arg_1.a.d)) + _wgslsmith_f_op_f32(-var_0.a.d)), arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.a.d)), _wgslsmith_f_op_f32(-var_0.a.d)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.d * 1680f) - arg_2.d)), !(select(arg_0.x, false, arg_0.x) && !arg_0.x))));
    global0 = array<i32, 7>();
    global2 = ~arg_2.b.x;
    return arg_1.a.c.x;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    global0 = array<i32, 7>();
    var var_0 = arg_1.a;
    global2 = arg_2.x;
    global1 = array<f32, 9>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(func_3(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_2(arg_1.a, var_0.a, var_0.a), arg_1.a) ^ 54886u, 9u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(113f * _wgslsmith_div_f32(1770f, 1465f)))), _wgslsmith_f_op_f32(1f - 150f)));
    return Struct_2(arg_1.a, 1u, 27475u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1054f, arg_2.a.d, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d - arg_0.d), _wgslsmith_f_op_f32(-arg_0.d)), func_2(~arg_2.b, func_2(arg_0.a, Struct_2(Struct_1(4294967295u, vec3<i32>(-2147483647i, -9638i, u_input.a), arg_2.a.c, 1106f, arg_2.a.c.wy), 42810u, arg_0.e.x), arg_2.a.b.zz), vec2<i32>(global0[_wgslsmith_index_u32(56278u, 7u)], arg_2.a.b.x)).a.d)), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(12846u, 9u)]))));
    global1 = array<f32, 9>();
    global2 = abs(-1i);
    var var_1 = Struct_3(~arg_2.b <= ~arg_0.c.x);
    let var_2 = !(-1392f > _wgslsmith_f_op_f32(arg_0.d + global1[_wgslsmith_index_u32(21367u, 9u)]));
    return Struct_3(any(!select(vec2<bool>(var_1.a, true), vec2<bool>(true, var_2), vec2<bool>(var_1.a, false))) && var_1.a);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    var var_0 = 282f;
    global1 = array<f32, 9>();
    var var_1 = Struct_1(~(~arg_1.c), arg_1.a.b, vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_1.a.c.xyw, ~vec3<u32>(8316u, arg_1.a.c.x, arg_1.a.a)), ~arg_1.c << (abs(0u) % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.a.a, 14714u), arg_1.a.e), arg_1.a.c.xy), 2865u, arg_1.a.e.x), -149f, select(firstLeadingBit(arg_1.a.e), vec2<u32>(arg_1.c, firstLeadingBit(31302u)), select(!vec2<bool>(true, arg_2.a), vec2<bool>(true, true), all(!vec2<bool>(false, arg_2.a)))));
    var var_2 = func_4(Struct_1(89037u, _wgslsmith_mod_vec3_i32(vec3<i32>(-50135i >> (var_1.e.x % 32u), -global0[_wgslsmith_index_u32(30114u, 7u)], _wgslsmith_mod_i32(-36428i, arg_0.x)), vec3<i32>(-1i) * -arg_0), var_1.c, _wgslsmith_f_op_f32(floor(var_1.d)), abs(~(~vec2<u32>(0u, 0u)))), firstTrailingBit(abs(vec2<u32>(reverseBits(4049u), arg_1.a.e.x))), Struct_2(func_2(~var_1.c.x, arg_1, vec2<i32>(_wgslsmith_sub_i32(1i, var_1.b.x), -17693i)).a, ~0u, var_1.e.x), true);
    var var_3 = !arg_2.a & (_wgslsmith_f_op_f32(abs(arg_1.a.d)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.d) * _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~arg_1.a.c.x, 9u)]))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, firstTrailingBit(abs(arg_1.c) >> (firstTrailingBit(arg_1.b) % 32u)), abs(firstLeadingBit(~58038u))), var_1.c.xwy);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(func_5(-(vec3<i32>(-59222i, u_input.a, 245i) << (vec3<u32>(4294967295u, 3535u, 1u) % vec3<u32>(32u))), Struct_2(Struct_1(24248u, vec3<i32>(0i, u_input.a, global0[_wgslsmith_index_u32(41081u, 7u)]), vec4<u32>(4294967295u, 41383u, 1u, 1u), -280f, vec2<u32>(48913u, 4294967295u)), abs(1u), reverseBits(94774u)), func_4(Struct_1(50380u, vec3<i32>(9448i, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(32019u, 7u)]), vec4<u32>(4294967295u, 19286u, 0u, 0u), -1696f, vec2<u32>(1u, 4960u)), _wgslsmith_div_vec2_u32(vec2<u32>(46002u, 27314u), vec2<u32>(4294967295u, 4294967295u)), func_2(0u, Struct_2(Struct_1(1u, vec3<i32>(global0[_wgslsmith_index_u32(8953u, 7u)], -1i, u_input.a), vec4<u32>(3462u, 0u, 4294967295u, 49837u), global1[_wgslsmith_index_u32(50435u, 9u)], vec2<u32>(54474u, 29230u)), 1u, 4294967295u), vec2<i32>(global0[_wgslsmith_index_u32(42051u, 7u)], -23136i)), global1[_wgslsmith_index_u32(47159u, 9u)] < global1[_wgslsmith_index_u32(56115u, 9u)])), vec3<i32>(~(-35590i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(-2147483647i, -6218i, global0[_wgslsmith_index_u32(44920u, 7u)])), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -12503i, -11323i), vec3<i32>(global0[_wgslsmith_index_u32(33325u, 7u)], 1i, -20356i))), -u_input.a), abs(vec4<u32>(countOneBits(70228u), 4294967295u, 1u, 1u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 9u)] * global1[_wgslsmith_index_u32(1u, 9u)]), -368f)), vec2<u32>(1u, 1u) >> (abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u))), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(111957u, 47491u, 1u)), vec3<u32>(1u, 1u, 1u)), 0u, abs(44877u)), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(min(37773u, 1u), min(0u, 0u), 26684u), _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 52703u), vec4<u32>(72701u, 4294967295u, 12515u, 4294967295u)), 9465u)));
    global1 = array<f32, 9>();
    global3 = array<vec2<i32>, 13>();
    var_0 = func_2(var_0.a.a, Struct_2(var_0.a, firstLeadingBit(var_0.a.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(7150u), 1u, 0u ^ var_0.b), ~(~vec3<u32>(var_0.c, var_0.a.e.x, var_0.b)))), vec2<i32>(var_0.a.b.x, ~(~_wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(var_0.a.a, 13u)]))));
    var var_1 = ~select(~(~(var_0.c >> (var_0.b % 32u))), 71750u & var_0.c, !func_4(func_2(0u, Struct_2(var_0.a, 0u, 0u), var_0.a.b.xy).a, firstTrailingBit(var_0.a.e), Struct_2(Struct_1(18793u, var_0.a.b, vec4<u32>(var_0.b, var_0.c, 0u, var_0.c), global1[_wgslsmith_index_u32(4294967295u, 9u)], var_0.a.e), var_0.c, 4294967295u), false).a);
    return var_0.a;
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = 11435i;
    let var_1 = all(!vec2<bool>((arg_1.d < -802f) != true, false));
    var var_2 = func_2(arg_0, Struct_2(Struct_1(~(arg_0 >> (0u % 32u)), select(arg_1.b, arg_1.b, !vec3<bool>(var_1, var_1, true)), vec4<u32>(arg_1.a, arg_1.e.x, 0u, arg_1.e.x) << ((vec4<u32>(85887u, arg_0, arg_1.c.x, arg_0) | vec4<u32>(29586u, arg_1.a, arg_1.a, 0u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-187f * arg_1.d))), min(arg_1.e, arg_1.c.zz)), func_2(~_wgslsmith_add_u32(1u, arg_0), func_2(_wgslsmith_add_u32(arg_0, 18521u), func_2(arg_0, Struct_2(arg_1, 0u, arg_1.c.x), vec2<i32>(-40160i, -2147483647i)), abs(global3[_wgslsmith_index_u32(arg_1.c.x, 13u)])), ~(vec2<i32>(-1i, 13717i) | vec2<i32>(arg_1.b.x, 0i))).b, ~(~firstLeadingBit(71556u))), arg_1.b.zx).a;
    let var_3 = func_4(Struct_1(func_3(select(vec2<bool>(var_1, false), vec2<bool>(var_1, true), vec2<bool>(false, var_1)), Struct_2(Struct_1(arg_1.e.x, var_2.b, var_2.c, var_2.d, var_2.c.wy), 20541u, 90244u), func_2(arg_0, Struct_2(arg_1, arg_1.c.x, 0u), arg_1.b.xz).a) << (arg_0 % 32u), var_2.b ^ ~arg_1.b, vec4<u32>(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.e.x, 4294967295u, 1u), arg_1.c.zzz), var_2.e.x, ~8155u), _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_sub_vec2_u32(vec2<u32>(90573u, 0u) | ~vec2<u32>(arg_0, var_2.e.x), var_2.e)), arg_1.e ^ vec2<u32>(1u, 1u), Struct_2(arg_1, _wgslsmith_mult_u32(arg_1.c.x, 9317u), ~(~0u)), all(select(vec2<bool>(var_1, false), select(vec2<bool>(true, true), !vec2<bool>(var_1, var_1), true), all(select(vec4<bool>(var_1, true, var_1, false), vec4<bool>(true, false, var_1, var_1), var_1)))));
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~func_2(77305u, func_2(var_2.c.x, Struct_2(Struct_1(var_2.e.x, vec3<i32>(-1i, var_0, global0[_wgslsmith_index_u32(var_2.c.x, 7u)]), vec4<u32>(arg_1.a, 0u, 4294967295u, 4294967295u), global1[_wgslsmith_index_u32(1u, 9u)], vec2<u32>(arg_1.e.x, arg_0)), var_2.c.x, 1u), vec2<i32>(0i, 0i)), vec2<i32>(var_0, var_0)).a.c), reverseBits(arg_1.c)), 7u)];
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(4294967295u, (func_6(abs(0u), func_1()) >> (1u % 32u)) | (func_1().c.x >> (countOneBits(1u) % 32u)));
    var var_1 = -1406f;
    global2 = -max(-54199i, func_1().b.x | reverseBits(-global0[_wgslsmith_index_u32(var_0, 7u)]));
    global1 = array<f32, 9>();
    global3 = array<vec2<i32>, 13>();
    global1 = array<f32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(var_0, 0u, 16825u, 66677u))), firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(32011u, var_0, var_0, var_0), vec4<u32>(24654u, var_0, 48954u, var_0) & vec4<u32>(var_0, var_0, 0u, 31260u), ~vec4<u32>(0u, var_0, 33121u, var_0)))));
}

