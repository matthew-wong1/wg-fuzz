struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(2103f), Struct_1(-863f), Struct_1(1217f), Struct_1(233f), Struct_1(-1413f), Struct_1(-824f), Struct_1(-1624f), Struct_1(996f), Struct_1(804f), Struct_1(-912f), Struct_1(-1054f), Struct_1(-1181f), Struct_1(-259f), Struct_1(247f), Struct_1(-1537f), Struct_1(-446f), Struct_1(-1174f), Struct_1(557f), Struct_1(986f), Struct_1(998f), Struct_1(-391f), Struct_1(-1377f), Struct_1(-902f), Struct_1(-1251f), Struct_1(1249f), Struct_1(1054f), Struct_1(-709f), Struct_1(176f), Struct_1(-1528f), Struct_1(367f), Struct_1(-658f));

var<private> global2: Struct_1 = Struct_1(-798f);

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    global1 = array<Struct_1, 31>();
    let var_0 = abs(arg_2.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a), 1606f);
    let var_2 = arg_3;
    global0 = Struct_1(global3.a);
    return ((countOneBits(_wgslsmith_mod_u32(0u, var_0)) ^ var_0) == firstTrailingBit(countOneBits(u_input.b))) && any(vec3<bool>(true, true, true));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> bool {
    global1 = array<Struct_1, 31>();
    var var_0 = Struct_1(1f);
    var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) + _wgslsmith_f_op_f32(-arg_2.a)), -501f)));
    var var_1 = true;
    let var_2 = Struct_1(global3.a);
    return func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))), vec3<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(1215f + _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-1114f * _wgslsmith_f_op_f32(global0.a * 1237f))), u_input.c.ywy, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(trunc(var_0.a))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(107f - global2.a))));
    let var_1 = Struct_1(1163f);
    var var_2 = vec4<i32>(-1i << (u_input.b % 32u), 2147483647i, 48687i, -(~(min(u_input.a, 0i) ^ 1i)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.a, global2.a)))))));
    let var_4 = global1[_wgslsmith_index_u32(~(select(~28547u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 23459u, u_input.b), vec3<u32>(51156u, u_input.c.x, u_input.c.x)), !arg_1.x) | 23522u) | firstTrailingBit(~1u), 31u)];
    return Struct_1(_wgslsmith_f_op_f32(floor(var_0)));
}

fn func_5(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = 1011f;
    global3 = global1[_wgslsmith_index_u32(58795u, 31u)];
    var var_1 = all(!select(vec2<bool>(false, false), vec2<bool>(true, true), arg_0 != -53303i)) & true;
    global2 = Struct_1(_wgslsmith_f_op_f32(sign(global0.a)));
    global3 = func_4(Struct_1(-328f), select(vec2<bool>(true, _wgslsmith_f_op_f32(sign(global0.a)) >= -671f), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(true, global3.a != -490f), vec2<bool>(true, true)), vec2<bool>(func_2(func_4(Struct_1(global2.a), vec2<bool>(true, false), vec3<bool>(true, false, false)), abs(arg_0), global1[_wgslsmith_index_u32(u_input.c.x & 4294967295u, 31u)]), any(vec3<bool>(true, true, true)))), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), true), vec3<bool>(true, any(vec2<bool>(false, true)), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), true, true), true)));
    return arg_1.x >> (arg_1.x % 32u);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: vec3<bool>) -> Struct_1 {
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~firstLeadingBit(u_input.b), 11405u), u_input.c.xx), 31u)];
    let var_0 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(27393u, 22515u) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))), u_input.c.yx), u_input.b);
    global0 = global1[_wgslsmith_index_u32(~func_5(u_input.a, ~vec3<u32>(~30094u, 1u, _wgslsmith_div_u32(var_0.x, 11062u)), func_4(global1[_wgslsmith_index_u32(~var_0.x, 31u)], select(arg_2.zy, arg_3.xy, func_2(Struct_1(global2.a), arg_1.x, global1[_wgslsmith_index_u32(var_0.x, 31u)])), vec3<bool>(true, arg_2.x | arg_3.x, arg_3.x))), 31u)];
    global2 = global1[_wgslsmith_index_u32(var_0.x, 31u)];
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -617f))));
    return Struct_1(global3.a);
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = vec3<bool>((false & any(select(vec2<bool>(true, false), vec2<bool>(true, false), false))) & any(vec4<bool>(true, true, true, false)), true, all(vec3<bool>(true, true, true)));
    let var_1 = any(select(vec3<bool>(!all(vec2<bool>(true, true)), var_0.x, false), select(select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, false, true)), select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false)), select(true, false, var_0.x)), select(vec3<bool>(var_0.x, true, false), !vec3<bool>(var_0.x, false, var_0.x), true), !(!var_0.x)), vec3<bool>(select(true, true, var_0.x) && !var_0.x, true, all(vec3<bool>(var_0.x, var_0.x, true)))));
    let var_2 = var_0.x;
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.a - -166f), global2.a), vec2<f32>(-1000f, _wgslsmith_f_op_f32(128f - 1033f)))), _wgslsmith_div_vec3_i32(~firstLeadingBit(~vec3<i32>(arg_0, -1i, -38503i)), -(firstTrailingBit(vec3<i32>(-16904i, u_input.a, 0i)) ^ firstTrailingBit(vec3<i32>(arg_0, 2147483647i, arg_0)))), select(!vec3<bool>(1i > u_input.a, var_0.x, true), vec3<bool>(true, any(select(vec3<bool>(true, var_1, true), vec3<bool>(false, true, false), vec3<bool>(var_0.x, true, var_0.x))), var_0.x), !var_1), vec3<bool>(var_1, var_1, u_input.c.x <= 1u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-596f, global2.a, global2.a) + vec3<f32>(1468f, 1877f, var_3.a)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(616f, global3.a, -635f), vec3<f32>(-1494f, -520f, global2.a)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_div_f32(119f, var_3.a), var_3.a)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-673f, 894f, global3.a), vec3<f32>(global2.a, global3.a, -1000f)))))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global3.a, _wgslsmith_f_op_f32(trunc(176f)))), -199f, arg_3.a) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(785f, arg_3.a, global2.a)), vec3<f32>(global2.a, -847f, var_3.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-639f, arg_1.a, 495f), vec3<f32>(global0.a, -1260f, global0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 31>();
    let var_0 = -38237i;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.c, min(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 4294967295u) ^ u_input.c, ~u_input.c), abs(max(vec4<u32>(62009u, 60757u, 0u, 1516u), u_input.c)) >> (u_input.c % vec4<u32>(32u)))), 31u)];
    let var_2 = firstTrailingBit(u_input.a & (_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, var_0, -2328i), vec3<i32>(0i, var_0, var_0)) & _wgslsmith_add_i32(-1011i, _wgslsmith_add_i32(var_0, 2670i))));
    let var_3 = ~(firstTrailingBit(-vec2<i32>(-1i, -1i)) | _wgslsmith_add_vec2_i32(vec2<i32>(-u_input.a, ~var_2), vec2<i32>(~var_0, 1i)));
    let var_4 = ~1i;
    let var_5 = vec4<i32>(-var_2, ~(-2147483647i), var_4, -(~(-2147483647i)));
    var var_6 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_6(-(var_5.x | 27408i), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1230f, 432f)), min(var_5.zyx, var_5.zxy), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), ~u_input.b, func_1(_wgslsmith_div_vec2_f32(vec2<f32>(325f, -2314f), vec2<f32>(176f, var_1.a)), vec3<i32>(var_5.x, 0i, 7475i), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(423f, 698f, 231f) * vec3<f32>(-1030f, global0.a, global0.a)))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1888f, -1341f, var_1.a))))))), vec3<bool>((_wgslsmith_add_u32(0u, u_input.b) >> (4294967295u % 32u)) < _wgslsmith_div_u32(~u_input.c.x, ~u_input.c.x), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_6(var_2, Struct_1(-1008f), u_input.c.x, func_4(Struct_1(var_6.x), vec2<bool>(true, false), vec3<bool>(true, true, false)))).yy) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-624f, 700f))), vec2<f32>(-1000f, 149f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1301f, -1562f))))), 0i & _wgslsmith_clamp_i32(9199i, -u_input.a, _wgslsmith_dot_vec2_i32(firstTrailingBit(var_3), -vec2<i32>(59241i, var_2))));
}

