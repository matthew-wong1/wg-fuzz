struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(4294967295u, 1u), vec2<u32>(70455u, 4294967295u), vec2<u32>(45406u, 68217u), vec2<u32>(4294967295u, 21955u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 732u), vec2<u32>(13171u, 4799u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 47356u), vec2<u32>(8165u, 0u), vec2<u32>(0u, 70996u), vec2<u32>(1u, 62845u), vec2<u32>(1u, 46396u), vec2<u32>(4294967295u, 4294967295u));

var<private> global3: array<bool, 22>;

var<private> global4: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(64429i, -40637i, 2147483647i), vec3<i32>(-21492i, -1i, -15137i), vec3<i32>(1909i, 48836i, 12291i), vec3<i32>(1i, 40963i, i32(-2147483648)), vec3<i32>(-40635i, -32429i, 0i), vec3<i32>(22336i, 1i, 28952i), vec3<i32>(36037i, i32(-2147483648), 1i), vec3<i32>(-33387i, -1i, -17096i), vec3<i32>(-1i, -1325i, 1838i), vec3<i32>(-611i, -29665i, i32(-2147483648)), vec3<i32>(-9970i, 51099i, -51598i), vec3<i32>(50909i, 2147483647i, 30980i), vec3<i32>(0i, 0i, 38866i), vec3<i32>(-7222i, 0i, 1i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: bool) -> i32 {
    let var_0 = Struct_2(firstLeadingBit(vec2<i32>(arg_2.x, -1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-217f * 535f) + _wgslsmith_f_op_f32(243f - arg_1.b.x)))));
    return -1i | ~(~(1i | (arg_1.a.x | -15791i)));
}

fn func_3() -> vec2<u32> {
    let var_0 = -1322f;
    var var_1 = Struct_2(reverseBits(_wgslsmith_clamp_vec2_i32(-u_input.a.yz, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.wx) | select(firstTrailingBit(vec2<i32>(23418i, u_input.a.x)), reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)), !vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(step(1f, var_0)))));
    return global2[_wgslsmith_index_u32(77375u, 14u)];
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = ~(~_wgslsmith_mod_u32(108932u, _wgslsmith_dot_vec2_u32(vec2<u32>(19281u, 0u), vec2<u32>(4864u, 0u)))) | 0u;
    let var_1 = vec4<bool>(true, false, !(!(!arg_0.x)) | true, true);
    global0 = select(var_1, !var_1, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~firstLeadingBit(1u), 4294967295u), func_3()), 22u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(step(arg_2.b.x, -1953f))), 808f, _wgslsmith_f_op_f32(floor(arg_1.b.x))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1722f, arg_1.b.x, -753f, arg_2.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-572f, arg_1.b.x, arg_1.b.x, arg_1.b.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-853f, -152f, 1685f, arg_2.b.x)))))));
    var var_3 = _wgslsmith_sub_i32(arg_2.a.x, -2147483647i);
    return select(select(select(var_1, select(var_1, vec4<bool>(var_1.x, var_1.x, global0.x, global0.x), !var_1), vec4<bool>(arg_0.x, any(global0.zy), arg_0.x != false, global0.x)), var_1, vec4<bool>(global0.x, true, global0.x, true)), select(select(select(select(vec4<bool>(global0.x, true, true, arg_0.x), var_1, false), vec4<bool>(false, arg_0.x, true, global3[_wgslsmith_index_u32(22185u, 22u)]), select(var_1, vec4<bool>(true, global0.x, arg_0.x, false), arg_0.x)), vec4<bool>(arg_0.x | arg_0.x, all(var_1), true, false), select(true, true != global3[_wgslsmith_index_u32(68476u, 22u)], global3[_wgslsmith_index_u32(853u, 22u)])), vec4<bool>(any(vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 22u)], var_1.x, global0.x)), arg_0.x, _wgslsmith_f_op_f32(-arg_1.b.x) > _wgslsmith_f_op_f32(-arg_2.b.x), true), true), !select(select(var_1, vec4<bool>(global3[_wgslsmith_index_u32(0u, 22u)], false, false, false), !vec4<bool>(global0.x, false, global3[_wgslsmith_index_u32(4294967295u, 22u)], true)), vec4<bool>(arg_0.x, true, global0.x && arg_0.x, !global0.x), false));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>) -> bool {
    let var_0 = Struct_1(-1i, ~1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1031f, 982f)))))), 1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.c)));
    global3 = array<bool, 22>();
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(var_0.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, var_1.x), vec2<f32>(183f, var_0.c.x), arg_1.x))))))))));
    let var_3 = Struct_2(min(vec2<i32>(-9420i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_0.a), u_input.a.x)), u_input.a.zx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(573f)), _wgslsmith_f_op_f32(sign(var_2.x)), 981f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1713f, 756f, var_0.c.x), vec3<f32>(var_2.x, var_2.x, var_1.x))) - vec3<f32>(1f, 1f, 1f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -201f, 600f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(565f, 113f, 2543f) + vec3<f32>(1000f, 935f, var_0.c.x))))));
    return !(!(any(global0.wyz) & !global3[_wgslsmith_index_u32(var_0.d >> (var_0.b % 32u), 22u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 14>();
    var var_0 = min(19308u, ~(~(~firstLeadingBit(1u))));
    let var_1 = Struct_2(vec2<i32>(func_1(-2147483647i, Struct_2(abs(u_input.a.xz), vec3<f32>(1558f, 623f, 1358f)), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), u_input.a.ywy), firstTrailingBit(-1i)), global0.x), ~(~min(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-261f, -388f), -504f, _wgslsmith_div_f32(-739f, -923f)), vec3<f32>(_wgslsmith_f_op_f32(-633f + 499f), _wgslsmith_f_op_f32(f32(-1f) * -1210f), _wgslsmith_f_op_f32(max(-1112f, -175f)))))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a.x, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-40411i, u_input.a.x, var_1.a.x), vec3<i32>(var_2.a.x, u_input.a.x, u_input.a.x))), func_1(_wgslsmith_add_i32(0i, ~var_2.a.x), Struct_2(vec2<i32>(var_2.a.x, 2147483647i), _wgslsmith_f_op_vec3_f32(sign(var_2.b))), -(global4[_wgslsmith_index_u32(40097u, 14u)] << (vec3<u32>(73294u, 0u, 1u) % vec3<u32>(32u))), global0.x && (var_1.b.x < var_1.b.x))), max(~u_input.a.ywy, vec3<i32>(-1i) * -global4[_wgslsmith_index_u32(40284u, 14u)]));
    global0 = !(!select(vec4<bool>(true, any(vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 22u)], true, true)), 0i == var_2.a.x, global0.x), vec4<bool>(global0.x, true != global3[_wgslsmith_index_u32(35732u, 22u)], var_2.b.x < var_2.b.x, true), global3[_wgslsmith_index_u32(~58599u >> (_wgslsmith_clamp_u32(71319u, 62282u, 20219u) % 32u), 22u)]));
    let var_4 = func_4(!select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 22u)] || global0.x, global0.x, true, u_input.a.x == -1i), select(func_2(vec3<bool>(true, false, global0.x), var_1, Struct_2(var_1.a, vec3<f32>(var_2.b.x, 1388f, 145f))), func_2(vec3<bool>(global0.x, global0.x, false), var_1, var_2), vec4<bool>(global0.x, false, global0.x, false)), select(vec4<bool>(global0.x, global3[_wgslsmith_index_u32(4294967295u, 22u)], global0.x, false), select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], true, true, global3[_wgslsmith_index_u32(73978u, 22u)]), vec4<bool>(true, global0.x, global3[_wgslsmith_index_u32(0u, 22u)], false), vec4<bool>(true, true, global3[_wgslsmith_index_u32(0u, 22u)], true)), var_1.b.x < -290f)), !global0.zxz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1704f, 614f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-396f, var_2.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-569f * -784f) - _wgslsmith_f_op_f32(-var_1.b.x)))), abs(_wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(5453u, 41810u, 0u), vec3<u32>(31342u, 7100u, 0u)), func_2(global0.wxz, var_1, Struct_2(vec2<i32>(var_3.x, -7391i), vec3<f32>(405f, var_2.b.x, var_2.b.x))).zzw), ~vec3<u32>(1u, 1u, 1u))));
}

