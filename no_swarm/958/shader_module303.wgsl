struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: Struct_3;

var<private> global2: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    global0 = array<vec2<bool>, 25>();
    var var_0 = ~4294967295u;
    var var_1 = global1.c;
    global2 = arg_0;
    let var_2 = true;
    return arg_1.x;
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    global1 = Struct_3(_wgslsmith_div_vec2_u32(global1.a, vec2<u32>(0u, ~1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-230f)) + global1.e), Struct_1(_wgslsmith_sub_u32(arg_2 & countOneBits(arg_1.x), min(firstLeadingBit(54588u), 1u))), 1985f, global1.e);
    var var_0 = true;
    global0 = array<vec2<bool>, 25>();
    let var_1 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1372f)));
    var var_2 = u_input.a;
    return _wgslsmith_sub_u32(max(_wgslsmith_div_u32(_wgslsmith_mod_u32(6285u >> (global1.c.a % 32u), ~40999u), ~arg_2), u_input.a), 1u);
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(func_2(all(vec3<bool>(false, true, true)), vec3<f32>(global1.e, global1.e, global1.d), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, global1.a.x, 63802u), vec4<u32>(global1.a.x, u_input.a, 43206u, arg_0.a.a)) >= ~(29914u >> (arg_0.a.a % 32u)))));
    global1 = Struct_3(vec2<u32>(~4294967295u, select(1u, _wgslsmith_add_u32(~global1.c.a, func_3(global1.e, global1.a, 42823u, vec3<f32>(760f, 1000f, global1.b))), any(vec4<bool>(false, true, false, true)))), -629f, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(80916u, _wgslsmith_add_u32(16679u, u_input.a), u_input.a), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 10666u, 64436u), vec3<u32>(85382u, 27459u, global1.c.a)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(!(global1.c.a > global1.a.x), vec3<f32>(global1.b, global1.d, _wgslsmith_f_op_f32(ceil(global1.b))), _wgslsmith_f_op_f32(ceil(-1000f)) > global1.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1082f + global1.e)), _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-var_0)))));
    var var_1 = u_input.a;
    var var_2 = Struct_2(Struct_1(62249u));
    let var_3 = vec2<bool>(any(!global0[_wgslsmith_index_u32(4294967295u, 25u)]), !any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return false;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool) -> bool {
    var var_0 = Struct_4(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1036f, -139f)) - -911f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(func_2(false, vec3<f32>(global1.b, global1.d, arg_1.x), false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1780f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.d - -1226f), -324f)))), arg_0);
    let var_1 = vec3<i32>(abs(1i) << (_wgslsmith_clamp_u32(18479u, _wgslsmith_mod_u32(arg_0.a.x, 0u) | ~var_0.b.c.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 27724u, 1u, 4294967295u), vec4<u32>(18389u, var_0.b.a.x, arg_0.a.x, 0u) & vec4<u32>(u_input.a, arg_0.a.x, 46114u, global1.a.x))) % 32u), -26620i, -_wgslsmith_mod_i32(u_input.b ^ (i32(-1i) * -2147483647i), 1i));
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1, arg_1, arg_2))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))))), var_0.b);
    var var_2 = vec3<bool>(select(arg_2, true, any(!select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, false, true), false))), select(arg_2, !all(!vec2<bool>(false, arg_2)), arg_2 != arg_2), any(select(vec3<bool>(true, !arg_2, arg_2), !select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, arg_2, true)), !arg_2)));
    let var_3 = var_1.x != 20760i;
    return var_3;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    global1 = arg_2;
    var var_0 = 54698u;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-838f, arg_2.b), arg_2.e, -1938f, _wgslsmith_f_op_f32(-arg_2.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-687f, arg_2.d, 527f, -1000f)))))), arg_2);
    global1 = arg_2;
    global0 = array<vec2<bool>, 25>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(vec3<bool>(true | select(-12284i <= u_input.b, true, true), !all(vec4<bool>(false, true, false, false)), func_4(Struct_3(vec2<u32>(1u, global1.a.x), 834f, Struct_1(u_input.a), 864f, -864f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(458f, global1.d, global1.d, global1.b)), func_1(Struct_2(global1.c))) & true), global1.c, Struct_3(global1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), 1355f) - _wgslsmith_f_op_f32(f32(-1f) * -1202f)), Struct_1(~(~1u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1059f * global1.b) * 465f))), -629f));
    var var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(~(~u_input.b), -_wgslsmith_sub_i32(u_input.b, u_input.b)), firstLeadingBit(0i), ~28361i), ~firstTrailingBit((vec3<i32>(u_input.b, 41713i, u_input.b) << (vec3<u32>(global1.a.x, 1u, global1.a.x) % vec3<u32>(32u))) & vec3<i32>(u_input.b, 0i, u_input.b)), countOneBits(-vec3<i32>(reverseBits(u_input.b), u_input.b, _wgslsmith_clamp_i32(u_input.b, 39936i, 8035i))));
    var var_1 = var_0.x;
    var var_2 = Struct_3(global1.a, global1.b, global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1211f, _wgslsmith_f_op_f32(-global1.e))) - func_5(vec3<bool>(true, true, true), global1.c, Struct_3(vec2<u32>(1u, u_input.a), _wgslsmith_f_op_f32(step(1029f, -150f)), Struct_1(u_input.a), _wgslsmith_f_op_f32(global1.b + 1109f), global1.b)).e), global1.d);
    var var_3 = func_5(vec3<bool>(false | !select(true, false, false), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), !(true | (var_2.c.a < global1.c.a))), func_5(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_5(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), Struct_1(countOneBits(1u)), func_5(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), global1.c, func_5(vec3<bool>(false, true, false), Struct_1(u_input.a), Struct_3(vec2<u32>(86838u, var_2.a.x), -1006f, var_2.c, var_2.d, var_2.d)))).c, func_5(vec3<bool>(true, true, true), global1.c, Struct_3(_wgslsmith_sub_vec2_u32(var_2.a, vec2<u32>(64949u, 5419u)), _wgslsmith_f_op_f32(f32(-1f) * -165f), Struct_1(1u), _wgslsmith_f_op_f32(-1333f * global1.b), var_2.e))).c, Struct_3(~var_2.a, -1000f, func_5(vec3<bool>(true, true, true), func_5(vec3<bool>(true, true, true), global1.c, func_5(vec3<bool>(true, true, false), Struct_1(6833u), Struct_3(vec2<u32>(u_input.a, 4294967295u), global1.d, Struct_1(4346u), 928f, global1.e))).c, func_5(vec3<bool>(true, false, false), func_5(vec3<bool>(true, true, true), Struct_1(global1.a.x), Struct_3(vec2<u32>(76399u, global1.c.a), var_2.e, var_2.c, -563f, global1.b)).c, func_5(vec3<bool>(true, false, false), var_2.c, Struct_3(vec2<u32>(u_input.a, u_input.a), 764f, var_2.c, 349f, 1382f)))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-486f, 470f) * _wgslsmith_f_op_f32(func_2(true, vec3<f32>(var_2.e, global1.e, -726f), false))))));
    var var_4 = !(!(!any(vec4<bool>(false, false, true, false))));
    var var_5 = true;
    var var_6 = all(!global0[_wgslsmith_index_u32(reverseBits(23007u), 25u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e, var_2.d, 250f) - vec3<f32>(global1.d, 2169f, var_3.e)), true))), vec3<f32>(_wgslsmith_div_f32(var_2.d, -1690f), var_2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.e)) - global1.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1054f, 1000f, var_3.b, 655f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.d, global1.d, global1.b, var_2.e))) + vec4<f32>(var_2.b, var_2.d, var_3.e, var_3.d)), true)), vec4<f32>(var_3.e, _wgslsmith_f_op_f32(2142f * var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 313f)), _wgslsmith_f_op_f32(func_2(true, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.d, var_2.b, -768f), vec3<f32>(-1009f, var_3.b, -1070f), vec3<bool>(false, false, true))), any(vec3<bool>(true, true, true)))))));
}

