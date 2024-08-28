struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(-1i, Struct_3(vec2<bool>(true, true), vec4<bool>(false, true, true, true), -11039i, 1i, vec4<i32>(1i, 0i, 1i, -1i))), Struct_4(-1i, Struct_3(vec2<bool>(false, false), vec4<bool>(false, false, true, false), 18362i, 0i, vec4<i32>(1i, -1i, 1711i, -7661i))), Struct_4(-9793i, Struct_3(vec2<bool>(true, false), vec4<bool>(false, false, false, false), i32(-2147483648), 2147483647i, vec4<i32>(24581i, 40885i, -1i, -35061i))), Struct_4(2147483647i, Struct_3(vec2<bool>(true, true), vec4<bool>(true, false, true, false), 3515i, 16105i, vec4<i32>(-1i, 2395i, 48525i, -66955i))), Struct_4(2147483647i, Struct_3(vec2<bool>(false, false), vec4<bool>(false, false, true, false), 1i, 18331i, vec4<i32>(5935i, 53539i, i32(-2147483648), 0i))), Struct_4(0i, Struct_3(vec2<bool>(false, false), vec4<bool>(true, true, true, false), -1i, -7711i, vec4<i32>(-21165i, i32(-2147483648), -19729i, 1i))), Struct_4(26997i, Struct_3(vec2<bool>(true, false), vec4<bool>(false, false, false, true), 2147483647i, i32(-2147483648), vec4<i32>(44379i, 31093i, 3929i, 19737i))), Struct_4(i32(-2147483648), Struct_3(vec2<bool>(true, true), vec4<bool>(true, true, true, false), -1i, 2147483647i, vec4<i32>(0i, -39889i, 17175i, 2147483647i))), Struct_4(-3322i, Struct_3(vec2<bool>(false, true), vec4<bool>(false, false, false, false), 2147483647i, 7709i, vec4<i32>(2147483647i, -1i, -16805i, 1i))), Struct_4(2147483647i, Struct_3(vec2<bool>(false, false), vec4<bool>(false, true, true, false), 0i, 28622i, vec4<i32>(853i, i32(-2147483648), 46677i, -24212i))), Struct_4(14542i, Struct_3(vec2<bool>(false, true), vec4<bool>(true, false, true, false), 32503i, 2147483647i, vec4<i32>(1i, 1i, -24664i, -1i))), Struct_4(i32(-2147483648), Struct_3(vec2<bool>(true, false), vec4<bool>(false, false, false, false), 4398i, -47012i, vec4<i32>(-8390i, -1i, 19810i, -1i))), Struct_4(1i, Struct_3(vec2<bool>(true, true), vec4<bool>(false, true, false, true), 1i, 0i, vec4<i32>(2147483647i, 13028i, i32(-2147483648), 1i))), Struct_4(i32(-2147483648), Struct_3(vec2<bool>(true, false), vec4<bool>(true, true, false, false), 43184i, i32(-2147483648), vec4<i32>(24283i, 7804i, -26977i, -124i))), Struct_4(56814i, Struct_3(vec2<bool>(false, true), vec4<bool>(true, false, true, true), -1i, 33456i, vec4<i32>(-54952i, i32(-2147483648), 1i, 0i))), Struct_4(-19757i, Struct_3(vec2<bool>(true, false), vec4<bool>(false, true, true, false), -54612i, 3276i, vec4<i32>(-38301i, 69220i, 15884i, -10635i))), Struct_4(2147483647i, Struct_3(vec2<bool>(true, false), vec4<bool>(true, true, false, false), 4013i, 1i, vec4<i32>(46502i, 0i, 71729i, 52171i))));

var<private> global2: array<i32, 29>;

var<private> global3: vec4<f32> = vec4<f32>(618f, 1536f, 355f, -1000f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = max(1i, 0i);
    global3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-421f, 423f, global3.x, -1000f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(729f, 319f, -833f, 2680f))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, -284f, 1000f), vec4<f32>(-1232f, global3.x, global3.x, 193f))))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(656f, -1115f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(step(571f, 1000f))) + global3.x), global3.x, global3.x)));
    var var_1 = Struct_1(u_input.a, vec2<u32>(u_input.a, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.b), vec3<u32>(u_input.a, u_input.a, u_input.b)))), vec4<f32>(946f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2819f, -748f)), global3.x), global3.x));
    var var_2 = arg_1;
    var var_3 = Struct_3(vec2<bool>(true, all(select(vec4<bool>(arg_1.a.x, true, true, arg_0.a.x), !vec4<bool>(true, arg_2.x, arg_0.a.x, false), true))), !select(select(arg_2, select(vec4<bool>(true, true, arg_0.b.x, arg_2.x), arg_0.b, vec4<bool>(false, arg_1.b.x, true, false)), arg_0.b), arg_2, arg_0.b), arg_0.d, _wgslsmith_dot_vec3_i32(~(vec3<i32>(-23181i, u_input.c.x, 29428i) | select(vec3<i32>(global2[_wgslsmith_index_u32(4112u, 29u)], arg_0.d, var_2.d), vec3<i32>(arg_0.d, -1i, var_0), true)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(arg_1.e, vec4<i32>(global2[_wgslsmith_index_u32(var_1.b.x, 29u)], -23709i, 46668i, global2[_wgslsmith_index_u32(45354u, 29u)])), arg_1.c, 2147483647i), 2147483647i, u_input.c.x)), ~arg_0.e >> (vec4<u32>(47347u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.a), select(vec4<u32>(5919u, var_1.b.x, 0u, 14675u), vec4<u32>(var_1.b.x, u_input.a, 63065u, var_1.a), var_2.a.x)), select(43484u, var_1.a, arg_1.a.x), ~(~1u)) % vec4<u32>(32u)));
    return select(vec3<bool>(all(select(arg_1.b.zwz, vec3<bool>(arg_1.b.x, var_2.b.x, arg_2.x), arg_2.xxy)), arg_1.b.x, true), vec3<bool>(true, arg_0.a.x, arg_2.x), select(true, !(!var_3.a.x), any(arg_0.a)) && any(select(!var_3.b.xxw, arg_2.yxw, true)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = array<Struct_4, 17>();
    let var_0 = any(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), func_3(Struct_3(vec2<bool>(false, true), vec4<bool>(true, true, true, false), 0i, -22704i, vec4<i32>(0i, arg_0, 2147483647i, global2[_wgslsmith_index_u32(u_input.a, 29u)])), Struct_3(vec2<bool>(true, true), vec4<bool>(false, false, false, true), arg_0, arg_0, vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 29u)], arg_0, u_input.c.x)), vec4<bool>(false, false, true, false)), true), vec3<bool>(true, true, any(vec3<bool>(true, true, false))), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(25514u, 1u, 1u) & vec3<u32>(u_input.a, 1u, u_input.a)) ^ ~vec3<u32>(u_input.b, 19095u, 82471u), vec3<u32>(_wgslsmith_div_u32(~u_input.a, 11407u), 0u, firstLeadingBit(firstLeadingBit(1u)))), ~(~select(vec3<u32>(4294967295u, u_input.b, 65576u), vec3<u32>(90721u, u_input.b, 0u), var_0)) & abs((vec3<u32>(0u, u_input.b, u_input.a) | vec3<u32>(u_input.a, 51014u, 43805u)) | vec3<u32>(u_input.b, 0u, u_input.a)));
    let var_2 = var_1.x;
    global0 = -global2[_wgslsmith_index_u32(var_2, 29u)];
    return Struct_1(0u ^ var_2, var_1.zz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2766f, global3.x, 174f, global3.x)))));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<u32>) -> Struct_1 {
    global2 = array<i32, 29>();
    let var_0 = 4294967295u;
    var var_1 = false;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(433f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1118f - 468f) * _wgslsmith_f_op_f32(arg_0 - global3.x)), _wgslsmith_f_op_f32(ceil(global3.x))))), _wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) + 681f));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, 156f)));
    return func_2(global2[_wgslsmith_index_u32(arg_1.x, 29u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 29>();
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, -998f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global3.x, global3.x, false))))), _wgslsmith_clamp_vec3_u32((vec3<u32>(u_input.a, u_input.b, u_input.a) >> (vec3<u32>(u_input.a, u_input.b, u_input.b) % vec3<u32>(32u))) << (~vec3<u32>(4294967295u, u_input.b, 1319u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, u_input.b), ~u_input.b, 1u), reverseBits(vec3<u32>(4294967295u, 37670u, 0u)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.a), vec3<u32>(u_input.b, u_input.a, u_input.b)) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(1u, u_input.b)), 1u, 4294967295u) ^ vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 5363u, 0u), vec3<u32>(u_input.b, u_input.b, 20892u)), 0u)), func_1(330f, ~max(vec3<u32>(u_input.b, 1u, 4294967295u), select(vec3<u32>(32288u, u_input.b, 4294967295u), vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<bool>(false, true, false))), ~reverseBits(vec3<u32>(1u, 4294967295u, 65860u))), ~(func_1(global3.x, vec3<u32>(u_input.b, 53884u, u_input.b), vec3<u32>(11076u, 0u, 4294967295u)).a >> (_wgslsmith_div_u32(u_input.b, u_input.a) % 32u)) & abs(select(u_input.b >> (0u % 32u), 53156u, global2[_wgslsmith_index_u32(u_input.a, 29u)] < u_input.c.x)), Struct_1(~(u_input.b | u_input.a) ^ reverseBits(u_input.b | 0u), func_1(global3.x, reverseBits(vec3<u32>(u_input.a, 4333u, u_input.a) << (vec3<u32>(u_input.a, u_input.b, u_input.a) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(55154u, u_input.b, u_input.b)), abs(vec3<u32>(30260u, 29397u, u_input.a)))).b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1231f, global3.x, 137f, global3.x) - vec4<f32>(global3.x, global3.x, 166f, -1325f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, 559f), vec4<f32>(-1582f, 1052f, 1513f, 1000f))))));
    var var_1 = vec4<u32>(var_0.d.a, 36965u, ~(~var_0.b.b.x), ~_wgslsmith_sub_u32(abs(4294967295u), _wgslsmith_mult_u32(reverseBits(4294967295u), select(24074u, var_0.d.b.x, false))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-1176f + var_0.b.c.x))));
    let var_3 = (func_3(Struct_3(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), global2[_wgslsmith_index_u32(u_input.a, 29u)], global2[_wgslsmith_index_u32(u_input.a & var_0.a.a, 29u)], vec4<i32>(global2[_wgslsmith_index_u32(var_0.a.a, 29u)], -2147483647i, global2[_wgslsmith_index_u32(61284u, 29u)], global2[_wgslsmith_index_u32(var_1.x, 29u)])), Struct_3(vec2<bool>(false, true), vec4<bool>(true, true, true, true), 1i, ~(-455i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 54963i, u_input.c.x, 1i), vec4<i32>(-1i, u_input.c.x, 2147483647i, global2[_wgslsmith_index_u32(var_1.x, 29u)]))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), all(vec4<bool>(false, true, false, true)))).x || true) | true;
    global2 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.yyx | ~(vec3<u32>(u_input.a, var_1.x, u_input.a) | var_1.yxy), var_1.zyx << ((var_1.wyw >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c, u_input.a, u_input.b), vec3<u32>(0u, 1u, 8984u)) % vec3<u32>(32u))) % vec3<u32>(32u)), all(vec4<bool>(true, !var_3, select(var_3, var_3, false), true))), _wgslsmith_dot_vec3_u32(vec3<u32>(func_1(global3.x, vec3<u32>(0u, 69159u, 10912u), vec3<u32>(4294967295u, 55477u, u_input.b)).b.x >> (0u % 32u), var_1.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.b.a, 0u), var_1.zzz), vec3<u32>(1u, u_input.a, 50579u))), ~(~reverseBits(var_1.wzx))), 1i >> (abs(var_1.x) % 32u), select(_wgslsmith_div_vec4_i32(-(~vec4<i32>(2147483647i, u_input.c.x, 30249i, -5574i)), -_wgslsmith_div_vec4_i32(vec4<i32>(92888i, 1i, 2147483647i, global2[_wgslsmith_index_u32(25440u, 29u)]), vec4<i32>(u_input.c.x, u_input.c.x, -17771i, 35624i))), -(~(-vec4<i32>(u_input.c.x, -1i, u_input.c.x, 2147483647i))), vec4<bool>(var_3, true, !var_3, true & any(vec3<bool>(false, var_3, false)))));
}

