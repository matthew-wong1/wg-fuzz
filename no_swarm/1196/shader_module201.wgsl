struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(1265u, 1u), vec2<u32>(16113u, 25560u), vec2<u32>(0u, 4294967295u), vec2<u32>(46418u, 4294967295u), vec2<u32>(24040u, 0u), vec2<u32>(7778u, 4294967295u), vec2<u32>(0u, 12268u), vec2<u32>(0u, 1844u), vec2<u32>(13748u, 4294967295u), vec2<u32>(92942u, 8730u), vec2<u32>(37468u, 4294967295u), vec2<u32>(21523u, 4294967295u), vec2<u32>(6116u, 0u), vec2<u32>(19853u, 1u), vec2<u32>(32657u, 59580u), vec2<u32>(9038u, 6437u), vec2<u32>(40181u, 4294967295u), vec2<u32>(36740u, 0u), vec2<u32>(4294967295u, 59238u), vec2<u32>(51979u, 0u), vec2<u32>(10157u, 65645u), vec2<u32>(2033u, 1688u), vec2<u32>(12264u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 19976u), vec2<u32>(33371u, 4294967295u));

var<private> global3: array<u32, 22> = array<u32, 22>(54271u, 75748u, 1u, 18565u, 4294967295u, 1u, 0u, 19410u, 67132u, 84711u, 4294967295u, 0u, 36463u, 1u, 22276u, 4294967295u, 57682u, 30795u, 4294967295u, 4294967295u, 4294967295u, 0u);

var<private> global4: array<f32, 26> = array<f32, 26>(-1473f, -1000f, 2405f, -542f, 971f, 892f, 1100f, 1313f, 1432f, 432f, -452f, -1181f, 1158f, 2296f, -1191f, -1792f, -1000f, -810f, -244f, -702f, -1707f, -433f, -1657f, -1264f, 2180f, 183f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<u32> {
    global4 = array<f32, 26>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(12296u, 26u)]) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(262f, -409f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-167f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(96252u, 26u)])))));
    global3 = array<u32, 22>();
    global3 = array<u32, 22>();
    var var_1 = 216f;
    return select(max(vec2<u32>(~global3[_wgslsmith_index_u32(4294967295u, 22u)], u_input.a), ~min(arg_1.a.zy, global2[_wgslsmith_index_u32(39857u, 26u)])) | (~arg_1.a.zw | global2[_wgslsmith_index_u32(reverseBits(u_input.a), 26u)]), ~(~(~_wgslsmith_clamp_vec2_u32(arg_1.a.xx, global2[_wgslsmith_index_u32(45671u, 26u)], arg_1.a.yw))), !global1.zz);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32, arg_3: vec4<f32>) -> i32 {
    global4 = array<f32, 26>();
    var var_0 = arg_0.b;
    let var_1 = Struct_1(_wgslsmith_mult_vec4_u32(~countOneBits(~arg_0.a), firstLeadingBit(vec4<u32>(global3[_wgslsmith_index_u32(arg_0.a.x, 22u)] | 0u, _wgslsmith_mult_u32(27753u, arg_0.a.x), ~u_input.a, 7276u))), arg_0.b, firstLeadingBit(reverseBits(~arg_0.a.x) & countOneBits(~global3[_wgslsmith_index_u32(arg_1.x, 22u)])), any(select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, global1.x, false), global1.x), true), select(!vec3<bool>(global1.x, false, true), select(vec3<bool>(false, arg_0.d, true), vec3<bool>(arg_0.d, arg_0.d, false), vec3<bool>(arg_0.d, arg_0.d, arg_0.d)), vec3<bool>(false, global1.x, true)), vec3<bool>(arg_1.x < arg_1.x, all(global1.zz), true))));
    var var_2 = !vec3<bool>(var_1.d, var_1.d, var_1.d);
    var var_3 = true;
    return arg_0.b;
}

fn func_2() -> Struct_1 {
    global3 = array<u32, 22>();
    let var_0 = vec4<i32>(-_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -1i, ~17258i) & -2147483647i, -2147483647i, -(~1i), -1i);
    var var_1 = func_4(Struct_1(~(~vec4<u32>(43170u, u_input.a, global3[_wgslsmith_index_u32(u_input.a, 22u)], 4294967295u)) << (max(~vec4<u32>(86210u, global3[_wgslsmith_index_u32(37580u, 22u)], u_input.a, 4294967295u), vec4<u32>(74950u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)], global3[_wgslsmith_index_u32(38134u, 22u)])) % vec4<u32>(32u)), var_0.x, u_input.a, !global1.x), ~_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 22u)], 22u)]), func_3(35564i, Struct_1(vec4<u32>(4294967295u, 25633u, u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)]), -1i, 8285u, global1.x))), firstLeadingBit(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 59784u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)], 0u), vec4<u32>(u_input.a, u_input.a, 93008u, 93476u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(31464u, global3[_wgslsmith_index_u32(45930u, 22u)], 1u, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(0u, 22u)], global3[_wgslsmith_index_u32(u_input.a, 22u)], 1u, 25472u), vec4<u32>(u_input.a, u_input.a, 22709u, 57439u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(494f, -1730f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(30961u, 26u)], 1854f)))), _wgslsmith_f_op_f32(sign(-282f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(19994u, 26u)] * global4[_wgslsmith_index_u32(72199u, 26u)]), -374f, _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(u_input.a, 26u)])), global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(min(4294967295u, 19734u), 22u)], 26u)])))));
    let var_2 = Struct_1(reverseBits(countOneBits(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 22u)], 22u)], 1u, global3[_wgslsmith_index_u32(u_input.a, 22u)], u_input.a), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 22u)], 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24832u, 22u)], 22u)], 22u)], 4294967295u))))), 2147483647i, ~global3[_wgslsmith_index_u32(reverseBits(~_wgslsmith_div_u32(45494u, u_input.a)), 22u)], true);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(~14525u, 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(1u, 26u)])))) - _wgslsmith_f_op_f32(-504f + _wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.a, 26u)], global4[_wgslsmith_index_u32(var_2.a.x, 26u)]))), global4[_wgslsmith_index_u32(countOneBits(~1u), 26u)]) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-257f, -603f, -517f) * vec3<f32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 26u)], global4[_wgslsmith_index_u32(u_input.a, 26u)], global4[_wgslsmith_index_u32(11183u, 26u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.a, 26u)], 1024f, 566f))))))));
    return var_2;
}

fn func_1() -> bool {
    var var_0 = 272f;
    global3 = array<u32, 22>();
    global3 = array<u32, 22>();
    let var_1 = func_2();
    var var_2 = Struct_1(_wgslsmith_mod_vec4_u32(select(_wgslsmith_mult_vec4_u32(~vec4<u32>(7066u, 24031u, global3[_wgslsmith_index_u32(u_input.a, 22u)], 0u), vec4<u32>(u_input.a, var_1.c, 98716u, u_input.a)), _wgslsmith_div_vec4_u32(var_1.a & vec4<u32>(22794u, 79232u, 17225u, 61599u), abs(var_1.a)), vec4<bool>(any(global1.yz), select(true, true, false), true, any(vec4<bool>(false, false, true, true)))), vec4<u32>(select(abs(40903u), ~1u, true), 0u, firstTrailingBit(_wgslsmith_dot_vec2_u32(var_1.a.zw, var_1.a.zy)), u_input.a)), 26427i, max(abs(func_3(~var_1.b, var_1).x), ~global3[_wgslsmith_index_u32(var_1.c, 22u)]), false);
    return any(select(vec4<bool>(true | var_2.d, all(vec3<bool>(global1.x, global1.x, true)), var_1.d || false, var_1.d), !(!vec4<bool>(true, false, var_2.d, true)), vec4<bool>(true, false, !global1.x, 28276u == var_2.c))) || (_wgslsmith_dot_vec3_u32(var_2.a.zyz & _wgslsmith_div_vec3_u32(var_2.a.xwy, var_2.a.xyz), select(~vec3<u32>(20480u, u_input.a, 1u), var_2.a.zyx, var_1.b != -1i)) != ~(~(7218u >> (u_input.a % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(global1.x, true, !(false || global1.x));
    global1 = vec3<bool>(select(!(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.a, 22u)], 41758u) > (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33791u, 22u)], 22u)] & 12390u)), true, !(!(!var_0.x))), var_0.x, func_1());
    let var_1 = vec4<u32>(select(firstTrailingBit(global3[_wgslsmith_index_u32(41707u, 22u)]), u_input.a, true), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(u_input.a, 22u)], ~1u), global3[_wgslsmith_index_u32(56239u >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 30522u, u_input.a), vec3<u32>(global3[_wgslsmith_index_u32(42258u, 22u)], 1u, 59757u)) % 32u), 22u)]), ~(select(~84598u, 0u >> (global3[_wgslsmith_index_u32(0u, 22u)] % 32u), var_0.x && false) & global3[_wgslsmith_index_u32(7545u, 22u)]), func_3(-20593i, Struct_1(abs(vec4<u32>(u_input.a, 4294967295u, global3[_wgslsmith_index_u32(0u, 22u)], 1u)), ~(-19610i), 1u, false != any(vec3<bool>(false, global1.x, true)))).x);
    var var_2 = 4294967295u;
    global0 = array<vec2<bool>, 14>();
    var_0 = !(!select(vec3<bool>(true, all(global0[_wgslsmith_index_u32(1u, 14u)]), !global1.x), vec3<bool>(true, global1.x || var_0.x, global1.x && global1.x), select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, var_0.x, global1.x), false), select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, false, false), true), vec3<bool>(var_0.x, global1.x, var_0.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1181f), -1252f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1000f)), -800f, var_1.x >= ~global3[_wgslsmith_index_u32(u_input.a, 22u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-731f * global4[_wgslsmith_index_u32(u_input.a, 26u)]) + _wgslsmith_f_op_f32(floor(-264f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(91633u, 26u)], 1470f) * _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(35964u, 26u)])))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_1.x, 26u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 26u)])), global4[_wgslsmith_index_u32(~(~35408u), 26u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-527f, _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(var_1.x, 26u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 22u)], 26u)], false)), _wgslsmith_f_op_f32(-1166f * global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(60839u, 22u)], 26u)]), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(60010u, 26u)] - 1000f))), global1.x)));
    let var_4 = all(select(select(select(select(global0[_wgslsmith_index_u32(28417u, 14u)], vec2<bool>(var_0.x, global1.x), true), !vec2<bool>(global1.x, true), global1.x != false), global1.yy, var_0.x), select(!(!vec2<bool>(true, var_0.x)), select(!vec2<bool>(global1.x, true), var_0.zy, func_2().d), true), all(vec3<bool>(true, true, var_0.x & false))));
    global0 = array<vec2<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(var_1.x, 26u)], var_3.x, global4[_wgslsmith_index_u32(39459u, 26u)], 2206f)), true | var_4)))), vec4<f32>(-745f, var_3.x, var_3.x, -1631f))), ~abs(~_wgslsmith_add_vec3_i32(vec3<i32>(72504i, 41716i, 25755i), vec3<i32>(-2147483647i, -1i, 0i))), -1i);
}

