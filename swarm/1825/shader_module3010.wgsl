struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<u32>(103653u, 30719u), true, 1101f, vec3<u32>(23102u, 26135u, 68301u), 79132u), Struct_1(vec2<u32>(38464u, 16933u), false, -922f, vec3<u32>(4294967295u, 4294967295u, 4294967295u), 2915u), Struct_1(vec2<u32>(49607u, 1u), false, 686f, vec3<u32>(4294967295u, 1u, 2642u), 0u), Struct_1(vec2<u32>(1u, 4294967295u), false, -203f, vec3<u32>(4294967295u, 77440u, 4294967295u), 49816u), Struct_1(vec2<u32>(15684u, 32587u), true, -3094f, vec3<u32>(1u, 0u, 0u), 0u), Struct_1(vec2<u32>(24408u, 46610u), true, 1196f, vec3<u32>(82208u, 1u, 0u), 4294967295u), Struct_1(vec2<u32>(40602u, 4294967295u), false, -1141f, vec3<u32>(7340u, 0u, 1u), 1u), Struct_1(vec2<u32>(59115u, 1u), false, -1000f, vec3<u32>(33602u, 41633u, 4294967295u), 0u), Struct_1(vec2<u32>(4294967295u, 4294967295u), true, -3170f, vec3<u32>(4294967295u, 4294967295u, 7675u), 1u), Struct_1(vec2<u32>(34780u, 37057u), false, 843f, vec3<u32>(0u, 5294u, 26364u), 4294967295u), Struct_1(vec2<u32>(75650u, 4294967295u), false, 234f, vec3<u32>(20456u, 0u, 4294967295u), 61560u), Struct_1(vec2<u32>(4850u, 1u), true, 1402f, vec3<u32>(0u, 15736u, 0u), 1u), Struct_1(vec2<u32>(133756u, 13710u), true, -1000f, vec3<u32>(13140u, 4294967295u, 1u), 45960u), Struct_1(vec2<u32>(0u, 23605u), false, 1137f, vec3<u32>(21701u, 0u, 5378u), 44778u), Struct_1(vec2<u32>(4294967295u, 7754u), true, 525f, vec3<u32>(18612u, 60748u, 10659u), 107338u), Struct_1(vec2<u32>(52513u, 3404u), true, -1000f, vec3<u32>(1u, 0u, 4272u), 4294967295u), Struct_1(vec2<u32>(56226u, 1u), true, 594f, vec3<u32>(56542u, 1u, 4294967295u), 1u), Struct_1(vec2<u32>(4294967295u, 93881u), true, -1276f, vec3<u32>(61874u, 58103u, 69303u), 43251u), Struct_1(vec2<u32>(0u, 53148u), true, -1167f, vec3<u32>(18734u, 1u, 4294967295u), 1u), Struct_1(vec2<u32>(0u, 4294967295u), true, -1630f, vec3<u32>(31400u, 1u, 33441u), 0u), Struct_1(vec2<u32>(21871u, 1u), true, -857f, vec3<u32>(1u, 1u, 45098u), 4294967295u), Struct_1(vec2<u32>(15525u, 17311u), false, -128f, vec3<u32>(1170u, 70766u, 6511u), 0u));

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_1, 12>;

var<private> global3: vec3<u32> = vec3<u32>(35364u, 24888u, 78403u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    var var_0 = arg_2;
    let var_1 = global2[_wgslsmith_index_u32(0u, 12u)];
    global2 = array<Struct_1, 12>();
    var var_2 = arg_3;
    let var_3 = Struct_2(Struct_1(~(~(global3.yz & vec2<u32>(1u, 40194u))), var_0.a.b, _wgslsmith_f_op_f32(select(-208f, arg_3.a.c, true)), vec3<u32>(var_1.e, var_0.b.d.x, var_1.d.x), ~_wgslsmith_clamp_u32(0u, arg_2.b.a.x, 77824u)), Struct_1(select(~(~var_2.b.d.yy), reverseBits(~var_2.b.d.zx), !(!vec2<bool>(var_2.b.b, var_1.b))), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -986f), vec3<u32>(countOneBits(arg_3.b.d.x), reverseBits(~var_0.a.a.x), _wgslsmith_mult_u32(~0u, ~var_0.a.d.x)), arg_3.a.e));
    return arg_3.b.b;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_3(true, Struct_2(Struct_1(vec2<u32>(abs(1u), 34225u), global3.x <= 4294967295u, arg_0, ~(vec3<u32>(global3.x, 1u, global3.x) >> (vec3<u32>(global3.x, 21713u, 1u) % vec3<u32>(32u))), global3.x), Struct_1(vec2<u32>(1u, ~45559u), global1.x, 1576f, vec3<u32>(_wgslsmith_mod_u32(global3.x, 34011u), 1u, global3.x), ~43100u)), false, func_3(all(!select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, false), true)), -769f, Struct_2(global2[_wgslsmith_index_u32(global3.x, 12u)], Struct_1(min(vec2<u32>(0u, 0u), global3.zy), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global3.x, global3.x), vec3<u32>(1u, global3.x, global3.x)), 1u)), Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, 4294967295u), 12u)], global0[_wgslsmith_index_u32(1u, 22u)])));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.a.c * _wgslsmith_f_op_f32(floor(-496f))), _wgslsmith_f_op_f32(abs(-458f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.c) + _wgslsmith_f_op_f32(-282f - -406f)), 1000f), !(!(false || var_0.a))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1000f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.c, -1906f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.a.c, var_0.b.a.c, false)))) * vec2<f32>(arg_0, -539f))));
    global1 = vec2<bool>(true, true);
    let var_3 = var_0.b.a.d;
    return Struct_2(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(abs(var_3.x), 54901u), max(vec2<u32>(58546u, 33956u), ~vec2<u32>(79389u, 2938u))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1530f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0)))), reverseBits(vec3<u32>(max(var_3.x, var_3.x), ~17349u, var_3.x | var_0.b.a.d.x)), 34695u), global0[_wgslsmith_index_u32(25013u, 22u)]);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: bool) -> vec3<u32> {
    var var_0 = func_2(arg_0.a.c);
    let var_1 = countOneBits(max(min(vec3<u32>(var_0.a.a.x, 26439u, 14628u), select(vec3<u32>(26977u, 7304u, arg_1.b.a.a.x), vec3<u32>(1u, 58628u, global3.x), arg_1.c)), ~vec3<u32>(1u, var_0.b.a.x, 1u)) | ~arg_0.a.d);
    let var_2 = _wgslsmith_add_u32(13755u, ~(~var_0.a.d.x)) < (_wgslsmith_dot_vec4_u32(vec4<u32>(1560u, var_0.a.d.x ^ var_0.b.d.x, firstLeadingBit(4294967295u), ~var_1.x), ~(vec4<u32>(var_0.b.a.x, 0u, 30451u, 1u) ^ vec4<u32>(var_0.a.d.x, global3.x, var_1.x, var_0.a.d.x))) >> (~_wgslsmith_mod_u32(~82242u, countOneBits(66151u)) % 32u));
    var var_3 = arg_0.b.a.x;
    let var_4 = u_input.b;
    return vec3<u32>(~var_0.a.a.x, _wgslsmith_sub_u32(var_0.a.d.x, var_1.x), global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = firstLeadingBit(vec3<u32>(firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(6646u, 79832u, 5147u, global3.x), vec4<u32>(global3.x, 0u, 4294967295u, 4294967295u)), select(vec4<u32>(13401u, 0u, global3.x, 1u), vec4<u32>(0u, global3.x, 31478u, global3.x), true)), _wgslsmith_sub_u32(48662u, 1u)) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, 19000u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(8407u, 15882u, 88838u), vec3<u32>(4294967295u, 3663u, global3.x))));
    global3 = firstLeadingBit(vec3<u32>(~4294967295u, _wgslsmith_mod_u32(0u, 4294967295u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global3.x, 65656u) & (4294967295u << (0u % 32u)), 0u)));
    let var_0 = 530f;
    global3 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(10125u, 3723u, global3.x) >> (vec3<u32>(23879u, global3.x, global3.x) % vec3<u32>(32u)), ~vec3<u32>(40305u, 0u, global3.x))) << (max(_wgslsmith_add_vec3_u32(func_1(Struct_2(Struct_1(global3.zz, false, var_0, vec3<u32>(28852u, 41u, 4294967295u), global3.x), global0[_wgslsmith_index_u32(4294967295u, 22u)]), Struct_3(global1.x, Struct_2(global2[_wgslsmith_index_u32(4294967295u, 12u)], Struct_1(vec2<u32>(2142u, global3.x), global1.x, var_0, vec3<u32>(global3.x, 1u, 9911u), 1824u)), true, true), vec2<bool>(true, true), global1.x) ^ ~vec3<u32>(global3.x, 0u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(global3.x, global3.x, global3.x), vec3<u32>(20557u, 4294967295u, 67192u))), ~vec3<u32>(~4294967295u, 4294967295u ^ global3.x, global3.x)) % vec3<u32>(32u));
    var var_1 = 29507u > countOneBits(global3.x);
    global0 = array<Struct_1, 22>();
    var var_2 = !(!vec2<bool>(true, all(vec2<bool>(global1.x, true)) || global1.x));
    global3 = countOneBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(~global3.x, ~global3.x, _wgslsmith_div_u32(global3.x, global3.x)), vec3<u32>(abs(~global3.x), max(global3.x, ~46434u), firstTrailingBit(_wgslsmith_clamp_u32(27459u, global3.x, 48850u)))));
    let x = u_input.a;
    s_output = StorageBuffer((func_2(_wgslsmith_f_op_f32(-var_0)).a.d.x >> ((firstLeadingBit(4294967295u) << (1u % 32u)) % 32u)) | ~(~(~8164u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1433f, _wgslsmith_f_op_f32(var_0 - 735f), 1f, -518f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1288f, var_0, var_0, -2259f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(732f, var_0, var_0, var_0)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-324f, _wgslsmith_f_op_f32(165f + 1037f), var_0, -152f))))), (i32(-1i) * -32398i) ^ -(~abs(u_input.c.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))));
}

