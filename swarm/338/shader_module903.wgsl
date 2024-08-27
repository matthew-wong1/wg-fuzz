struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<i32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-587f, -544f, -294f, 1477f);

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-844f, -479f, -244f, -664f), vec4<f32>(-1000f, -164f, -1749f, 3462f), vec4<f32>(-1255f, 138f, 727f, 2156f), vec4<f32>(-692f, 244f, 149f, 373f), vec4<f32>(1000f, -933f, 362f, -1214f), vec4<f32>(-729f, -1671f, -1283f, 887f), vec4<f32>(-879f, -355f, 1664f, 452f), vec4<f32>(-724f, 784f, 1673f, 720f), vec4<f32>(763f, -396f, 135f, -261f), vec4<f32>(-1712f, 1957f, 1000f, 1400f), vec4<f32>(1493f, -791f, -1000f, 1000f), vec4<f32>(540f, -148f, 1395f, -930f), vec4<f32>(-2180f, 614f, -1005f, 889f), vec4<f32>(1486f, 292f, 718f, 338f), vec4<f32>(-618f, 856f, 630f, -326f), vec4<f32>(318f, 600f, 663f, 353f), vec4<f32>(-2269f, -1656f, 306f, -151f), vec4<f32>(-271f, -1183f, -345f, 335f), vec4<f32>(-907f, -1000f, 188f, -172f), vec4<f32>(-334f, 537f, 509f, 385f), vec4<f32>(-1000f, 273f, -415f, 119f), vec4<f32>(287f, -632f, -336f, -1881f), vec4<f32>(-774f, 807f, -1048f, -764f), vec4<f32>(1333f, 1370f, -280f, -2235f), vec4<f32>(-1059f, -1000f, 902f, 1131f));

var<private> global2: vec2<u32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = 448f;
    let var_1 = Struct_1(all(select(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), false), vec2<bool>(any(vec2<bool>(arg_0, arg_0)), true), true)), firstLeadingBit(vec4<u32>(~global2.x, abs(_wgslsmith_mult_u32(61110u, 23756u)), global2.x, ~1u)), u_input.a.yz, all(vec4<bool>(arg_0, true, true, _wgslsmith_f_op_f32(-218f - var_0) > -2987f)), select(!(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), false)), vec2<bool>(all(vec3<bool>(true, true, false)), true), arg_0));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(round(var_0))), -381f, -1244f, -1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), 1960f, -321f, _wgslsmith_f_op_f32(step(-390f, 160f))))));
    global1 = array<vec4<f32>, 25>();
    global1 = array<vec4<f32>, 25>();
    return true;
}

fn func_2() -> vec3<bool> {
    global1 = array<vec4<f32>, 25>();
    let var_0 = Struct_1(select(true, any(vec4<bool>(true, true, true, true)), 32599i < u_input.a.x), ~(min(~vec4<u32>(0u, global2.x, global2.x, global2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 1u, 0u, 95136u), vec4<u32>(global2.x, global2.x, global2.x, global2.x))) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, global2.x, 0u, global2.x), vec4<u32>(global2.x, global2.x, 20480u, 4294967295u))), u_input.a.xy, all(select(vec2<bool>(func_3(true), false), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true))), !(!vec2<bool>(true, u_input.a.x == -1i)));
    var var_1 = !var_0.e;
    var var_2 = var_0;
    let var_3 = global0.yzy;
    return !select(!(!select(vec3<bool>(var_0.d, false, false), vec3<bool>(true, false, var_2.a), false)), select(vec3<bool>(false, true, false), !select(vec3<bool>(var_2.d, var_1.x, var_2.e.x), vec3<bool>(true, var_0.d, false), var_2.a), !select(vec3<bool>(var_0.a, var_0.e.x, false), vec3<bool>(true, var_1.x, var_0.e.x), true)), select(select(!vec3<bool>(var_0.a, var_0.a, var_0.a), !vec3<bool>(var_0.d, var_2.d, var_1.x), vec3<bool>(var_0.e.x, var_2.e.x, false)), !(!vec3<bool>(false, var_2.e.x, false)), all(vec3<bool>(false, true, true))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = select(vec3<bool>(arg_3.a, arg_3.a, any(arg_3.e)), vec3<bool>(false, true, any(arg_3.e)), true);
    let var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) + 713f));
    var var_2 = ~vec4<i32>(select(u_input.a.x ^ 64507i, arg_3.c.x, var_0.x), ~u_input.a.x, arg_3.c.x, u_input.a.x) ^ (vec4<i32>(~reverseBits(arg_3.c.x), ~(arg_3.c.x | arg_3.c.x), u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x)) << (~(~vec4<u32>(arg_3.b.x, arg_3.b.x, arg_3.b.x, 8457u) >> (arg_3.b % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(91444u, reverseBits(0u)), 25u)] + _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(0u, global2.x) << ((global2.x ^ arg_3.b.x) % 32u)), 25u)]));
    var var_3 = func_2();
    return 0i;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2436f), -331f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.xyz, _wgslsmith_f_op_vec3_f32(-global0.wxz)))));
    global2 = abs(arg_2.b.wz >> (vec2<u32>(min(_wgslsmith_div_u32(arg_2.b.x, arg_2.b.x), 13732u), ~(~4294967295u)) % vec2<u32>(32u)));
    global2 = _wgslsmith_div_vec2_u32(arg_2.b.xy, arg_2.b.yz);
    var var_1 = u_input.a.x;
    global1 = array<vec4<f32>, 25>();
    return vec3<bool>(!(!arg_2.e.x), !(arg_2.d && false) || select(~4294967295u > (33736u | global2.x), arg_2.a, !all(arg_2.e)), arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<u32>(reverseBits(global2.x), firstTrailingBit(31550u) >> (countOneBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(49657u, 39192u), global2.x & 18339u)) % 32u));
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-958f + -1126f)) + global0.x), _wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(318f * _wgslsmith_f_op_f32(-773f * _wgslsmith_f_op_f32(trunc(-854f)))), global0.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(global2.x, 25u)]), global1[_wgslsmith_index_u32(59873u, 25u)]));
    global2 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32((vec2<u32>(1u, 58645u) >> (select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global2.x, global2.x), vec2<bool>(true, false)) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(~vec2<u32>(11443u, 4294967295u), vec2<u32>(64737u, global2.x)), reverseBits(abs(vec2<u32>(global2.x, 38777u)))), vec2<u32>(~global2.x, ~global2.x));
    var var_0 = global2.x >> (~31223u % 32u);
    var var_1 = true;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0.xyx, global0.wwy), global0.ywy), global0.wwy, vec3<bool>(true, all(vec2<bool>(false, true)), true))))));
    var var_3 = func_4(countOneBits(_wgslsmith_div_i32(~func_1(Struct_2(166f, vec3<f32>(var_2.b.x, var_2.b.x, -154f)), Struct_2(1000f, vec3<f32>(global0.x, global0.x, -300f)), Struct_2(global0.x, var_2.b), Struct_1(false, vec4<u32>(global2.x, 0u, 0u, global2.x), vec2<i32>(-2147483647i, u_input.a.x), true, vec2<bool>(false, false))), u_input.a.x)), global2.x, Struct_1(false, vec4<u32>(global2.x, abs(45141u), ~(~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.x, global2.x, global2.x) >> (vec4<u32>(global2.x, global2.x, global2.x, 0u) % vec4<u32>(32u)), vec4<u32>(global2.x, global2.x, global2.x, 0u))), -(~(-u_input.a.zx)), !(!func_3(false)), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, -580i), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)), i32(-1i) * -52800i), vec2<i32>(~u_input.a.x, 1i)), vec4<u32>(select(14294u, ~43985u | global2.x, false), _wgslsmith_add_u32(global2.x, ~global2.x), 1u, ~(_wgslsmith_add_u32(8562u, global2.x) << (~1u % 32u))));
}

