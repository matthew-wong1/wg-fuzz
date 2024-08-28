struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-809f, 754f, -1818f), vec3<f32>(-244f, -1000f, 583f), vec3<f32>(-3015f, 141f, 2111f), vec3<f32>(-125f, -1000f, 309f), vec3<f32>(796f, 1185f, -1682f), vec3<f32>(-164f, 542f, 259f), vec3<f32>(1308f, -456f, 803f), vec3<f32>(432f, -769f, 479f), vec3<f32>(708f, -442f, -1321f), vec3<f32>(-499f, -299f, -115f), vec3<f32>(-429f, 592f, 463f), vec3<f32>(1241f, -540f, 942f), vec3<f32>(807f, -576f, 1000f));

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(15427i, 2147483647i, 14884i, -28406i), vec4<i32>(0i, -23511i, i32(-2147483648), 18220i), vec4<i32>(-66771i, 1i, 10452i, 27385i), vec4<i32>(2147483647i, 0i, -13267i, 0i), vec4<i32>(-1i, -13535i, 0i, -17726i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, 2147483647i), vec4<i32>(1i, -14767i, -47260i, -1i), vec4<i32>(34859i, 2147483647i, -40424i, 3859i), vec4<i32>(2147483647i, -36410i, -43040i, -10635i), vec4<i32>(27873i, 1i, -1i, 15830i), vec4<i32>(-1i, 0i, -31175i, 1i), vec4<i32>(0i, -1i, -1i, 76748i), vec4<i32>(26693i, 0i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), 1i, 0i), vec4<i32>(-43670i, 56i, 25585i, -20167i), vec4<i32>(-68344i, 28162i, -21666i, 1i), vec4<i32>(16800i, -1i, i32(-2147483648), -23948i), vec4<i32>(10785i, -34247i, -46956i, 34714i), vec4<i32>(-46748i, i32(-2147483648), 5599i, 8407i), vec4<i32>(-73i, -45434i, -36784i, 2147483647i));

var<private> global2: array<u32, 29> = array<u32, 29>(4294967295u, 4294967295u, 4294967295u, 24044u, 6176u, 1u, 70647u, 0u, 744u, 39851u, 19037u, 1u, 4294967295u, 39966u, 1986u, 0u, 1u, 0u, 38533u, 5683u, 4294967295u, 4294967295u, 60759u, 7449u, 4294967295u, 0u, 1u, 4294967295u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 29u)], arg_2.a, u_input.a.x, arg_2.d.x) << (~vec4<u32>(0u, 0u, global2[_wgslsmith_index_u32(u_input.b, 29u)], 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, 2393u, 39443u), u_input.c)) << (u_input.c % vec4<u32>(32u));
    global0 = array<vec3<f32>, 13>();
    global0 = array<vec3<f32>, 13>();
    var var_1 = Struct_2(-1i, Struct_1(var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b)), _wgslsmith_clamp_u32(var_0.x ^ ~4294967295u, var_0.x, var_0.x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 26499u, 0u), ~var_0.ywy)), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(true, false), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64938u | u_input.c.x, 29u)], 13u)], _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(reverseBits(var_0.x), 13u)]))))));
    var var_2 = var_1.c.x;
    return arg_0;
}

fn func_2(arg_0: vec4<u32>) -> vec2<i32> {
    global0 = array<vec3<f32>, 13>();
    var var_0 = min(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, i32(-1i) * -86236i, 1i), vec3<i32>(1i, u_input.d, ~u_input.d)), -func_3(_wgslsmith_div_vec3_i32(vec3<i32>(-71283i, 2147483647i, -22689i), vec3<i32>(u_input.d, 49710i, -1i)), -1000f, Struct_1(45813u, vec2<f32>(1782f, 250f), 58851u, arg_0.yxx))), max((-vec3<i32>(u_input.d, u_input.d, -63457i) >> (~vec3<u32>(1u, 0u, arg_0.x) % vec3<u32>(32u))) ^ min(countOneBits(vec3<i32>(1i, -31673i, u_input.d)), vec3<i32>(u_input.d, 0i, u_input.d) & vec3<i32>(-11347i, u_input.d, 2147483647i)), -vec3<i32>(max(2147483647i, u_input.d), 1i, -u_input.d)));
    let var_1 = Struct_2(_wgslsmith_div_i32(func_3(vec3<i32>(var_0.x, abs(u_input.d), u_input.d << (36834u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1165f))), Struct_1(_wgslsmith_div_u32(56861u, 28671u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(606f, 410f)), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40425u, 29u)], 29u)], u_input.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(114855u, 1u, 93214u), vec3<u32>(u_input.e, 1u, 1u)))).x, max(~(~u_input.d), 86376i)), Struct_1(_wgslsmith_mult_u32(~49768u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_0.x, u_input.e), u_input.c.yxw), 25574u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-103f, 216f))), 1016f), _wgslsmith_mod_u32(u_input.a.x, ~107663u), arg_0.ywy), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, false), true), !(1u > global2[_wgslsmith_index_u32(u_input.a.x, 29u)])), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec2<bool>(false, true))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -415f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(select(321f, -122f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1052f, 1896f)))))));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(var_1.b.d.zx, var_1.b.d.yx), var_1.b.b, ~arg_0.x, vec3<u32>(u_input.c.x, 1883u, ~(~global2[_wgslsmith_index_u32(arg_0.x, 29u)])));
    global1 = array<vec4<i32>, 20>();
    return select(-firstTrailingBit(_wgslsmith_mod_vec2_i32(firstTrailingBit(var_0.xz), reverseBits(var_0.yz))), vec2<i32>(2147483647i, var_0.x), var_1.c);
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = 72629u;
    var var_1 = min(u_input.d, u_input.d);
    var var_2 = arg_0;
    let var_3 = _wgslsmith_add_vec2_i32(max(vec2<i32>(26374i, 275i), -select(vec2<i32>(u_input.d, -23912i), vec2<i32>(36988i, u_input.d), vec2<bool>(false, arg_1)) >> (u_input.c.xx % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(u_input.d, u_input.d) & vec2<i32>(u_input.d, 13721i)), -func_2(u_input.c)) & vec2<i32>(u_input.d, select(firstLeadingBit(u_input.d), -1i, arg_1 || arg_1)));
    let var_4 = firstTrailingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.c.xxw, u_input.c.xzx, u_input.c.wwz), vec3<u32>(~1u, ~(~10616u), global2[_wgslsmith_index_u32(79575u, 29u)])));
    return _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(718f - 863f), arg_0)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = arg_3.b;
    var var_1 = arg_3;
    global1 = array<vec4<i32>, 20>();
    global0 = array<vec3<f32>, 13>();
    var var_2 = true;
    return select(select(vec3<bool>(any(vec2<bool>(arg_2.x, false)), true, false), !select(select(vec3<bool>(arg_3.c.x, var_1.c.x, arg_2.x), vec3<bool>(true, arg_2.x, false), vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), select(vec3<bool>(false, arg_3.c.x, false), vec3<bool>(false, arg_3.c.x, var_1.c.x), arg_3.c.x), true), select(select(select(vec3<bool>(false, arg_2.x, false), vec3<bool>(true, true, arg_2.x), arg_2.x), vec3<bool>(false, arg_2.x, false), select(vec3<bool>(false, var_1.c.x, var_1.c.x), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(var_1.c.x, arg_3.c.x, true), arg_3.c.x), !vec3<bool>(true, false, arg_3.c.x), !vec3<bool>(true, arg_3.c.x, arg_3.c.x)), true)), !vec3<bool>(arg_3.c.x, false, !any(vec4<bool>(false, var_1.c.x, var_1.c.x, false))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_4(127f, _wgslsmith_f_op_f32(func_1(-253f, all(vec3<bool>(true, false, false)) && all(vec2<bool>(true, false)))), vec2<bool>(!all(vec4<bool>(true, false, true, false)), !(52837u <= u_input.c.x)), Struct_2(_wgslsmith_div_i32(i32(-1i) * -29223i, abs(u_input.d)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 3472u, global2[_wgslsmith_index_u32(1u, 29u)]), vec3<u32>(u_input.c.x, 4294967295u, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1176f, 119f)), global2[_wgslsmith_index_u32(44953u, 29u)] << (u_input.c.x % 32u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 29u)], 1u, u_input.a.x)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec3<f32>(_wgslsmith_f_op_f32(sign(376f)), _wgslsmith_f_op_f32(295f - 545f), _wgslsmith_f_op_f32(func_1(-829f, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2291f + _wgslsmith_f_op_f32(f32(-1f) * -869f)), _wgslsmith_f_op_f32(-1309f - _wgslsmith_f_op_f32(sign(-1256f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(983f - 974f)), 1412f))));
    let var_2 = -_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(max(u_input.d, -1i), select(u_input.d, u_input.d, true)), vec2<i32>(reverseBits(u_input.d), u_input.d)), vec2<i32>(u_input.d, u_input.d));
    var var_3 = var_1.zy;
    global1 = array<vec4<i32>, 20>();
    let var_4 = Struct_1(0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.xz)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yz - var_1.yw) * _wgslsmith_f_op_vec2_f32(floor(var_1.xz))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(var_1.zz, var_1.yy)))), select(select(var_0.yx, var_0.xx, vec2<bool>(true, var_0.x)), !vec2<bool>(var_0.x, false), -1276f != var_1.x)))), 13084u, vec3<u32>(4294967295u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~countOneBits(4274u), 29u)], 29u)], 11019u));
    var var_5 = var_4;
    var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_5.b.x)))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-679f, var_1.x))), var_0.x)), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_3.x, _wgslsmith_div_f32(var_5.b.x, 667f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1118f, -749f, var_3.x) + global0[_wgslsmith_index_u32(0u, 13u)]))), vec3<f32>(var_5.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.x))), 1406f))), -1685f, _wgslsmith_mult_u32(63067u, _wgslsmith_mult_u32(~(1u ^ u_input.a.x), firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, var_4.c)))), vec4<u32>(max(~17301u, 0u), 1u, max(~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(var_5.a, 29u)], 0u), ~4294967295u), _wgslsmith_mod_u32(~abs(0u), ~(var_4.c << (var_4.a % 32u)))), _wgslsmith_f_op_f32(f32(-1f) * -1813f));
}

