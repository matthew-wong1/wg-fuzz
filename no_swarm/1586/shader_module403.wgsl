struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<f32>(-1782f, 529f, -1000f)), Struct_1(vec3<f32>(1502f, 1290f, 199f)), Struct_1(vec3<f32>(1220f, 1410f, 1000f)), Struct_1(vec3<f32>(-111f, 542f, -1354f)), Struct_1(vec3<f32>(686f, 221f, 1705f)), Struct_1(vec3<f32>(692f, -1000f, -167f)), Struct_1(vec3<f32>(542f, -714f, -1246f)), Struct_1(vec3<f32>(-538f, -531f, -404f)), Struct_1(vec3<f32>(1056f, -138f, -381f)), Struct_1(vec3<f32>(-395f, -222f, -442f)), Struct_1(vec3<f32>(-1385f, -725f, -1428f)), Struct_1(vec3<f32>(294f, 1812f, -456f)), Struct_1(vec3<f32>(1410f, -1016f, -1517f)), Struct_1(vec3<f32>(736f, -606f, 1154f)), Struct_1(vec3<f32>(2294f, 1000f, -883f)), Struct_1(vec3<f32>(-1159f, 1000f, -502f)), Struct_1(vec3<f32>(148f, 1000f, -1243f)), Struct_1(vec3<f32>(718f, 1686f, -965f)), Struct_1(vec3<f32>(-2524f, -2184f, 1088f)), Struct_1(vec3<f32>(-1117f, -474f, -1058f)), Struct_1(vec3<f32>(-125f, -1194f, 1100f)), Struct_1(vec3<f32>(112f, 1136f, 958f)), Struct_1(vec3<f32>(-155f, -661f, -206f)), Struct_1(vec3<f32>(-2509f, -329f, -326f)), Struct_1(vec3<f32>(1808f, -966f, 1000f)), Struct_1(vec3<f32>(-717f, -211f, -1202f)));

var<private> global1: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(1084f, -211f, 1482f, -566f), vec4<f32>(-1000f, 177f, -717f, -1181f));

var<private> global2: array<f32, 27> = array<f32, 27>(-2010f, 1044f, -393f, -439f, 214f, 286f, -303f, 1347f, -174f, -798f, -1255f, -715f, -941f, -740f, -751f, -468f, -977f, -1155f, -378f, 936f, 1000f, 277f, -1840f, -726f, -811f, -868f, -378f);

var<private> global3: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: u32) -> bool {
    let var_0 = !(!(!arg_2.x)) | false;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x * -1019f), global2[_wgslsmith_index_u32(30995u, 27u)]), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(24241u, 0u), 27u)], _wgslsmith_f_op_f32(-arg_0.a.x)));
    global1 = array<vec4<f32>, 2>();
    var var_2 = any(select(vec2<bool>(true, any(!arg_2)), arg_2.yx, arg_2.yy));
    global3 = var_1.a.x;
    return !(!(arg_3 != _wgslsmith_dot_vec4_u32(vec4<u32>(27423u, arg_3, 0u, 67222u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4917u, u_input.a, 89146u), vec4<u32>(arg_3, u_input.a, arg_3, 33416u)))));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = vec3<i32>(u_input.b, firstTrailingBit(-1i), _wgslsmith_mult_i32(min(max(u_input.b, u_input.b), u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -23493i, arg_0), vec3<i32>(u_input.b, 2147483647i, -2147483647i)) & _wgslsmith_add_i32(arg_0, -2857i))) >> (~vec3<u32>(u_input.a, 28446u | u_input.a, ~_wgslsmith_div_u32(u_input.a, u_input.a)) % vec3<u32>(32u));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, abs(_wgslsmith_add_u32(u_input.a, ~u_input.a))), 26u)];
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(281f - -1299f)));
    let var_2 = vec3<u32>(22250u, max(u_input.a, ~4294967295u), ~(~(u_input.a << (4294967295u % 32u))));
    let var_3 = Struct_1(var_1.a);
    return select(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a - vec3<f32>(1000f, -1174f, global2[_wgslsmith_index_u32(38742u, 27u)]))), vec3<u32>(u_input.a, var_2.x, 23743u), vec3<bool>(all(vec2<bool>(true, true)), true, -228f >= _wgslsmith_f_op_f32(-var_1.a.x)), select(4294967295u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, 41337u, u_input.a)), ~var_2), true)), all(vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, true)))), !(!(!func_3(global0[_wgslsmith_index_u32(var_2.x, 26u)], var_2, vec3<bool>(true, true, false), 53637u))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    global2 = array<f32, 27>();
    let var_0 = u_input.a;
    var var_1 = select(vec3<bool>(func_2(arg_0), ~_wgslsmith_sub_u32(arg_1.x, var_0) > abs(var_0), false), vec3<bool>(true, true, true), select(vec3<bool>(any(vec2<bool>(false, true)), !all(vec4<bool>(true, true, false, false)), select(true, all(vec2<bool>(false, true)), true)), vec3<bool>(true, true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false))), vec3<bool>(true, false, true)));
    let var_2 = select(var_1.yy, vec2<bool>(true, func_3(global0[_wgslsmith_index_u32(~arg_1.x >> (10923u % 32u), 26u)], ~vec3<u32>(1u, 99671u, var_0), select(select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), !vec3<bool>(var_1.x, var_1.x, true), !var_1.x), arg_1.x)), true);
    var var_3 = _wgslsmith_clamp_vec4_u32(select(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_0, 1u), ~vec4<u32>(4294967295u, arg_1.x, 9120u, var_0)), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_1.x, 2427u, arg_1.x), vec4<u32>(1u, u_input.a, arg_1.x, 8527u)) >> (vec4<u32>(arg_1.x, var_0, u_input.a, 14065u) % vec4<u32>(32u))), vec4<bool>(var_1.x, !all(vec3<bool>(var_2.x, true, var_2.x)), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(4294967295u, 27u)])) == _wgslsmith_div_f32(-645f, global2[_wgslsmith_index_u32(15104u, 27u)]), true)), _wgslsmith_mod_vec4_u32(vec4<u32>(abs(var_0 | var_0), (25199u & u_input.a) & max(1u, 1u), _wgslsmith_clamp_u32(~0u, var_0, 34480u), _wgslsmith_dot_vec2_u32(arg_1.zy, vec2<u32>(82403u, 24784u)) | arg_1.x), _wgslsmith_mult_vec4_u32(min(vec4<u32>(var_0, var_0, 43695u, arg_1.x), abs(vec4<u32>(48929u, u_input.a, 52234u, arg_1.x))), ~select(vec4<u32>(var_0, 8210u, u_input.a, arg_1.x), vec4<u32>(7995u, 26076u, arg_1.x, var_0), true))), (firstTrailingBit(vec4<u32>(var_0, 4294967295u, 6655u, 17223u)) >> (~max(vec4<u32>(var_0, 64410u, u_input.a, 9472u), vec4<u32>(55175u, 32899u, u_input.a, arg_1.x)) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_add_u32(4294967295u, ~u_input.a), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0, 1u), 1u), reverseBits(abs(arg_1.x)), u_input.a));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1704f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(649f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1536f, global2[_wgslsmith_index_u32(4294967295u, 27u)])), global2[_wgslsmith_index_u32(abs(arg_1.x), 27u)]))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> i32 {
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -320f), 2183f, false)), 1700f, false));
    let var_0 = func_1(2147483647i, _wgslsmith_sub_vec3_u32(~max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 45706u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(arg_2.x, 26116u, 1u)), vec3<u32>(arg_2.x, arg_2.x, 4294967295u)), vec3<u32>(arg_2.x, arg_2.x << (max(u_input.a, u_input.a) % 32u), _wgslsmith_mult_u32(arg_2.x, 1702u))));
    let var_1 = var_0;
    let var_2 = ~_wgslsmith_sub_vec3_u32(~select(select(vec3<u32>(u_input.a, arg_2.x, arg_2.x), vec3<u32>(arg_2.x, u_input.a, u_input.a), true), ~vec3<u32>(0u, u_input.a, u_input.a), true), ~(~vec3<u32>(u_input.a, 43837u, 23102u)));
    var var_3 = select(min(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.a, 29844u, 1u, var_2.x), vec4<u32>(arg_2.x, u_input.a, 1u, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, var_2.x, 1u, var_2.x), vec4<u32>(4294967295u, arg_2.x, arg_2.x, 4294967295u), vec4<u32>(var_2.x, 24098u, 53501u, u_input.a))), select(vec4<u32>(var_2.x, var_2.x, arg_2.x, var_2.x), select(vec4<u32>(4900u, 4294967295u, 1u, arg_2.x), vec4<u32>(var_2.x, arg_2.x, u_input.a, 124667u), true), select(false, true, false))), vec4<u32>(reverseBits(~56167u), 1u, 1u, select(89211u, countOneBits(0u), all(vec2<bool>(true, true))))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_2.x, 36306u, arg_2.x) << (vec4<u32>(var_2.x, var_2.x, 53614u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(57753u, 87578u, arg_2.x, u_input.a)), vec4<u32>(~u_input.a, 1u, _wgslsmith_mod_u32(0u, 25860u), _wgslsmith_mult_u32(arg_2.x, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, var_2.x, 1u, var_2.x), vec4<u32>(194u, 9289u, 10042u, 4294967295u))), select(vec4<bool>(true, true, true, true), vec4<bool>(func_2(-25716i ^ u_input.b), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true))), true), 0u >= ~var_2.x));
    return ~_wgslsmith_dot_vec2_i32(vec2<i32>(min(~u_input.b, -30407i), u_input.b), vec2<i32>(52089i, min(abs(2147483647i), ~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 2>();
    global3 = -357f;
    global0 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, u_input.b, u_input.b) ^ vec4<i32>(-1i, 2147483647i, u_input.b, -2991i), vec4<i32>(2147483647i, -14298i, u_input.b, 0i)) ^ u_input.b, func_4(func_1(u_input.b, reverseBits(vec3<u32>(u_input.a, 28648u, 4294967295u))), global2[_wgslsmith_index_u32(u_input.a, 27u)], ~_wgslsmith_div_vec2_u32(vec2<u32>(10461u, 16u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.a, 27u)]))), u_input.b, -u_input.b), min(vec4<i32>(-7093i, -u_input.b, min(0i, _wgslsmith_add_i32(u_input.b, -1i)), 45710i), firstLeadingBit((vec4<i32>(1i, -21836i, -7573i, u_input.b) ^ vec4<i32>(u_input.b, 2147483647i, -1i, 4829i)) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, 1i), vec4<i32>(1i, -1054i, 0i, -6234i)))), -abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, 0i, -9401i)) << (vec4<u32>(u_input.a, 35193u, 1u, 48404u) % vec4<u32>(32u))));
    global1 = array<vec4<f32>, 2>();
    var var_1 = vec4<bool>(all(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))), true, true, !any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))) || true);
    var var_2 = func_1(-1i, vec3<u32>(~4294967295u, u_input.a, _wgslsmith_div_u32(u_input.a, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(~reverseBits(var_0.x), u_input.b, var_0.x, -2147483647i)));
}

