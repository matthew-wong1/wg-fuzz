struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23>;

var<private> global1: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(1u, 6926u), vec2<u32>(1u, 34864u), vec2<u32>(0u, 24941u), vec2<u32>(82380u, 0u), vec2<u32>(20369u, 1u), vec2<u32>(39049u, 1u), vec2<u32>(18499u, 151872u), vec2<u32>(64656u, 1u), vec2<u32>(46916u, 4294967295u));

var<private> global2: array<vec4<bool>, 30>;

var<private> global3: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> bool {
    global2 = array<vec4<bool>, 30>();
    var var_0 = arg_3;
    global1 = array<vec2<u32>, 9>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1550f), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-429f + 1202f))));
    global0 = array<vec4<bool>, 23>();
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_clamp_vec2_u32(~global1[_wgslsmith_index_u32(u_input.c, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], ~((vec2<u32>(u_input.c, 1u) & vec2<u32>(u_input.c, u_input.c)) << (global1[_wgslsmith_index_u32(u_input.c ^ 23556u, 9u)] % vec2<u32>(32u))) & firstLeadingBit(~global1[_wgslsmith_index_u32(~1u, 9u)]));
    global0 = array<vec4<bool>, 23>();
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x | 4294967295u, var_0.x), vec2<u32>(~4294967295u, firstTrailingBit(37798u))) << (~_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_0.x, var_0.x)), vec2<u32>(u_input.c, 4294967295u) << (vec2<u32>(u_input.c, var_0.x) % vec2<u32>(32u)), vec2<u32>(u_input.c, 1u) << (vec2<u32>(10950u, var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(var_0.x, ~_wgslsmith_div_u32(u_input.c, _wgslsmith_div_u32(u_input.c, var_0.x))));
    var var_2 = -arg_0.b;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.a.x, -1000f)))))), arg_0.a, _wgslsmith_f_op_f32(-762f - _wgslsmith_f_op_f32(-arg_0.a.x)) < -164f)), arg_0.b, true, !select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.d.x, arg_0.d.x, true, true), select(arg_1, false, true)), !vec4<bool>(arg_1, arg_1, arg_0.c, arg_1), arg_1), select(arg_0.e, vec2<bool>(false, arg_1), !(!arg_0.d.wx)));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> f32 {
    var var_0 = vec2<bool>(all(vec3<bool>(func_2(arg_1, u_input.c, 1f, Struct_1(vec2<f32>(arg_1.a.x, -829f), arg_3, false, vec4<bool>(true, arg_0.e.x, arg_1.e.x, arg_1.c), vec2<bool>(arg_0.c, true))), arg_0.c, all(arg_1.d))), arg_1.c);
    var var_1 = 95252u;
    var var_2 = _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(15044i, u_input.b, arg_3), vec3<i32>(1i, arg_0.b, 2147483647i)), -1807i) | abs(u_input.a.x);
    var_0 = arg_1.e;
    global3 = array<vec2<bool>, 6>();
    return arg_1.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-825f * 883f) + _wgslsmith_f_op_f32(f32(-1f) * -1009f)))), _wgslsmith_f_op_f32(ceil(1197f))), abs(u_input.a.x), any(vec3<bool>(!func_2(Struct_1(vec2<f32>(-531f, -374f), u_input.b, true, global0[_wgslsmith_index_u32(0u, 23u)], vec2<bool>(true, true)), u_input.c, 883f, Struct_1(vec2<f32>(2055f, -1018f), 6832i, true, global2[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(u_input.c, 6u)])), true, select(false, false, true) & true)), !vec4<bool>(true, true, !select(true, true, false), false), vec2<bool>(true, true));
    global4 = -593f;
    global4 = _wgslsmith_div_f32(536f, _wgslsmith_f_op_f32(func_4(var_0, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -1110f), var_0.b, func_3(var_0, u_input.d <= 2147483647i), vec4<bool>(var_0.e.x | var_0.c, true, true, var_0.e.x), vec2<bool>(var_0.a.x > -116f, false)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b, u_input.b), u_input.a.yw) << (global1[_wgslsmith_index_u32(17418u, 9u)] % vec2<u32>(32u)), -1i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(ceil(403f))), 257f, _wgslsmith_f_op_f32(f32(-1f) * -598f)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_0.a)), var_0.b, true & var_0.e.x, var_0.d, !vec2<bool>(false, any(vec2<bool>(false, true))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x + var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_div_f32(830f, -987f)))), 31234i, false | !(!(!var_2.d.x)), !global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 321u), 1u, firstLeadingBit(u_input.c)), 23u)], !select(select(var_2.e, select(var_0.e, vec2<bool>(true, true), true), !var_2.e), !(!var_0.e), !any(vec4<bool>(var_0.c, var_2.d.x, true, false))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global2 = array<vec4<bool>, 30>();
    var var_0 = !(!(!vec4<bool>(true, false, arg_1.c, any(global2[_wgslsmith_index_u32(4294967295u, 30u)]))));
    var var_1 = func_1();
    let var_2 = 4294967295u;
    var var_3 = !func_1().d.xzy;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(790f, 1000f) + vec2<f32>(1622f, 1000f))))), u_input.d, !func_2(func_1(), ~1202u, _wgslsmith_f_op_f32(f32(-1f) * -166f), func_1()), func_1().d, vec2<bool>(func_1().e.x, true)), all(func_1().d), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(540f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1498f, -2094f))), -min(u_input.a.x, abs(u_input.d)), any(vec4<bool>(true, true, 26107i < u_input.b, false)), vec4<bool>(func_2(Struct_1(vec2<f32>(2268f, -804f), u_input.b, false, vec4<bool>(false, true, true, false), global3[_wgslsmith_index_u32(98502u, 6u)]), u_input.c << (u_input.c % 32u), 1436f, func_1()), true, true == all(vec2<bool>(true, true)), true), select(vec2<bool>(func_3(Struct_1(vec2<f32>(1080f, 1000f), 4011i, true, global2[_wgslsmith_index_u32(1246u, 30u)], global3[_wgslsmith_index_u32(76174u, 6u)]), true), all(global3[_wgslsmith_index_u32(u_input.c, 6u)])), vec2<bool>(false, true), vec2<bool>(true, true))));
    var var_1 = all(vec3<bool>(1i == var_0.b, var_0.c, true));
    var_1 = !(select(_wgslsmith_mod_i32(var_0.b, func_1().b), 0i, true) >= (u_input.b | 2254i));
    let var_2 = !var_0.d.x;
    let var_3 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) - vec2<f32>(1245f, -905f)), _wgslsmith_f_op_vec2_f32(-var_0.a))), _wgslsmith_sub_i32(-2147483647i, max(_wgslsmith_clamp_i32(-68320i, -2147483647i, u_input.b), ~(-2147483647i))), var_0.b <= 2147483647i, vec4<bool>(true, false, false, any(!vec3<bool>(true, false, var_0.d.x))), select(var_0.d.zx, global3[_wgslsmith_index_u32(15098u, 6u)], !(!var_0.d.zy))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1337f, var_0.a.x)), _wgslsmith_f_op_vec2_f32(-var_0.a))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-208f, 395f) - var_0.a), _wgslsmith_f_op_vec2_f32(-var_0.a))), reverseBits(min(-1i, func_1().b)), any(!select(vec4<bool>(false, var_2, var_2, false), global0[_wgslsmith_index_u32(69107u, 23u)], false)), global0[_wgslsmith_index_u32(~min(u_input.c & u_input.c, ~u_input.c), 23u)], !vec2<bool>(!var_2, !var_0.d.x)), all(var_0.d.xwy), func_1());
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -611f);
    var var_5 = vec2<bool>(!var_0.d.x, !(!(var_0.e.x && var_2)) & all(!select(vec2<bool>(var_3.c, false), var_3.e, var_0.c)));
    let var_6 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.a)) - vec2<f32>(-1435f, _wgslsmith_f_op_f32(round(655f)))))), -_wgslsmith_add_i32(-36847i, var_0.b & -34223i), var_0.e.x, var_3.d, var_0.d.ww);
    var var_7 = !(!func_5(func_1(), Struct_1(vec2<f32>(1770f, -166f), 0i, true, select(var_6.d, vec4<bool>(false, var_5.x, var_6.e.x, true), var_2), func_5(var_6, var_3, false, var_6).e), var_0.c, func_5(func_5(var_6, var_6, var_5.x, var_3), func_5(var_6, Struct_1(vec2<f32>(-1357f, -370f), 0i, var_0.c, global0[_wgslsmith_index_u32(u_input.c, 23u)], vec2<bool>(var_6.c, var_3.c)), var_5.x, Struct_1(vec2<f32>(1257f, var_3.a.x), 17059i, var_0.d.x, vec4<bool>(var_3.e.x, false, false, var_3.d.x), vec2<bool>(false, var_0.d.x))), true, func_5(Struct_1(var_3.a, var_0.b, true, vec4<bool>(var_6.d.x, true, true, false), global3[_wgslsmith_index_u32(4294967295u, 6u)]), Struct_1(var_6.a, -1i, var_5.x, global0[_wgslsmith_index_u32(1u, 23u)], vec2<bool>(var_5.x, var_3.c)), true, var_3))).e.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(~(-_wgslsmith_add_vec4_i32(u_input.a, u_input.a)), -firstLeadingBit(u_input.a | u_input.a)), 38217u, firstLeadingBit(70125u));
}

