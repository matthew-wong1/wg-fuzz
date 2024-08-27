struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    global0 = array<Struct_3, 16>();
    var var_0 = Struct_1(u_input.b, ~vec4<i32>(u_input.b.x & ~57364i, arg_0 & ~(-2147483647i), _wgslsmith_mult_i32(arg_0, _wgslsmith_div_i32(9490i, -2147483647i)), _wgslsmith_add_i32(3138i, arg_0)), ~abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5157u, 1u, 1u, 26917u), vec4<u32>(4294967295u, 14555u, 94363u, 47872u)), 1u)));
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1734f, -429f, -583f, _wgslsmith_f_op_f32(425f - -469f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1290f, -1079f, -539f, 1611f), vec4<f32>(-2367f, 1218f, -789f, -1569f))))));
    return true;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(select(~vec3<u32>(1u, 1u, 1u), vec3<u32>(~0u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(59564u, 68481u), vec2<u32>(1u, 77367u)), 1u), ~firstLeadingBit(1u)), func_3(abs(~(-5875i)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false)))), -16158i, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), -u_input.d);
    var var_1 = vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -_wgslsmith_mod_i32(37921i, var_0.b), firstTrailingBit(min(-35113i, u_input.a.x)), _wgslsmith_clamp_i32(min(var_0.b, 0i), 57418i, _wgslsmith_div_i32(-1i, -35076i)));
    let var_2 = Struct_2(var_0.a, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_1.x, var_1.x), 41106i), _wgslsmith_mod_i32(-2147483647i, ~1i)) << (max(1u, ~(~4294967295u)) % 32u), var_0.c, firstLeadingBit(-u_input.a.x));
    var_0 = var_2;
    return _wgslsmith_mod_u32(var_2.a.x, var_0.a.x);
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_3, 16>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-304f - -930f) + -1000f))) - -646f), _wgslsmith_f_op_f32(1069f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1273f + 109f) * _wgslsmith_f_op_f32(sign(1119f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-934f, -1320f) + -1119f))));
    var var_1 = Struct_2(abs(vec3<u32>(~(~0u), func_2(), 1u)), u_input.c, true, min(~_wgslsmith_dot_vec3_i32(vec3<i32>(-11619i, -118680i, u_input.b.x), _wgslsmith_clamp_vec3_i32(u_input.a.wxw, vec3<i32>(1i, u_input.b.x, u_input.c), u_input.a.xwz)), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, u_input.c, u_input.c, -15509i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.b.x, u_input.d, u_input.c), vec4<i32>(u_input.c, u_input.c, 1i, u_input.d))) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.d)), u_input.c)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f));
    var var_3 = global0[_wgslsmith_index_u32(~14931u, 16u)];
    return Struct_1(select(vec3<i32>(-firstTrailingBit(0i), _wgslsmith_mod_i32(~(-48482i), ~0i), 1i), firstTrailingBit(u_input.b), all(select(vec4<bool>(var_1.c, true, false, true), vec4<bool>(var_1.c, var_1.c, false, var_1.c), vec4<bool>(true, var_1.c, var_1.c, true))) & true), u_input.a, _wgslsmith_sub_u32(abs(abs(var_1.a.x >> (0u % 32u))), ~(~var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(1669f)), _wgslsmith_f_op_f32(-1269f * -1819f), -829f))), vec3<f32>(_wgslsmith_f_op_f32(round(1358f)), _wgslsmith_f_op_f32(select(1732f, 777f, -var_0.a.x < -6128i)), -1460f));
    global0 = array<Struct_3, 16>();
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(47327u, 1u, 4294967295u), func_1().c), _wgslsmith_mult_u32(~var_0.c, var_0.c), ~(var_0.c | 4294967295u), _wgslsmith_sub_u32(min(var_0.c, 1u), select(0u, var_0.c, false))) & min(select(vec4<u32>(4294967295u, var_0.c, var_0.c, var_0.c) ^ vec4<u32>(var_0.c, var_0.c, 0u, var_0.c), ~vec4<u32>(var_0.c, var_0.c, var_0.c, 4294967295u), all(vec2<bool>(true, true))), ~(~vec4<u32>(32272u, 12089u, var_0.c, 0u))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(max(var_0.c, var_0.c), ~32138u, _wgslsmith_dot_vec4_u32(vec4<u32>(24678u, var_0.c, 11646u, 1u), vec4<u32>(var_0.c, 4294967295u, 46895u, 5553u)), 4294967295u), vec4<u32>(_wgslsmith_div_u32(var_0.c, var_0.c), ~var_0.c, 0u, 65321u)), vec4<u32>(0u, var_0.c, firstTrailingBit(var_0.c << (4294967295u % 32u)), ~0u)));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1817f, 372f, 422f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(822f, var_1.x, var_1.x), vec3<f32>(var_1.x, -2522f, 178f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-370f, -1202f, var_1.x)))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(804f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, -963f))), _wgslsmith_f_op_f32(round(-1000f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(966f, var_1.x, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -279f, -560f) + vec3<f32>(1309f, var_1.x, var_1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_0.c, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1349f - var_1.x))), var_1.x, var_1.x));
}

