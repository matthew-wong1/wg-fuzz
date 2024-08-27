struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32;

var<private> global2: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(148f, -859f), vec2<f32>(-764f, -616f), vec2<f32>(-1983f, 1113f), vec2<f32>(902f, 628f), vec2<f32>(-568f, 2268f), vec2<f32>(189f, -1358f), vec2<f32>(-320f, 737f), vec2<f32>(-1800f, 509f), vec2<f32>(575f, 1397f), vec2<f32>(1000f, 284f), vec2<f32>(1000f, 309f), vec2<f32>(-700f, -2009f), vec2<f32>(-1345f, 1800f), vec2<f32>(-594f, 1000f), vec2<f32>(252f, 310f), vec2<f32>(-2135f, 640f), vec2<f32>(497f, 840f), vec2<f32>(-1000f, -1917f), vec2<f32>(-749f, 1214f));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = u_input.d;
    var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a.xxw - arg_0.a.zyw) + _wgslsmith_f_op_vec3_f32(arg_0.a.wyz + arg_0.a.ywz)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-465f, 1000f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, arg_2))) - global2[_wgslsmith_index_u32(min(arg_0.c, _wgslsmith_sub_u32(7050u, 1u)), 19u)]), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(var_1.yy)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_0.a.ww * vec2<f32>(277f, arg_1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(587f, 694f) * arg_0.a.yy))))))), global2[_wgslsmith_index_u32(55221u, 19u)], vec2<bool>(all(arg_0.b.yyy), all(arg_0.b.yxy))));
    let var_3 = Struct_4(!vec2<bool>(arg_0.b.x, arg_0.b.x), Struct_3(Struct_1(107675u, arg_2)));
    return var_0.x >> (~39745u % 32u);
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: bool) -> vec4<u32> {
    global1 = ~max(4294967295u, max(~27304u, ~7987u)) & u_input.e.x;
    var var_0 = abs(max(_wgslsmith_clamp_vec2_u32(u_input.d.wy, ~vec2<u32>(u_input.d.x, 0u), vec2<u32>(u_input.a, arg_0)), ~abs(vec2<u32>(arg_0, arg_0)) | (_wgslsmith_mod_vec2_u32(vec2<u32>(11596u, 57554u), vec2<u32>(88715u, 4294967295u)) ^ (vec2<u32>(36448u, 4294967295u) >> (u_input.d.xx % vec2<u32>(32u))))));
    let var_1 = Struct_3(Struct_1(u_input.d.x, _wgslsmith_f_op_f32(-205f + 785f)));
    var var_2 = 10685u;
    let var_3 = any(select(vec3<bool>(all(!vec2<bool>(arg_2, arg_2)), arg_2, true), select(vec3<bool>(var_0.x > 1u, arg_2, true), select(select(vec3<bool>(false, false, arg_2), vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, arg_2, true)), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, true, false)), arg_2), !(!arg_2)), vec3<bool>(all(select(vec4<bool>(arg_2, true, false, true), vec4<bool>(arg_2, false, false, true), vec4<bool>(false, arg_2, arg_2, true))), true, var_1.a.a != ~arg_0)));
    return vec4<u32>(var_1.a.a, 4294967295u, var_0.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(~u_input.d.xx, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 0u), u_input.e.xy, u_input.e.yz))) & 4294967295u);
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(func_4(func_3(Struct_2(vec4<f32>(1062f, -224f, -623f, -632f), vec4<bool>(false, false, false, false), u_input.a), Struct_1(u_input.d.x, 895f), 791f, 912f), countOneBits(arg_0.xw), false), u_input.d)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.b), 74380u));
    var var_0 = Struct_1(702u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(180f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-971f, -937f)))), true)));
    var var_1 = !select(true, ~_wgslsmith_dot_vec4_u32(vec4<u32>(28655u, u_input.d.x, 12583u, 4451u), vec4<u32>(10312u, u_input.e.x, u_input.e.x, 50981u)) > firstTrailingBit(_wgslsmith_add_u32(var_0.a, 15245u)), var_0.a < 4902u);
    let var_2 = _wgslsmith_mod_vec4_u32(~firstLeadingBit(~(u_input.d << (u_input.d % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_mod_u32(~73827u, 24859u), func_4(1u, arg_0.xw, false).x, 4294967295u, _wgslsmith_div_u32(28116u, u_input.a) & 29358u) >> (func_4(func_4(func_4(34940u, vec2<i32>(51902i, u_input.c), true).x, arg_0.wz, all(vec3<bool>(true, true, true))).x, arg_0.zw, any(vec4<bool>(false, true, false, false))) % vec4<u32>(32u)));
    global2 = array<vec2<f32>, 19>();
    return _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(452f + var_0.b));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_3 {
    global0 = u_input.e.x;
    global0 = 0u;
    var var_0 = -725f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(0i, -21097i, arg_0.x, 20557i) << (vec4<u32>(99582u, 32007u, 0u, 138278u) % vec4<u32>(32u)))) - 178f)) * -615f);
    var var_1 = !all(select(select(!vec3<bool>(arg_2.x, true, arg_2.x), select(vec3<bool>(false, true, true), vec3<bool>(true, arg_2.x, false), true), true), !select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(false, true, true), vec3<bool>(arg_2.x, false, true)), vec3<bool>(arg_2.x, arg_2.x, true)));
    return Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(60560u, 46202u, 0u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 11207u, arg_1.x, u_input.d.x), u_input.d)), firstTrailingBit(abs(vec4<u32>(arg_1.x, u_input.d.x, u_input.e.x, 9275u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1229f, _wgslsmith_f_op_f32(select(-293f, -373f, arg_2.x))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-587f, 1000f))))));
}

fn func_5(arg_0: Struct_5) -> vec3<f32> {
    global0 = firstTrailingBit(1u);
    global2 = array<vec2<f32>, 19>();
    var var_0 = Struct_2(vec4<f32>(arg_0.a.a.b, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.a.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(sign(-175f))), !(!(!select(vec4<bool>(true, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(false, arg_0.d, true, arg_0.d), vec4<bool>(true, false, arg_0.d, arg_0.d)))), u_input.d.x);
    var var_1 = arg_0;
    var var_2 = func_1(vec2<i32>(-u_input.c, ~max(~u_input.c, u_input.c)), u_input.d, var_0.b.zw).a;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1942f, 971f) + var_0.a.xyx))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, var_1.a.a.b, 484f)))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.a.x, var_2.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -316f);
    global0 = u_input.e.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_5(Struct_5(func_1(select(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, 11384i), vec2<bool>(false, true)), vec4<u32>(1u, 87275u, 0u, 37318u), vec2<bool>(true, true)), vec2<u32>(0u, ~110234u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1843f, 1153f, var_0))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, -1049f, var_0)))), _wgslsmith_clamp_u32(24766u, 4294967295u, 73157u) < 48108u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec3_f32(func_5(Struct_5(Struct_3(Struct_1(79541u, 1000f)), u_input.e.zy, vec3<f32>(-966f, var_0, var_0), false))).x, _wgslsmith_div_f32(-430f, -148f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_1.x, -140f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 590f) - vec3<f32>(var_0, -960f, var_0))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1362f, var_0, var_1.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-438f, 1000f, var_0), vec3<f32>(var_0, -614f, var_1.x)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, 1137f, 849f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(firstLeadingBit(-min(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(1i, u_input.c, u_input.c, 2147483647i))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-76669i, u_input.c, -18684i, u_input.c), vec4<i32>(u_input.c, 1i, 16782i, -951i)) | min(vec4<i32>(-1i, -2147483647i, 3162i, -37707i), vec4<i32>(u_input.c, u_input.c, -19794i, -8115i))), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-16785i, -2401i, 3446i, u_input.c), abs(vec4<i32>(-68063i, -14832i, u_input.c, u_input.c))))), func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x & 1u, 4294967295u << (u_input.d.x % 32u)), (vec2<u32>(55715u, 25313u) >> (u_input.d.xz % vec2<u32>(32u))) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(337u, 4294967295u), vec2<u32>(4294967295u, u_input.d.x))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-3403i, -2147483647i), vec2<i32>(u_input.c, 1i)), firstTrailingBit(1i)), !any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false))), _wgslsmith_f_op_f32(sign(-508f)));
}

