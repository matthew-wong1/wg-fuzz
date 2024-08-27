struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec4<u32>(53859u, 0u, 0u, 0u)), Struct_2(vec4<u32>(38147u, 0u, 4294967295u, 3354u)), Struct_2(vec4<u32>(65831u, 12520u, 1u, 0u)), Struct_2(vec4<u32>(0u, 24397u, 1u, 1u)), Struct_2(vec4<u32>(77940u, 24598u, 8702u, 26456u)), Struct_2(vec4<u32>(0u, 44914u, 0u, 29776u)), Struct_2(vec4<u32>(1154u, 4294967295u, 4294967295u, 0u)));

var<private> global2: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(i32(-2147483648), 6511i, 0i, 33i), vec4<i32>(2147483647i, 1i, 46560i, 30106i), vec4<i32>(23740i, -48279i, 2147483647i, 12713i), vec4<i32>(-1i, 2147483647i, 0i, -1i), vec4<i32>(2147483647i, 7723i, 1i, 34610i), vec4<i32>(2147483647i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, 25399i, -4322i), vec4<i32>(36708i, 2147483647i, -8019i, -48107i), vec4<i32>(24223i, i32(-2147483648), -1i, 21699i), vec4<i32>(-1i, -31981i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, -11405i, 0i, 1i), vec4<i32>(1i, 1i, -9546i, i32(-2147483648)), vec4<i32>(-1i, 1i, -73397i, 39400i), vec4<i32>(i32(-2147483648), -24064i, 4493i, -1i), vec4<i32>(1i, -1i, 11530i, 0i), vec4<i32>(-1798i, 36547i, 92860i, -27059i), vec4<i32>(1i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-47193i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(1i, 1i, -1i, -1i), vec4<i32>(-23984i, 31363i, 2147483647i, -7020i), vec4<i32>(2147483647i, 47370i, -1i, 13680i), vec4<i32>(1i, 0i, 13245i, -18824i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -47510i), vec4<i32>(-1i, -32207i, 0i, 7078i), vec4<i32>(i32(-2147483648), -44525i, i32(-2147483648), 2147483647i));

var<private> global3: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(~abs(reverseBits(57476u)), 7u)];
    global0 = 13335u;
    global3 = 1i;
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(var_0.a);
    return 40250u;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = vec4<bool>(true, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(124314u, 1u), vec2<u32>(125826u, 26892u))) >= func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-686f, 575f, 1012f))), true | any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-650f * 198f)))) + 300f));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(1u), _wgslsmith_add_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(12995u, 0u, 7784u, 22104u)), 1u), countOneBits(~(~18047u)))), 7u)];
    var var_3 = Struct_2(_wgslsmith_mod_vec4_u32(reverseBits(firstTrailingBit(max(vec4<u32>(1u, 57820u, var_2.a.x, 0u), var_2.a))), vec4<u32>(var_2.a.x, firstLeadingBit(select(var_2.a.x, var_2.a.x, var_0.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, var_2.a.x, var_2.a.x), var_2.a.yxz), ~_wgslsmith_dot_vec4_u32(var_2.a, var_2.a))));
    let var_4 = true & select(var_0.x || var_0.x, var_0.x, !any(!var_0.zy));
    return Struct_1(true, u_input.b.xx);
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<bool>(true, true, true, true);
    global0 = _wgslsmith_sub_u32(1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) % 32u), abs(max(~0u, 1u))) & (abs(1u) | (1u << (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 40184u), vec2<u32>(35427u, 1u)) % 32u)));
    global3 = _wgslsmith_mod_i32(2147483647i, u_input.b.x);
    global0 = 1u;
    return func_2(-firstLeadingBit(1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_div_vec3_u32(~reverseBits(vec3<u32>(26242u, 1u, ~1u)), vec3<u32>(1u, 1u, 1u));
    var var_2 = max(48170u, ~1u);
    let var_3 = ~37790u;
    let var_4 = Struct_2(~(vec4<u32>(36411u, 1u | var_3, var_1.x, ~1u) & select(firstTrailingBit(vec4<u32>(30739u, var_1.x, 26786u, 4294967295u)), vec4<u32>(var_1.x, 16957u, 91480u, var_3), true)));
    var var_5 = var_4.a.zww;
    var_0 = Struct_1(true & select(all(vec3<bool>(true, var_0.a, var_0.a)), true, var_0.a), ~u_input.b.yy ^ vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-4356i, -82312i), u_input.b.x), u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1065f - -326f)), 1913f)), _wgslsmith_f_op_f32(select(1116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f + -305f)), any(vec2<bool>(true, true))))), vec3<u32>(1u, ~1u & var_1.x, (17607u & ~var_3) << (_wgslsmith_dot_vec2_u32(var_5.zx, var_1.xx) % 32u)), _wgslsmith_dot_vec3_i32(reverseBits(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.c.x, var_0.b.x), u_input.c))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, var_0.b.x, abs(var_0.b.x)), u_input.b.ywx)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3, ~(~var_1.x), var_1.x, var_5.x), var_4.a), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(var_4.a >> (vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u) % vec4<u32>(32u)), ~var_4.a) | var_4.a, abs(vec4<u32>(0u >> (var_1.x % 32u), min(var_3, var_3), var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a.x, var_5.x, var_5.x), var_4.a.wyw)))));
}

