struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec2<i32>(-7339i, 51595i), true, Struct_1(true, -22920i, vec3<u32>(4294967295u, 0u, 1u), 30893i, vec4<i32>(2147483647i, 1i, i32(-2147483648), 56571i)), -1549f, -433f), Struct_3(vec2<i32>(1i, i32(-2147483648)), false, Struct_1(true, 21034i, vec3<u32>(2567u, 57778u, 1u), 9243i, vec4<i32>(0i, 0i, -1i, 2147483647i)), -634f, 366f), Struct_3(vec2<i32>(16627i, -4260i), false, Struct_1(true, 1i, vec3<u32>(4294967295u, 1u, 0u), 71242i, vec4<i32>(-82021i, 0i, 30601i, -10957i)), -430f, -136f), Struct_3(vec2<i32>(1i, 2147483647i), true, Struct_1(true, -9593i, vec3<u32>(1u, 26877u, 23127u), -49871i, vec4<i32>(1i, 14018i, -25199i, 0i)), -240f, -2774f), Struct_3(vec2<i32>(1i, 14182i), true, Struct_1(true, 1i, vec3<u32>(4294967295u, 1u, 14244u), 0i, vec4<i32>(-54375i, i32(-2147483648), 26733i, -31625i)), -163f, -268f), Struct_3(vec2<i32>(2147483647i, -4208i), true, Struct_1(true, 0i, vec3<u32>(26121u, 0u, 16561u), -14945i, vec4<i32>(2147483647i, 0i, -39606i, -65486i)), 1738f, -944f), Struct_3(vec2<i32>(41265i, 0i), false, Struct_1(false, 46806i, vec3<u32>(3416u, 0u, 47288u), -10267i, vec4<i32>(-19007i, -44582i, 14255i, 6576i)), -209f, -344f), Struct_3(vec2<i32>(-33303i, -1933i), false, Struct_1(true, 0i, vec3<u32>(17795u, 1u, 31979u), 2147483647i, vec4<i32>(i32(-2147483648), 2147483647i, 4240i, 1i)), -351f, -407f), Struct_3(vec2<i32>(-1i, 1i), true, Struct_1(false, -85615i, vec3<u32>(4294967295u, 0u, 30938u), 2147483647i, vec4<i32>(11850i, 42952i, 22648i, -24888i)), -766f, 1063f), Struct_3(vec2<i32>(36160i, -1i), false, Struct_1(true, 0i, vec3<u32>(4294967295u, 34533u, 31167u), 1i, vec4<i32>(20042i, 16367i, 0i, 2147483647i)), 142f, 1369f), Struct_3(vec2<i32>(-5098i, 2147483647i), true, Struct_1(false, 35193i, vec3<u32>(0u, 0u, 43100u), 2794i, vec4<i32>(1i, i32(-2147483648), -1i, -13633i)), 1068f, -1720f), Struct_3(vec2<i32>(2147483647i, 45223i), false, Struct_1(false, 1i, vec3<u32>(0u, 1u, 18172u), 25059i, vec4<i32>(-1i, -1062i, 2147483647i, 0i)), -635f, -247f), Struct_3(vec2<i32>(2147483647i, i32(-2147483648)), true, Struct_1(false, 11359i, vec3<u32>(4294967295u, 0u, 112078u), 0i, vec4<i32>(1i, -14034i, 2147483647i, -40826i)), -1084f, 990f), Struct_3(vec2<i32>(-76i, 0i), false, Struct_1(true, -9560i, vec3<u32>(1u, 0u, 26531u), -1i, vec4<i32>(-16033i, 2147483647i, 1i, 15826i)), -204f, -571f), Struct_3(vec2<i32>(1i, 22413i), false, Struct_1(false, 0i, vec3<u32>(69294u, 17590u, 4294967295u), 30617i, vec4<i32>(47100i, 42065i, i32(-2147483648), 0i)), 309f, 1073f), Struct_3(vec2<i32>(-1i, i32(-2147483648)), true, Struct_1(true, 0i, vec3<u32>(0u, 50020u, 2203u), -868i, vec4<i32>(-74301i, 1i, -1i, -42075i)), -302f, 1731f), Struct_3(vec2<i32>(1i, 13934i), false, Struct_1(false, -24761i, vec3<u32>(1u, 42056u, 20069u), i32(-2147483648), vec4<i32>(1i, 12021i, i32(-2147483648), 0i)), 1875f, -349f), Struct_3(vec2<i32>(2147483647i, -1i), false, Struct_1(true, 22763i, vec3<u32>(0u, 4294967295u, 0u), i32(-2147483648), vec4<i32>(-36684i, 0i, 2147483647i, 12849i)), 321f, 951f));

var<private> global2: vec2<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    global1 = array<Struct_3, 18>();
    let var_0 = global2.x;
    global2 = firstLeadingBit(vec2<i32>(1i, ~(-global2.x)) ^ abs(max(min(u_input.b.yy, u_input.b.xy), vec2<i32>(-3246i, -2147483647i))));
    var var_1 = ~(89426i << (u_input.a % 32u));
    let var_2 = Struct_1(false, i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, global2.x), ~u_input.b.yy), ~(~max(vec3<u32>(u_input.a, u_input.a, 13628u), vec3<u32>(u_input.a, u_input.a, 0u)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 49412u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)) % vec3<u32>(32u))), -54634i, vec4<i32>(global2.x, _wgslsmith_sub_i32(global2.x, 71783i), -29226i, _wgslsmith_sub_i32(-min(1i, global2.x), 1i)));
    return var_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(1u, arg_0.a.c.x), countOneBits(u_input.a)), ~(5552u & arg_1));
    let var_1 = Struct_3(_wgslsmith_sub_vec2_i32(arg_0.a.e.xx, -(vec2<i32>(u_input.b.x, u_input.b.x) & vec2<i32>(35702i, 0i)) << (abs(vec2<u32>(var_0, 100938u)) % vec2<u32>(32u))), ~_wgslsmith_dot_vec3_u32(abs(arg_0.a.c), arg_0.a.c << (arg_2 % vec3<u32>(32u))) != func_3(vec3<f32>(1f, -1719f, -917f)).x, arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f)) * _wgslsmith_f_op_f32(trunc(707f))), 1000f);
    return 42056u >> (var_1.c.c.x % 32u);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec4<bool>) -> bool {
    let var_0 = u_input.a;
    let var_1 = func_4(Struct_2(Struct_1(true, u_input.b.x, _wgslsmith_sub_vec3_u32(func_3(global0[_wgslsmith_index_u32(var_0, 5u)]), vec3<u32>(var_0, 1u, var_0)), ~global2.x, -vec4<i32>(global2.x, 63525i, 9961i, -32665i) << ((vec4<u32>(60890u, var_0, 20374u, 4294967295u) >> (vec4<u32>(u_input.a, 0u, 0u, var_0) % vec4<u32>(32u))) % vec4<u32>(32u)))), abs(reverseBits(~abs(var_0))), select(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 63503u)), max(vec3<u32>(39931u, u_input.a, 4294967295u), vec3<u32>(4294967295u, u_input.a, 0u))), vec3<u32>(28424u, u_input.a, 1u)), vec3<u32>(36278u, ~50726u, ~var_0), false));
    global0 = array<vec3<f32>, 5>();
    var var_2 = reverseBits(firstTrailingBit(~(~(~vec2<u32>(0u, var_0)))));
    var var_3 = global0[_wgslsmith_index_u32(var_1, 5u)];
    return !(!arg_2.x) || true;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: u32) -> f32 {
    var var_0 = arg_0.e;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1754f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_1.x)), !((true | arg_0.a) && false)))));
    var_0 = _wgslsmith_clamp_vec4_i32(select(arg_2, -vec4<i32>(global2.x, global2.x, 0i, ~var_0.x), select(!(!vec4<bool>(arg_0.a, true, arg_0.a, true)), !vec4<bool>(false, arg_0.a, true, true), !vec4<bool>(false, false, arg_0.a, false))), firstTrailingBit(arg_0.e & arg_0.e), select(_wgslsmith_clamp_vec4_i32(arg_0.e, min(firstTrailingBit(vec4<i32>(-1i, arg_2.x, arg_2.x, u_input.b.x)), ~vec4<i32>(0i, u_input.b.x, 7762i, 32307i)), _wgslsmith_sub_vec4_i32(vec4<i32>(17026i, u_input.b.x, global2.x, var_0.x) & arg_2, arg_0.e)), -max(vec4<i32>(4332i, u_input.b.x, -1i, 0i) >> (vec4<u32>(arg_3, 0u, u_input.a, arg_0.c.x) % vec4<u32>(32u)), arg_2), select(vec4<bool>(func_2(vec3<f32>(939f, 899f, var_1), arg_1.wz, vec4<bool>(true, true, true, arg_0.a)), arg_0.a, true, any(vec3<bool>(arg_0.a, true, false))), !select(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), vec4<bool>(false, arg_0.a, arg_0.a, false), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), true)));
    let var_2 = arg_1.yw;
    var var_3 = select(var_0.x, 1i ^ u_input.b.x, _wgslsmith_f_op_f32(abs(arg_1.x)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -474f)));
    return 1f;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_5(Struct_1(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1016f, -2339f) + global0[_wgslsmith_index_u32(u_input.a, 5u)]), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0))), vec4<bool>(true, false, false, true)), -_wgslsmith_dot_vec3_i32(vec3<i32>(154i, 0i, -2147483647i), u_input.b), (vec3<u32>(u_input.a, u_input.a, 0u) ^ vec3<u32>(u_input.a, u_input.a, 0u)) << (~vec3<u32>(u_input.a, u_input.a, 3861u) % vec3<u32>(32u)), min(~u_input.b.x, u_input.b.x), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, global2.x, global2.x, -1i), vec4<i32>(1369i, u_input.b.x, global2.x, -20345i)))), vec4<f32>(-548f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1925f, 1551f) - _wgslsmith_f_op_f32(abs(1265f))), -959f, 814f), ~reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, u_input.b.x, 48820i, u_input.b.x), vec4<i32>(global2.x, global2.x, u_input.b.x, u_input.b.x))), _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, 1u, 26105u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), select(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), countOneBits(vec4<u32>(0u, 4294967295u, u_input.a, 2204u)), vec4<bool>(false, false, true, true))))), -1072f));
    global1 = array<Struct_3, 18>();
    var var_1 = u_input.b.zz;
    var var_2 = Struct_2(Struct_1(((u_input.b.x <= 2147483647i) & true) & any(vec4<bool>(true, true, true, true)), _wgslsmith_sub_i32(-2147483647i, -37856i & (u_input.b.x & u_input.b.x)), ~(~select(vec3<u32>(1u, u_input.a, 44233u), vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<bool>(true, true, false))), global2.x, vec4<i32>(global2.x, 1i, var_1.x & _wgslsmith_mod_i32(global2.x, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -9292i), vec2<i32>(global2.x, 1i))))));
    var var_3 = ~4294967295u;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(select(arg_0, arg_0, var_2.a.a)))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -166f)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(0u, 18u)];
    global1 = array<Struct_3, 18>();
    global1 = array<Struct_3, 18>();
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(var_0.c.c.x), 18u)];
    global1 = array<Struct_3, 18>();
    global1 = array<Struct_3, 18>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(round(var_0.d)));
}

