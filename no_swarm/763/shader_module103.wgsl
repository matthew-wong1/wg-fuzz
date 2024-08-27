struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
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

var<private> global0: array<bool, 2> = array<bool, 2>(true, true);

var<private> global1: array<u32, 8>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-655f + -434f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -769f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(989f, _wgslsmith_f_op_f32(307f + -987f)))), _wgslsmith_f_op_f32(min(-1997f, _wgslsmith_f_op_f32(858f * _wgslsmith_f_op_f32(select(1472f, -468f, false)))))));
    let var_1 = Struct_4(u_input.d.zz, var_0.x, Struct_1(4645u, 45465u, vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, -35636i), u_input.d.x, 1i, 0i) >> (u_input.c % vec4<u32>(32u)), u_input.d, global0[_wgslsmith_index_u32(~11909u >> (u_input.b % 32u), 2u)]), false, true);
    global1 = array<u32, 8>();
    let var_2 = Struct_5(Struct_4(u_input.d.yx, _wgslsmith_f_op_f32(select(2077f, 428f, global0[_wgslsmith_index_u32(~(~4294967295u), 2u)])), Struct_1(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)] << (0u % 32u), 49522u), ~var_1.c.a, abs(-var_1.c.c), vec3<i32>(2147483647i, 10948i ^ var_1.c.d.x, select(u_input.d.x, u_input.d.x, false)), all(!vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 2u)], false, var_1.e))), false, true), any(select(select(!vec4<bool>(var_1.e, true, var_1.c.e, true), vec4<bool>(false, var_1.c.e, global0[_wgslsmith_index_u32(1u, 2u)], false), var_1.c.e), !vec4<bool>(true, global0[_wgslsmith_index_u32(5883u, 2u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec4<bool>(true, any(vec4<bool>(var_1.e, false, var_1.d, var_1.e)), global0[_wgslsmith_index_u32(67332u, 2u)], true))));
    global0 = array<bool, 2>();
    return any(vec4<bool>(true, !all(!vec3<bool>(var_2.b, false, false)), select(all(vec2<bool>(var_2.a.d, global0[_wgslsmith_index_u32(1775u, 2u)])), all(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec2<bool>(var_2.b, true), false)), !var_2.a.c.e), false));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = select(!select(!(!vec2<bool>(arg_2.e, arg_2.e)), select(select(vec2<bool>(false, arg_2.e), vec2<bool>(arg_2.e, false), vec2<bool>(arg_1.e, false)), !vec2<bool>(arg_2.e, true), func_3()), vec2<bool>(true, true)), vec2<bool>(global0[_wgslsmith_index_u32(~22596u, 2u)], arg_1.e), arg_2.c.x > -15162i);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_1) -> Struct_4 {
    var var_0 = Struct_2(_wgslsmith_mod_u32(31373u, arg_0.a), u_input.c.xwy, func_2(arg_2.a.a, func_2(abs(vec2<i32>(-1i, 31483i)), arg_0, func_2(-vec2<i32>(-90980i, 62403i), func_2(vec2<i32>(arg_2.a.c.c.x, 34528i), arg_1.a, Struct_1(59023u, 4294967295u, vec4<i32>(2349i, -14555i, arg_1.b, arg_0.d.x), vec3<i32>(arg_1.a.d.x, arg_3.c.x, arg_3.c.x), arg_2.a.c.e)), arg_0)), func_2(vec2<i32>(-1i, arg_3.d.x), Struct_1(arg_2.a.c.b, arg_1.a.b, abs(arg_3.c), arg_1.a.d & vec3<i32>(arg_3.c.x, 2147483647i, -15373i), all(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)], true, true))), Struct_1(4115u, arg_0.b, ~vec4<i32>(18689i, 9103i, arg_3.c.x, arg_3.d.x), ~vec3<i32>(arg_2.a.c.d.x, 0i, -1i), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c))), func_2(countOneBits(u_input.d.xz | (arg_3.c.yw << (u_input.c.zw % vec2<u32>(32u)))), arg_1.a, arg_0));
    global1 = array<u32, 8>();
    var var_1 = Struct_5(Struct_4(~(vec2<i32>(arg_3.c.x, 1422i) >> (_wgslsmith_mod_vec2_u32(var_0.b.yy, vec2<u32>(1u, 68608u)) % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1327f, _wgslsmith_f_op_f32(sign(arg_1.c.x)))), arg_1.c.x), func_2(~_wgslsmith_mult_vec2_i32(vec2<i32>(-40923i, u_input.d.x), vec2<i32>(21859i, -1402i)), var_0.e, arg_3), !(!any(vec4<bool>(false, arg_1.a.e, true, global0[_wgslsmith_index_u32(1u, 2u)]))), true), !any(select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 2u)]), vec2<bool>(arg_2.a.c.e, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 2u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(arg_0.a, arg_2.a.c.a, 31297u)), 2u)])));
    var var_2 = Struct_2(~49661u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 705u) >> (vec3<u32>(1u, 12327u, arg_3.a) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(1228u, 0u, var_1.a.c.a))) % 32u), vec3<u32>(34704u, 78122u, _wgslsmith_dot_vec2_u32(var_0.b.zy, _wgslsmith_mod_vec2_u32(var_0.b.xz, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 44524u), var_0.b.yx)))), var_1.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1937f, -2455f))), Struct_1(_wgslsmith_mod_u32(~0u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.a.b, u_input.c.x), 8u)]) ^ 50473u, ~arg_0.a, vec4<i32>(abs(0i), _wgslsmith_add_i32(~arg_1.b, arg_0.d.x), arg_0.c.x, ~_wgslsmith_sub_i32(u_input.d.x, arg_1.b)), -arg_2.a.c.c.zwy, var_0.c.e));
    var var_3 = -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, var_0.e.c.x, var_1.a.a.x, 1i) << (vec4<u32>(2722u, global1[_wgslsmith_index_u32(arg_1.a.a, 8u)], 14812u, 52791u) % vec4<u32>(32u)), var_1.a.c.c) << (vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(81678u, 21882u), vec2<u32>(arg_3.b, var_1.a.c.a)), reverseBits(arg_2.a.c.b)), 4294967295u << (firstLeadingBit(arg_1.a.a) % 32u), firstLeadingBit(4294967295u), _wgslsmith_mod_u32(arg_3.b, ~var_0.b.x)) % vec4<u32>(32u));
    return var_1.a;
}

fn func_5(arg_0: i32, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: vec2<u32>) -> i32 {
    let var_0 = select(!vec4<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(40853u, 2u)], arg_1.b, false)), arg_1.a.e, true, true), select(select(select(vec4<bool>(false, arg_1.a.d, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a.c.a, 8u)], 8u)], 2u)], true), !vec4<bool>(arg_1.a.d, true, global0[_wgslsmith_index_u32(4294967295u, 2u)], arg_1.b), true), select(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(84415u, 2u)], false), vec4<bool>(true, true, true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)], false, false)), !vec4<bool>(arg_1.b, false, false, true), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_1.a.c.b, 2u)], true), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.c.a, 2u)], arg_1.a.c.e, true, global0[_wgslsmith_index_u32(14591u, 2u)]), global0[_wgslsmith_index_u32(arg_1.a.c.a, 2u)])), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 2u)], true, global0[_wgslsmith_index_u32(1u, 2u)], false), vec4<bool>(global0[_wgslsmith_index_u32(28214u, 2u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], arg_1.b), true)), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(firstLeadingBit(arg_1.a.c.b), 2u)], global0[_wgslsmith_index_u32(~16962u, 2u)]), vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 2u)], true, !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a.c.a, 8u)], 2u)], global0[_wgslsmith_index_u32(22281u, 2u)]), false), vec4<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.c.x, 4294967295u), 2u)], 1i == _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.d.x), vec3<i32>(arg_1.a.c.d.x, 18248i, arg_0)), true || arg_1.b, all(!vec3<bool>(arg_1.b, false, arg_1.b)))), select(vec4<bool>(func_2(arg_1.a.a, func_2(vec2<i32>(u_input.d.x, u_input.d.x), Struct_1(58246u, 58038u, arg_1.a.c.c, u_input.d, true), Struct_1(1u, arg_3.x, vec4<i32>(arg_0, 1i, 1i, 0i), arg_1.a.c.d, arg_1.a.d)), arg_1.a.c).e, any(vec3<bool>(false, false, false)), false, any(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], arg_1.a.e), arg_1.a.d))), !(!vec4<bool>(true, true, false, arg_1.b)), select(vec4<bool>(select(true, true, true), func_2(vec2<i32>(-1i, 39426i), Struct_1(76286u, arg_3.x, arg_1.a.c.c, vec3<i32>(65186i, 26063i, -2147483647i), false), Struct_1(u_input.c.x, u_input.b, vec4<i32>(arg_1.a.c.c.x, 1i, arg_2.x, 0i), vec3<i32>(12864i, -16183i, arg_2.x), true)).e, all(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.x, 8u)], 2u)], true, arg_1.a.d, false)), !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.x, 8u)], 2u)]), !vec4<bool>(arg_1.a.e, global0[_wgslsmith_index_u32(4294967295u, 2u)], false, true), select(!vec4<bool>(false, arg_1.b, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33695u, 8u)], 2u)], true), vec4<bool>(global0[_wgslsmith_index_u32(36471u, 2u)], global0[_wgslsmith_index_u32(60624u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], arg_1.a.e), !arg_1.a.c.e))));
    let var_1 = vec3<u32>(48325u, 0u, ~(arg_1.a.c.b << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16799u, 8u)], 8u)] % 32u)));
    let var_2 = arg_1.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f));
    var var_4 = u_input.d;
    return ((i32(-1i) * -(u_input.d.x & arg_1.a.a.x)) >> (0u % 32u)) ^ arg_0;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    global0 = array<bool, 2>();
    var var_0 = vec2<u32>(~_wgslsmith_dot_vec3_u32(~u_input.c.zwy, ~u_input.c.zzy), ~6239u);
    var var_1 = -1584f;
    let var_2 = abs(func_5(37322i, Struct_5(func_4(func_2(arg_1.a.c.yw, Struct_1(0u, global1[_wgslsmith_index_u32(arg_0.x, 8u)], vec4<i32>(u_input.d.x, -9860i, -2309i, 1i), vec3<i32>(arg_1.a.c.x, 0i, 2147483647i), global0[_wgslsmith_index_u32(1u, 2u)]), Struct_1(arg_0.x, u_input.a, arg_1.a.c, arg_1.a.c.xww, false)), Struct_3(Struct_1(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], arg_1.a.c, arg_1.a.d, global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), 2147483647i, vec2<f32>(arg_1.c.x, -140f)), Struct_5(Struct_4(u_input.d.yz, arg_1.c.x, arg_1.a, true, false), arg_1.a.e), arg_1.a), true & all(vec2<bool>(false, false))), vec2<i32>(abs(u_input.d.x), ~_wgslsmith_mod_i32(u_input.d.x, u_input.d.x)), firstLeadingBit(~arg_0.xx) << (u_input.c.xw % vec2<u32>(32u))));
    var var_3 = max(vec3<u32>(~(~4294967295u), _wgslsmith_mult_u32(0u, ~global1[_wgslsmith_index_u32(arg_1.a.a, 8u)]), ~1u), vec3<u32>(~_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(82573u, arg_0.x, arg_0.x)), _wgslsmith_dot_vec3_u32(u_input.c.yzz, arg_0), ~6160u)) >> (~select(select(arg_0, firstLeadingBit(vec3<u32>(0u, global1[_wgslsmith_index_u32(19629u, 8u)], 4294967295u)), true), firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(arg_1.a.b, 8u)], 66003u, arg_0.x)), select(select(vec3<bool>(false, true, arg_1.a.e), vec3<bool>(global0[_wgslsmith_index_u32(18143u, 2u)], true, true), true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 2u)], true), vec3<bool>(arg_1.a.e, false, global0[_wgslsmith_index_u32(0u, 2u)]), arg_1.a.e), !global0[_wgslsmith_index_u32(u_input.c.x, 2u)])) % vec3<u32>(32u));
    return arg_1.c.x;
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<f32>) -> vec2<f32> {
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_1, -102f), _wgslsmith_f_op_f32(func_1(u_input.c.wxy, Struct_3(Struct_1(arg_0, 33225u, vec4<i32>(2147483647i, 0i, 76739i, u_input.d.x), vec3<i32>(u_input.d.x, -2147483647i, 81291i), true), u_input.d.x, arg_3.xy)))) * vec2<f32>(_wgslsmith_div_f32(arg_1, 325f), arg_1)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1322f)), arg_3.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.wx)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), -2351f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 8u)], 8u)], 8u)] & ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x, firstLeadingBit(u_input.b)), ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(31107u, 8u)], 6345u));
    let var_1 = u_input.d;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) - -386f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_6(reverseBits(~global1[_wgslsmith_index_u32(4294967295u, 8u)]), _wgslsmith_f_op_f32(-1659f + _wgslsmith_f_op_f32(func_1(u_input.c.zwy, Struct_3(Struct_1(26805u, global1[_wgslsmith_index_u32(0u, 8u)], vec4<i32>(u_input.d.x, -1i, 0i, var_1.x), u_input.d, global0[_wgslsmith_index_u32(56871u, 2u)]), 65395i, vec2<f32>(-2090f, 1379f))))), !vec4<bool>(global0[_wgslsmith_index_u32(82427u, 2u)], true, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(31305u, 2u)]), vec4<f32>(206f, 894f, _wgslsmith_f_op_f32(-135f * -1331f), _wgslsmith_f_op_f32(-923f * -934f)))) * vec2<f32>(-1243f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -973f) - _wgslsmith_f_op_f32(-1175f - -1020f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -2172f), all(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3385u, 8u)], 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 2u)], true))))), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(sign(var_2.x)), true)))));
    let var_3 = 3066i;
    let var_4 = select(select(!select(!vec2<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(127760u, 8u)], 2u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec2<bool>(false, true), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22944u, 8u)], 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 8u)], 2u)])), !select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 2u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 33172u), 2u)]), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], 8u)], 2u)])), !select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(26072u, 2u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(14423u, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(23826u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)])), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true)))), vec2<bool>(u_input.a == ~global1[_wgslsmith_index_u32(24716u ^ global1[_wgslsmith_index_u32(14104u, 8u)], 8u)], !global0[_wgslsmith_index_u32(0u, 2u)]), any(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 2u)], true), false), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(48804u, 2u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(28868u, 2u)], global0[_wgslsmith_index_u32(15472u, 2u)])), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(65917u, u_input.a), 2u)], true, global0[_wgslsmith_index_u32(0u, 2u)]), global0[_wgslsmith_index_u32(1u, 2u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, -12411i) << (_wgslsmith_dot_vec2_u32(u_input.c.xw, vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 8u)], 8u)])) % 32u), select(0i, u_input.d.x | -1i, false)), countOneBits(firstTrailingBit(u_input.d.x))));
}

