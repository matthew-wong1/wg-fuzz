struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = false;

var<private> global2: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(38767i, 0i, -1i), vec3<i32>(-23174i, 2147483647i, 2147483647i), vec3<i32>(34648i, -24334i, 32899i), vec3<i32>(-19360i, 0i, -64302i), vec3<i32>(2147483647i, i32(-2147483648), 38367i), vec3<i32>(1i, 0i, i32(-2147483648)), vec3<i32>(-1i, -29554i, i32(-2147483648)), vec3<i32>(0i, -1i, -48177i), vec3<i32>(0i, -1i, 64013i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(-23451i, 1i, 10821i), vec3<i32>(2147483647i, -8190i, i32(-2147483648)), vec3<i32>(-13439i, -14429i, i32(-2147483648)), vec3<i32>(-4130i, -15603i, i32(-2147483648)), vec3<i32>(47063i, -11633i, 16378i), vec3<i32>(2147483647i, 2147483647i, -26820i), vec3<i32>(-30727i, 0i, 0i), vec3<i32>(-1i, -14095i, 0i), vec3<i32>(-12200i, 1i, 1i), vec3<i32>(1i, 41792i, 1i), vec3<i32>(i32(-2147483648), 42673i, 0i));

var<private> global3: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-4339i, 2147483647i, 1i), vec3<i32>(-6903i, 47197i, -1i), vec3<i32>(-22453i, -39853i, 0i), vec3<i32>(-101696i, 58948i, 2147483647i), vec3<i32>(27676i, -1i, -7805i), vec3<i32>(12010i, 1i, i32(-2147483648)), vec3<i32>(48236i, 44098i, -46041i), vec3<i32>(1i, 45748i, 3820i), vec3<i32>(0i, 52136i, -15765i), vec3<i32>(-21871i, 38245i, 2147483647i), vec3<i32>(18118i, 5013i, 13574i), vec3<i32>(-76279i, -1i, 2526i), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(-6582i, i32(-2147483648), -1i), vec3<i32>(53877i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 2147483647i, 32931i), vec3<i32>(1i, -26326i, -1i), vec3<i32>(2147483647i, 0i, 23488i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global2 = array<vec3<i32>, 21>();
    global0 = 57130u;
    let var_0 = vec4<i32>(min((i32(-1i) * -1101i) & u_input.b, u_input.e.x), u_input.e.x, u_input.d, u_input.b);
    let var_1 = Struct_1(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-384f * -468f), _wgslsmith_f_op_f32(abs(1301f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1437f - 526f) + _wgslsmith_f_op_f32(-1000f + 404f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(487f)), -455f)), select(false, select(all(vec2<bool>(false, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))), any(vec2<bool>(true, true)) & true), all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), -2147483647i == u_input.b))));
    let var_2 = Struct_1(var_1.c, 928f, !any(!select(vec4<bool>(var_1.a, true, true, false), vec4<bool>(var_1.a, true, true, var_1.a), true)));
    return false;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global3 = array<vec3<i32>, 18>();
    var var_0 = Struct_1(func_3(), arg_0.b, any(!(!select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.c, true, true), false))));
    global0 = 4294967295u;
    global1 = true;
    let var_1 = arg_0.c;
    return -2026f;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !select(vec4<bool>(true, false, !all(vec3<bool>(arg_2.c, false, arg_2.c)), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, arg_2.a, false, true), vec4<bool>(arg_2.c, arg_2.c, arg_2.c, arg_2.c), false), select(!vec4<bool>(true, arg_2.c, arg_2.c, arg_2.c), select(vec4<bool>(arg_2.a, false, arg_2.a, arg_2.c), vec4<bool>(arg_2.a, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(arg_2.c, arg_2.c, true, true))), !(143f <= _wgslsmith_div_f32(arg_0.x, -1257f)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_div_f32(arg_0.x, arg_2.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.b, -453f, 455f))))));
    global3 = array<vec3<i32>, 18>();
    global2 = array<vec3<i32>, 21>();
    global3 = array<vec3<i32>, 18>();
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = vec3<f32>(-1847f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1526f * _wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(arg_2.b + func_4(vec3<f32>(arg_2.b, arg_0.b, arg_0.b), -1i, arg_0).b), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1893f * _wgslsmith_f_op_f32(f32(-1f) * -302f))));
    global0 = abs(u_input.c.x);
    var var_1 = u_input.b;
    var var_2 = abs(select(u_input.e, max(u_input.e, countOneBits(u_input.e)), !arg_2.c)) << (~(~u_input.c) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(425f, arg_2.b, 1313f, var_0.x))))))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.b, 1590f, _wgslsmith_f_op_f32(abs(arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -389f))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 1558f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-162f, var_0.x)), var_3.x)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f + _wgslsmith_f_op_f32(func_2(arg_2)))), 322f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(true, -1467f, true)))), 610f));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<f32>) -> bool {
    global2 = array<vec3<i32>, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_5(func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -625f), _wgslsmith_f_op_f32(floor(714f)), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(func_2(Struct_1(true, arg_0, false))))), _wgslsmith_sub_i32(-9484i, -23412i), Struct_1(_wgslsmith_f_op_f32(-arg_0) <= _wgslsmith_div_f32(552f, -634f), arg_0, false)), ~2147483647i, func_4(vec3<f32>(-2052f, _wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1062f)), arg_0)), 0i, Struct_1(any(vec3<bool>(false, true, true)) | true, arg_2.x, true))));
    let var_1 = 248f;
    global2 = array<vec3<i32>, 21>();
    global0 = arg_1.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(250f, arg_2.x), _wgslsmith_f_op_f32(min(-868f, _wgslsmith_f_op_f32(select(-133f, _wgslsmith_f_op_f32(ceil(var_1)), true)))))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -848f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) - -1325f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(~0i, u_input.e.x, _wgslsmith_dot_vec3_i32(~global2[_wgslsmith_index_u32(abs(1u), 21u)], _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~global3[_wgslsmith_index_u32(u_input.c.x, 18u)], -global2[_wgslsmith_index_u32(3400u, 21u)]), -global2[_wgslsmith_index_u32(69092u, 21u)] | global2[_wgslsmith_index_u32(u_input.c.x, 21u)])));
    let var_1 = Struct_1(any(vec2<bool>(func_1(_wgslsmith_div_f32(1400f, 1036f), firstTrailingBit(vec2<u32>(u_input.a, u_input.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-219f, -1095f) * vec2<f32>(-345f, -2236f))), true)), _wgslsmith_f_op_f32(-536f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-585f, 836f), -138f)) + _wgslsmith_f_op_f32(select(-973f, _wgslsmith_f_op_f32(-115f - -1041f), true)))), false);
    var var_2 = var_1;
    let var_3 = max(~(~vec4<u32>(~44613u, ~u_input.c.x, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), firstLeadingBit(u_input.c.x))), ~(~(~vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x) & (vec4<u32>(0u, u_input.a, u_input.a, 44235u) ^ vec4<u32>(4294967295u, u_input.a, u_input.c.x, 96503u)))));
    var var_4 = func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b, var_2.b, var_2.b), vec3<f32>(-575f, -1000f, 397f))))))), 1i, var_1);
    global2 = array<vec3<i32>, 21>();
    let var_5 = vec2<bool>(true, true);
    let var_6 = var_1;
    var_2 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(80196u, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mult_u32(1u, 60887u)), ~(0u & var_3.x), _wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, u_input.a), u_input.c, true), ~u_input.c), min(50464u, _wgslsmith_mod_u32(89784u, 17752u))), vec4<u32>(4294967295u, 8496u, ~u_input.a, ~(~u_input.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1589f - _wgslsmith_f_op_f32(abs(var_1.b)))))), ~(select(vec3<u32>(var_3.x, 15583u, 4294967295u), vec3<u32>(var_3.x, var_3.x, 1u), var_1.c) | ~vec3<u32>(var_3.x, 44486u, 15464u)) ^ var_3.xyw);
}

