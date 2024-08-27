struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(vec4<f32>(-749f, -1075f, 1046f, -822f));

var<private> global3: vec2<bool>;

var<private> global4: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-803f, 266f), vec2<f32>(-313f, 1533f), vec2<f32>(-173f, 277f), vec2<f32>(-406f, 1000f), vec2<f32>(1443f, 876f), vec2<f32>(-1274f, 1119f), vec2<f32>(-1190f, -1000f), vec2<f32>(-412f, -1379f), vec2<f32>(-1113f, 597f), vec2<f32>(727f, -114f), vec2<f32>(-515f, -510f), vec2<f32>(1571f, 504f), vec2<f32>(1477f, -1000f), vec2<f32>(-739f, -1570f), vec2<f32>(328f, -1000f), vec2<f32>(523f, -2019f), vec2<f32>(-284f, -1000f), vec2<f32>(-1271f, 709f), vec2<f32>(114f, 1000f), vec2<f32>(-2026f, 111f), vec2<f32>(-259f, 1139f), vec2<f32>(823f, 475f), vec2<f32>(-216f, -2001f), vec2<f32>(1883f, -766f), vec2<f32>(-865f, -1000f), vec2<f32>(543f, -1621f), vec2<f32>(1856f, -1331f), vec2<f32>(117f, 1220f), vec2<f32>(1258f, 429f), vec2<f32>(-1112f, 700f), vec2<f32>(574f, 923f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_1(!vec3<bool>(true && select(false, arg_0, global3.x), false, any(!vec2<bool>(false, arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -1675f), vec2<bool>(any(select(vec4<bool>(false, arg_0, arg_0, global3.x), vec4<bool>(global3.x, arg_0, true, true), vec4<bool>(arg_0, global3.x, arg_0, false))), !any(select(vec4<bool>(false, global0.x, true, global3.x), vec4<bool>(global0.x, true, false, arg_0), arg_0))));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -1779f, _wgslsmith_f_op_f32(global1.a.x * 240f), _wgslsmith_f_op_f32(step(1969f, _wgslsmith_f_op_f32(f32(-1f) * -506f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(global2.a))))));
    global0 = vec2<bool>(arg_0, any(!(!vec3<bool>(var_0.a.x, arg_0, global3.x))));
    global4 = array<vec2<f32>, 31>();
    let var_1 = _wgslsmith_f_op_f32(global1.a.x - -315f);
    return global1.a.x;
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1136f - 312f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(any(vec2<bool>(true || global0.x, any(vec2<bool>(global0.x, false)))))));
    var var_2 = Struct_1(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, global0.x), var_1 > 149f), !(!vec3<bool>(false, global0.x, global0.x)), all(vec3<bool>(true, global3.x, global3.x)) & (u_input.b < u_input.b)), _wgslsmith_f_op_f32(global1.a.x - -955f), vec2<bool>(!any(vec3<bool>(global0.x, true, false)), true));
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_0.yz * vec2<f32>(335f, _wgslsmith_f_op_f32(exp2(var_0))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_0, var_2.b, global1.a.x) * vec4<f32>(arg_0.x, 322f, global1.a.x, var_0))))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-804f, _wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_div_f32(-969f, -1198f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 - -509f))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> bool {
    global0 = !arg_1.c;
    let var_0 = vec4<i32>(~(-(~2147483647i)), max(-u_input.b, i32(-1i) * -(u_input.b | -39194i)), ~(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, -64972i) >> (u_input.a.x % 32u)), u_input.b);
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-arg_2), 1000f, global2.a.x))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a + global1.a), global1.a), global1.a))));
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1233f), -271f, _wgslsmith_f_op_f32(func_3(true)), func_2(global1.a).a.x)))));
    var var_3 = arg_1;
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(!func_1(vec4<u32>(u_input.d.x, u_input.e.x, 32294u, 11551u), Struct_1(vec3<bool>(global3.x, false, global0.x), global1.a.x, vec2<bool>(false, true)), _wgslsmith_f_op_f32(global1.a.x + 560f)), all(select(!vec4<bool>(global0.x, true, false, global3.x), select(vec4<bool>(false, false, false, global3.x), vec4<bool>(true, true, true, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x)), global3.x)), all(vec2<bool>(global3.x, any(vec2<bool>(global0.x, global3.x)))), all(select(!vec4<bool>(global3.x, false, false, true), !vec4<bool>(global0.x, true, true, true), true))), select(vec4<bool>(all(!vec3<bool>(false, true, global3.x)), !global0.x & (false | global0.x), !global3.x, !(!global3.x)), !select(select(vec4<bool>(global0.x, false, global0.x, global3.x), vec4<bool>(false, global3.x, global0.x, false), global0.x), select(vec4<bool>(global3.x, global0.x, global0.x, false), vec4<bool>(global3.x, global0.x, true, false), vec4<bool>(global3.x, true, global0.x, true)), true), !vec4<bool>(-16051i > u_input.b, false, false, global0.x || true)), !(!(!vec4<bool>(true, global3.x, global0.x, false))));
    let var_1 = (_wgslsmith_clamp_i32(firstLeadingBit(-1i & u_input.b), -2147483647i, u_input.b) << (4294967295u % 32u)) <= ~(-5584i);
    var var_2 = u_input.a.x;
    let var_3 = Struct_1(!(!vec3<bool>(global3.x, true, any(vec2<bool>(var_1, false)))), _wgslsmith_f_op_f32(f32(-1f) * -402f), !var_0.zx);
    var var_4 = countOneBits(33083i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global1.a.wy), vec2<f32>(-405f, func_2(vec4<f32>(110f, global1.a.x, 712f, global1.a.x)).a.x)))));
}

