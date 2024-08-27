struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<bool>(false, false), vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u), true), Struct_1(vec2<bool>(false, false), vec2<u32>(10001u, 9403u), vec2<u32>(130041u, 4294967295u), true), Struct_1(vec2<bool>(true, true), vec2<u32>(0u, 4294967295u), vec2<u32>(38120u, 4294967295u), true), Struct_1(vec2<bool>(false, false), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), true), Struct_1(vec2<bool>(false, true), vec2<u32>(64944u, 4294967295u), vec2<u32>(4294967295u, 0u), false), Struct_1(vec2<bool>(true, false), vec2<u32>(0u, 13047u), vec2<u32>(23260u, 4294967295u), true), Struct_1(vec2<bool>(true, true), vec2<u32>(5303u, 18613u), vec2<u32>(4294967295u, 9242u), true), Struct_1(vec2<bool>(true, false), vec2<u32>(12296u, 58338u), vec2<u32>(5075u, 39948u), false), Struct_1(vec2<bool>(false, false), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u), false), Struct_1(vec2<bool>(true, false), vec2<u32>(4294967295u, 13776u), vec2<u32>(4294967295u, 13064u), false), Struct_1(vec2<bool>(true, true), vec2<u32>(21038u, 1u), vec2<u32>(4294967295u, 40906u), false), Struct_1(vec2<bool>(false, false), vec2<u32>(21247u, 86325u), vec2<u32>(1u, 11258u), false), Struct_1(vec2<bool>(true, true), vec2<u32>(104207u, 38726u), vec2<u32>(57434u, 42502u), false), Struct_1(vec2<bool>(true, false), vec2<u32>(1u, 72952u), vec2<u32>(1u, 67472u), false), Struct_1(vec2<bool>(true, true), vec2<u32>(0u, 0u), vec2<u32>(94362u, 0u), false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_1.x, firstLeadingBit(abs(~arg_1.x))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_1.x, -45083i, 1i, arg_2.x), vec4<i32>(arg_2.x, 36143i, -2147483647i, arg_1.x), _wgslsmith_mult_vec4_i32(vec4<i32>(638i, arg_2.x, 0i, arg_2.x), vec4<i32>(12171i, 2147483647i, arg_2.x, arg_2.x))), select(reverseBits(vec4<i32>(2147483647i, 1i, 2147483647i, 5577i)), -vec4<i32>(1i, 1i, arg_2.x, arg_2.x), select(vec4<bool>(false, global0.d, false, global1.a.x), vec4<bool>(global1.a.x, global1.d, global1.a.x, true), vec4<bool>(global1.a.x, global1.a.x, true, global1.d)))), -2147483647i);
    global0 = Struct_1(vec2<bool>(false, all(global0.a)), ~vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~u_input.a.x), 2927u), global1.c, global0.c.x == ~10685u);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, -773f, 1854f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_3.x, arg_0.x), _wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_f_op_f32(arg_0.x - 2584f))))));
    let var_2 = vec3<bool>(select(global0.d, !any(select(vec4<bool>(global0.d, true, false, false), vec4<bool>(false, true, global1.d, false), vec4<bool>(global0.d, global0.a.x, global1.d, global1.a.x))), (firstTrailingBit(4294967295u) != 4294967295u) != true), all(select(!select(vec4<bool>(true, global0.d, global1.d, global1.d), vec4<bool>(global1.a.x, global1.a.x, global0.a.x, false), vec4<bool>(global1.d, true, true, true)), vec4<bool>(global0.c.x > u_input.a.x, all(vec4<bool>(global0.a.x, false, false, global0.a.x)), global0.a.x, all(global0.a)), (u_input.a.x & 0u) >= ~global0.b.x)), -arg_2.x != var_0);
    let var_3 = Struct_1(vec2<bool>(-407f <= _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1027f), true)), true), firstTrailingBit(select((vec2<u32>(global0.b.x, 51246u) | u_input.a.zz) << (_wgslsmith_mult_vec2_u32(u_input.a.yx, vec2<u32>(0u, global1.b.x)) % vec2<u32>(32u)), vec2<u32>(1u, 1u) << (global1.b % vec2<u32>(32u)), true)), vec2<u32>(_wgslsmith_add_u32(countOneBits(1u), ~0u ^ _wgslsmith_div_u32(0u, u_input.a.x)), ~(~global1.b.x)), true);
    return reverseBits(~u_input.a.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = 1i <= min(1i, -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(64596i, -1i), firstLeadingBit(0i), _wgslsmith_add_i32(-1i, -7133i)));
    let var_1 = _wgslsmith_f_op_f32(floor(1236f));
    let var_2 = ~abs(9232u);
    var var_3 = select(~min(-vec4<i32>(-2147483647i, 6436i, -59744i, 31467i), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-3948i, 2147483647i, 1i, -1i), vec4<i32>(-28886i, 1i, -30076i, -24232i)), -vec4<i32>(0i, -1i, 1i, 43781i), abs(vec4<i32>(0i, 6443i, -9642i, -42533i)))), -(~vec4<i32>(1i, 1i, 1i, 1i)), select(vec4<bool>(true, !global0.d | all(vec4<bool>(arg_2.x, global0.a.x, true, global1.a.x)), true, !arg_2.x | true), vec4<bool>(arg_1.a.x, global0.c.x >= 5397u, true, select(true, all(vec3<bool>(arg_3.a.x, global1.d, arg_1.d)), global0.d)), !vec4<bool>(any(vec3<bool>(global0.d, global0.a.x, global0.d)), arg_0.x > -339f, true, false)));
    let var_4 = _wgslsmith_div_vec4_i32(max(firstLeadingBit(vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x)), vec4<i32>(var_3.x, -26517i, 2147483647i, var_3.x)) & (vec4<i32>(6045i, -2147483647i, var_3.x, var_3.x) ^ (vec4<i32>(var_3.x, var_3.x, var_3.x, 0i) >> (vec4<u32>(global0.b.x, u_input.a.x, arg_3.b.x, u_input.a.x) % vec4<u32>(32u)))), min((vec4<i32>(var_3.x, var_3.x, -15925i, var_3.x) | vec4<i32>(var_3.x, var_3.x, var_3.x, 1i)) << (vec4<u32>(var_2, 1u, u_input.a.x, arg_3.b.x) % vec4<u32>(32u)), -(~vec4<i32>(var_3.x, var_3.x, var_3.x, 19120i)))) & reverseBits(~(-min(vec4<i32>(var_3.x, var_3.x, var_3.x, -2147483647i), vec4<i32>(var_3.x, 61745i, -1i, var_3.x))));
    return countOneBits(_wgslsmith_sub_u32(~1u, ~firstTrailingBit(71735u)));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = arg_0.yww;
    let var_1 = global2[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(856f, -842f, -1929f, -722f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-390f, -366f, 577f, -335f))))), Struct_1(select(var_0.xz, select(var_0.xx, vec2<bool>(global0.d, false), true), vec2<bool>(true, global1.d)), vec2<u32>(func_3(vec2<f32>(242f, 367f), vec2<i32>(0i, 2147483647i), vec3<i32>(-32241i, 58208i, 1i), vec2<f32>(948f, 507f)), select(1u, u_input.a.x, false)), global0.b, true), select(!(!vec2<bool>(var_0.x, false)), vec2<bool>(false, false), false), Struct_1(!(!vec2<bool>(arg_0.x, global0.d)), vec2<u32>(1u, ~1u), vec2<u32>(_wgslsmith_add_u32(global1.b.x, 4294967295u), global0.c.x), true)) ^ firstLeadingBit(0u), 15u)];
    var var_2 = _wgslsmith_div_f32(-877f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(232f)) + 550f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-674f * -116f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(620f, 2354f, var_0.x)) - -584f)))));
    let var_3 = Struct_1(!vec2<bool>(true && any(arg_0.zzy), false), abs(var_1.c), global1.b, true);
    var var_4 = _wgslsmith_add_vec2_u32(~select(var_1.c | vec2<u32>(u_input.a.x, global0.c.x), firstLeadingBit(var_1.b), vec2<bool>(true, true)), select(select(global0.c, firstTrailingBit(vec2<u32>(global0.c.x, 1u)), !(!arg_0.ww)), vec2<u32>(_wgslsmith_mod_u32(~0u, ~global0.c.x), var_1.b.x), !(!select(vec2<bool>(arg_0.x, global1.a.x), vec2<bool>(global0.a.x, arg_0.x), global1.a))));
    return 75526u;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(929f - -264f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1318f))))));
    let var_1 = ~_wgslsmith_add_u32(~(~53626u), global0.b.x);
    var_0 = _wgslsmith_f_op_f32(sign(1723f));
    var var_2 = global1.a;
    global1 = arg_1;
    return vec4<bool>(2147483647i > ~arg_3.x, true, true, false);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: vec2<bool>) -> vec4<i32> {
    var var_0 = !(!select(func_5(func_2(vec4<bool>(true, true, global0.a.x, true)), Struct_1(global0.a, vec2<u32>(u_input.a.x, 6064u), global1.b, global1.d), vec3<u32>(arg_1, u_input.a.x, global1.c.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, arg_2, 0i, arg_2), vec4<i32>(-14207i, 1i, -1i, arg_2), vec4<i32>(arg_2, 9318i, -2147483647i, arg_2))), vec4<bool>(all(vec3<bool>(global0.d, false, global0.a.x)), all(vec3<bool>(true, arg_3.x, true)), !global0.d, all(vec2<bool>(global1.d, false))), select(!vec4<bool>(global1.d, true, true, arg_3.x), vec4<bool>(true, global0.d, true, true), !global1.a.x)));
    global0 = global2[_wgslsmith_index_u32(0u, 15u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-674f))) + _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(835f - 763f)) * -941f);
    var var_2 = Struct_1(vec2<bool>(any(global1.a), !select(false, func_5(u_input.a.x, Struct_1(vec2<bool>(arg_3.x, global1.a.x), vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(arg_1, global0.b.x), false), vec3<u32>(18958u, global0.c.x, global1.c.x), vec4<i32>(arg_2, -20782i, arg_2, arg_2)).x, global1.c.x <= 1u)), vec2<u32>(0u, ~global1.c.x), ~global0.b, -859f == arg_0);
    var var_3 = _wgslsmith_div_vec2_u32(abs(abs(global1.c)), global1.c) & global1.b;
    return vec4<i32>(-32009i, _wgslsmith_add_i32(11146i, -16753i), -_wgslsmith_dot_vec3_i32(reverseBits(-vec3<i32>(arg_2, -2147483647i, arg_2)), select(vec3<i32>(1i, arg_2, -47215i), vec3<i32>(arg_2, arg_2, arg_2), true) ^ (vec3<i32>(-1i, arg_2, 1i) | vec3<i32>(arg_2, arg_2, arg_2))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(188f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(257f - 881f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-720f, 504f)), -801f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1190f + -1732f) + 1000f), 1481f)));
    var_0 = _wgslsmith_f_op_f32(2375f + _wgslsmith_f_op_f32(f32(-1f) * -1239f));
    var var_1 = ~reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), -func_1(-2339f, global0.c.x, -1671i, vec2<bool>(global0.d, global1.d))));
    var var_2 = select(vec2<u32>(global0.b.x, 4294967295u) & ~global0.b, vec2<u32>(func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-784f, -202f, 526f, -1152f) * vec4<f32>(-782f, 3382f, 1062f, -1055f)))), global2[_wgslsmith_index_u32(global0.c.x, 15u)], !select(vec2<bool>(false, true), global1.a, false), Struct_1(!global1.a, global0.b >> (vec2<u32>(u_input.a.x, 14547u) % vec2<u32>(32u)), ~global0.b, global1.a.x)), global0.c.x), select(vec2<bool>(true, true), global1.a, global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, ~var_2.x, 4294967295u, u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-632f, -380f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-424f)) + 1412f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1488f - -1195f)))));
}

