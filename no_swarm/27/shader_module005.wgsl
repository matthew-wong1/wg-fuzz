struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(71750u, 1u);

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(667f, -226f), vec2<f32>(-785f, -783f), vec2<f32>(-1766f, -240f), vec2<f32>(-660f, 114f), vec2<f32>(-2260f, -605f), vec2<f32>(-962f, -148f), vec2<f32>(-526f, 459f), vec2<f32>(1000f, 446f), vec2<f32>(227f, -1048f), vec2<f32>(1000f, -848f), vec2<f32>(2140f, -699f), vec2<f32>(-1010f, 840f), vec2<f32>(1149f, -1583f), vec2<f32>(-161f, -1444f), vec2<f32>(-666f, 1065f), vec2<f32>(779f, 290f), vec2<f32>(-219f, 577f), vec2<f32>(-734f, 239f), vec2<f32>(1350f, 632f));

var<private> global3: bool = true;

var<private> global4: vec4<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(~(~(vec3<u32>(11818u, global0.x, arg_3.a) >> (vec3<u32>(4294967295u, arg_2.a.a, 1u) % vec3<u32>(32u)))), ~countOneBits(firstLeadingBit(vec3<u32>(18490u, arg_2.a.a, 10447u)))), -1i);
    global2 = array<vec2<f32>, 19>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_u32(arg_2.a.a | ~4294967295u, _wgslsmith_add_u32(~arg_3.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a, 4294967295u, 20327u, 1u), vec4<u32>(var_0.a, var_0.a, global0.x, 27413u)))), _wgslsmith_add_i32(arg_0.x, 1i)), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.b)) * global4.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(step(arg_2.b, -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b))), 1000f))), vec4<f32>(_wgslsmith_f_op_f32(min(-844f, -1085f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) * _wgslsmith_f_op_f32(step(global4.x, _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(arg_2.b, 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.b - -1626f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(831f - var_1.b), _wgslsmith_f_op_f32(abs(209f))))));
    let var_3 = _wgslsmith_div_i32(-abs(_wgslsmith_add_i32(0i, var_1.a.b) | -2414i), u_input.a);
    return var_2.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = ~arg_0;
    var var_1 = Struct_2(Struct_1(~arg_0.x, countOneBits(-9530i)), _wgslsmith_div_f32(590f, _wgslsmith_f_op_f32(func_3(abs(max(vec4<i32>(-20165i, arg_2.x, arg_1.a.b, -2147483647i), vec4<i32>(arg_2.x, arg_1.a.b, 1i, -2147483647i))), -248f, arg_1, arg_1.a))));
    let var_2 = var_1.a;
    let var_3 = 783f;
    var var_4 = _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1976i, var_2.b, -2147483647i), 3296i) ^ var_2.b), arg_1.a.b);
    return vec4<i32>((max(var_1.a.b, 1i) & min(64507i, -1i)) | 2147483647i, 39152i, -19105i, firstTrailingBit(select(67464i, 1i, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    global1 = func_2(~vec2<u32>(global0.x, ~arg_1.x >> (~arg_1.x % 32u)), Struct_2(arg_0.a, -149f), firstTrailingBit(~abs(global1.zwx)));
    global1 = vec4<i32>(u_input.b & (func_2(~vec2<u32>(46266u, global0.x), Struct_2(arg_0.a, -908f), ~vec3<i32>(0i, 34242i, u_input.b)).x & 2147483647i), firstLeadingBit(u_input.d), _wgslsmith_sub_i32(u_input.c, _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(0i, 0i), global1.ww), vec2<i32>(abs(global1.x), u_input.a))), global1.x);
    var var_0 = arg_0;
    global0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~arg_0.a.a, var_0.a.a), ~_wgslsmith_mult_vec2_u32(arg_1.xx, arg_1.zz));
    global1 = firstTrailingBit(reverseBits(vec4<i32>(_wgslsmith_div_i32(global1.x, -2477i), ~_wgslsmith_mult_i32(arg_0.a.b, var_0.a.b), 21566i, -2147483647i)));
    return Struct_1(arg_1.x, _wgslsmith_dot_vec3_i32(~u_input.e, ~firstTrailingBit(vec3<i32>(6169i, var_0.a.b, 0i))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(Struct_1(global0.x, ~(~select(global1.x, global1.x, arg_0))), arg_1);
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-967f + var_0.b), 1506f, arg_1, _wgslsmith_f_op_f32(floor(714f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(155f, -1000f, 758f, -134f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1137f), _wgslsmith_f_op_f32(sign(global4.x)), _wgslsmith_f_op_f32(-var_0.b)))));
    var var_1 = countOneBits(firstLeadingBit(~(~global1.zzw) << (~vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u))));
    let var_2 = var_0;
    global0 = vec2<u32>(global0.x << (21404u % 32u), 10045u & _wgslsmith_sub_u32(0u, global0.x));
    return 572f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(561f))) * -1000f);
    global4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(598f, global4.x, 169f, -1033f))), vec4<f32>(_wgslsmith_f_op_f32(func_4(true, _wgslsmith_f_op_f32(665f - global4.x), func_1(Struct_2(Struct_1(global0.x, -13591i), 923f), vec3<u32>(global0.x, global0.x, global0.x), true, true))), _wgslsmith_f_op_f32(step(750f, global4.x)), global4.x, global4.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1138f, global4.x, global4.x, -329f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, 813f, 202f, global4.x) - vec4<f32>(global4.x, 628f, 1000f, -2055f))))));
    var_0 = -116f;
    global1 = ~(vec4<i32>(u_input.b, global1.x << (~global0.x % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -2147483647i), global1.xx), -99504i) << ((max(vec4<u32>(global0.x, global0.x, global0.x, 41065u), ~vec4<u32>(1u, global0.x, global0.x, 56420u)) << (vec4<u32>(20904u, 86212u, _wgslsmith_mult_u32(4294967295u, global0.x), 71953u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = func_1(Struct_2(Struct_1(global0.x, _wgslsmith_add_i32(reverseBits(6335i), 0i)), -563f), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.x, global0.x), abs(52810u)), min(_wgslsmith_mult_u32(0u, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 41359u, global0.x, global0.x), vec4<u32>(global0.x, 1u, global0.x, 82945u)))), abs(vec3<u32>(_wgslsmith_div_u32(1u, global0.x), 1u, global0.x))), true, false);
    var var_2 = Struct_2(var_1, -214f);
    var var_3 = abs(firstTrailingBit(countOneBits(vec2<u32>(var_2.a.a, 4294967295u)))) ^ ~abs(min(~vec2<u32>(37766u, 0u), vec2<u32>(var_2.a.a, 44822u)));
    var_3 = ~countOneBits(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 3213u), vec2<u32>(1u, var_2.a.a), vec2<u32>(4294967295u, 114406u)), ~vec2<u32>(var_1.a, 0u)) ^ vec2<u32>(_wgslsmith_mod_u32(global0.x, var_2.a.a), _wgslsmith_add_u32(var_1.a, var_2.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

