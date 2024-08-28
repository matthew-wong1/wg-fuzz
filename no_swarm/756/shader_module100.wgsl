struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8>;

var<private> global1: array<vec4<u32>, 14>;

var<private> global2: array<i32, 31>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global0 = array<vec4<bool>, 8>();
    var var_0 = !(true || any(vec3<bool>(true, any(vec3<bool>(true, true, false)), true)));
    let var_1 = Struct_1(vec3<i32>(abs(~(i32(-1i) * -1i)), -(i32(-1i) * -48514i), global2[_wgslsmith_index_u32(4294967295u, 31u)]), -(vec2<i32>(-1i, ~27778i) >> (select(vec2<u32>(1655u, 47581u) ^ vec2<u32>(62385u, u_input.d), vec2<u32>(u_input.d, u_input.b), false) % vec2<u32>(32u))), vec3<bool>(true & all(select(vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(u_input.d, 8u)], vec4<bool>(true, false, false, false))), false, true));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-442f + -219f)), _wgslsmith_f_op_f32(-1f));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1074f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)))), _wgslsmith_f_op_f32(func_3()), true)), -102f);
    let var_1 = abs(vec4<i32>(-17980i, global2[_wgslsmith_index_u32(69129u, 31u)], _wgslsmith_mod_i32(-2147483647i, global2[_wgslsmith_index_u32(u_input.b, 31u)]), u_input.a));
    var var_2 = all(vec2<bool>(false, !any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_3 = Struct_1(-_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(3658i, global2[_wgslsmith_index_u32(1u, 31u)], -67569i)), vec3<i32>(firstTrailingBit(global2[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_mult_i32(2147483647i, var_1.x), global2[_wgslsmith_index_u32(4294967295u, 31u)] | -2147483647i)), firstTrailingBit(var_1.ww), vec3<bool>(select(true, false, true), !all(vec3<bool>(true, false, false)), !all(vec3<bool>(true, true, true))));
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f) + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -287f), -2823f)));
    return var_3;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_2.a, ~arg_2.b | vec2<i32>(select(arg_1.b.x, arg_1.a.x, arg_2.c.x), _wgslsmith_mod_i32(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-6077i, 58939i, -85166i, global2[_wgslsmith_index_u32(52709u, 31u)]), vec4<i32>(0i, 2147483647i, 4670i, global2[_wgslsmith_index_u32(u_input.e, 31u)])))), arg_2.c);
    var var_1 = 130f;
    let var_2 = arg_1;
    var var_3 = arg_2.a;
    var var_4 = ~_wgslsmith_clamp_i32(26237i, firstLeadingBit(-18428i) & _wgslsmith_sub_i32(firstLeadingBit(u_input.a), _wgslsmith_dot_vec2_i32(var_3.yz, vec2<i32>(5442i, var_0.a.x))), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(global2[_wgslsmith_index_u32(u_input.e, 31u)], arg_1.b.x, -15029i, -1i), select(vec4<i32>(u_input.a, var_3.x, global2[_wgslsmith_index_u32(u_input.e, 31u)], u_input.a), vec4<i32>(10319i, var_3.x, -2147483647i, -1i), vec4<bool>(var_2.c.x, false, false, arg_2.c.x)), func_2().c.x), ~reverseBits(vec4<i32>(26114i, var_0.b.x, -36841i, var_0.a.x))));
    return Struct_1(_wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(1u, 31u)], -25627i, 1i), min(vec3<i32>(var_2.b.x, -40825i, -19759i), var_2.a), arg_1.a)), -(~arg_1.a) >> (abs(vec3<u32>(u_input.e, 4294967295u, 87838u) ^ vec3<u32>(u_input.d, 4294967295u, u_input.d)) % vec3<u32>(32u))), ~min(var_3.zx, arg_1.a.zz), vec3<bool>(any(global0[_wgslsmith_index_u32(1u, 8u)]), countOneBits(~u_input.d) == min(55338u >> (u_input.d % 32u), u_input.b), any(vec2<bool>(true, true))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> f32 {
    let var_0 = Struct_1(firstTrailingBit(func_2().a), -firstTrailingBit(vec2<i32>(-21050i, ~(-8976i))), !(!vec3<bool>(select(true, true, arg_0.c.x), all(vec2<bool>(true, true)), arg_0.c.x)));
    global1 = array<vec4<u32>, 14>();
    let var_1 = _wgslsmith_f_op_f32(sign(arg_2.x));
    var var_2 = func_2().c.x;
    let var_3 = _wgslsmith_add_vec2_u32(reverseBits(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(4932u, u_input.d), vec2<u32>(u_input.b, u_input.b)))), ~reverseBits(~vec2<u32>(u_input.e, u_input.b)));
    return arg_2.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_f32(-683f, _wgslsmith_f_op_f32(func_5(func_4(u_input.a ^ _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(122518u, 31u)], arg_0.a.x), func_2(), var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1377f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<f32>(1244f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-801f * -864f), _wgslsmith_f_op_f32(f32(-1f) * -409f)))))));
    global1 = array<vec4<u32>, 14>();
    global1 = array<vec4<u32>, 14>();
    var var_2 = any(select(select(select(!vec4<bool>(false, arg_0.c.x, var_0.c.x, arg_0.c.x), global0[_wgslsmith_index_u32(63977u, 8u)], false), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, 57249u), 8u)], true & var_0.c.x), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, arg_0.c.x, var_0.c.x, true), vec4<bool>(arg_0.c.x, var_0.c.x, var_0.c.x, arg_0.c.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, u_input.d), vec2<u32>(20357u, 44580u)), ~vec2<u32>(u_input.e, 3994u), select(var_0.c.xy, arg_0.c.zy, false)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 21781u), vec2<u32>(7563u, u_input.d))), 8u)]));
    return var_1;
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = vec3<bool>(arg_1.c.x, func_2().c.x, true);
    let var_1 = u_input.e;
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.c, 21769u)))), var_1), var_1);
    var var_3 = arg_1;
    var var_4 = arg_1.c.x;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 34979i;
    var_0 = _wgslsmith_mult_i32(func_6(_wgslsmith_f_op_f32(func_1(Struct_1(abs(vec3<i32>(global2[_wgslsmith_index_u32(u_input.e, 31u)], -1i, -19547i)), vec2<i32>(u_input.a, 2147483647i), vec3<bool>(true, false, false)), ~vec3<i32>(-37527i, -1i, 2147483647i) << (~vec3<u32>(u_input.b, u_input.b, u_input.c) % vec3<u32>(32u)))), Struct_1(vec3<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(58492u, 31u)], u_input.a), firstTrailingBit(global2[_wgslsmith_index_u32(1049u, 31u)]), firstLeadingBit(global2[_wgslsmith_index_u32(0u, 31u)])), -_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.b, 31u)]), vec2<i32>(global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)]), vec2<i32>(global2[_wgslsmith_index_u32(54135u, 31u)], 0i)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(362f, 1000f), vec2<f32>(2298f, -1760f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1121f, 900f) - vec2<f32>(-477f, -1004f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1916f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1626f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1547f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2792f)) + 549f), -389f)), ~(-10806i) & (-global2[_wgslsmith_index_u32(u_input.e, 31u)] ^ (10247i << (u_input.e % 32u))));
    global0 = array<vec4<bool>, 8>();
    var var_1 = select(vec2<bool>(select(true, all(vec3<bool>(false, true, true)) == true, select(true, true, global2[_wgslsmith_index_u32(4294967295u, 31u)] == global2[_wgslsmith_index_u32(40508u, 31u)])), true && select(any(global0[_wgslsmith_index_u32(19421u, 8u)]), true, true)), select(!vec2<bool>(all(vec3<bool>(false, true, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)), !func_4(_wgslsmith_mult_i32(~global2[_wgslsmith_index_u32(26455u, 31u)], u_input.a), Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(34148u, 31u)], -1i, -2147483647i), select(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(81216u, 31u)]), vec2<i32>(-2147483647i, -15772i), false), func_4(u_input.a, Struct_1(vec3<i32>(-4708i, u_input.a, global2[_wgslsmith_index_u32(u_input.c, 31u)]), vec2<i32>(u_input.a, u_input.a), vec3<bool>(false, true, true)), Struct_1(vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(u_input.b, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<i32>(global2[_wgslsmith_index_u32(u_input.d, 31u)], u_input.a), vec3<bool>(true, false, false))).c), func_4(0i, func_4(u_input.a, Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 31u)], u_input.a, u_input.a), vec2<i32>(62798i, u_input.a), vec3<bool>(false, false, false)), Struct_1(vec3<i32>(60955i, global2[_wgslsmith_index_u32(u_input.b, 31u)], u_input.a), vec2<i32>(25107i, u_input.a), vec3<bool>(false, true, false))), func_2())).c.x);
    global1 = array<vec4<u32>, 14>();
    var_0 = 1i;
    global0 = array<vec4<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-239f, -741f), vec2<f32>(666f, 350f)))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))), 13215i, -global2[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(~43796u, abs(u_input.d)), u_input.b), 31u)], _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(19053u, 75724u, u_input.e), vec3<u32>(19931u, 15407u, 0u)), 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(u_input.d), u_input.b), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 87600u), vec2<u32>(u_input.e, u_input.c), vec2<u32>(u_input.c, u_input.d))), ~abs(vec2<u32>(u_input.e, u_input.d))));
}

