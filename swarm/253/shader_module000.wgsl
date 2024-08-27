struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_5(933f, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(237f + -553f))), _wgslsmith_f_op_f32(-1681f * _wgslsmith_div_f32(286f, 726f))), _wgslsmith_div_f32(300f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f)))));
    let var_1 = Struct_2(~u_input.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 361f) - vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.b.x)));
    global0 = array<vec4<f32>, 12>();
    var_0 = Struct_5(_wgslsmith_f_op_f32(round(777f)), var_0.b);
    return -417f;
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    global0 = array<vec4<f32>, 12>();
    let var_0 = Struct_1(arg_0);
    global0 = array<vec4<f32>, 12>();
    var var_1 = var_0;
    var_1 = var_0;
    return Struct_3(var_0, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<i32>(-2147483647i, 2065i, -1i, -32994i))), _wgslsmith_f_op_f32(-548f + _wgslsmith_f_op_f32(var_0.a.x * arg_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.x * 742f))))), var_0, Struct_2(select(_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 59281u, u_input.a.x), vec3<bool>(true, false, true)), firstLeadingBit(u_input.a)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 2847u, 1u), vec3<u32>(32057u, u_input.a.x, 754u), u_input.a)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false))), select(vec2<i32>(~select(-1i, -1i, true), select(_wgslsmith_dot_vec2_i32(vec2<i32>(9253i, -2147483647i), vec2<i32>(-28992i, -2147483647i)), ~56484i, any(vec4<bool>(true, false, true, false)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(13703i), 24737i), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-26791i, -30872i)), select(vec2<i32>(0i, 36819i), vec2<i32>(2147483647i, -39213i), false)), countOneBits(select(vec2<i32>(-65402i, 1i), vec2<i32>(-60311i, 22286i), false))), vec2<bool>(false, true)));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: Struct_4) -> u32 {
    var var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(-864f + -1824f)), -2787f)), -798f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-854f + -1000f) + -381f)));
    return ~_wgslsmith_div_u32(30711u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 12>();
    let var_0 = (select(true, u_input.a.x <= ~u_input.a.x, true) & !any(vec4<bool>(true, true, false, true))) | false;
    var var_1 = ~(~_wgslsmith_mod_u32(func_1(~4294967295u, vec4<u32>(4294967295u, u_input.a.x, 1u, 0u), !vec3<bool>(false, true, var_0), Struct_4(1u, vec4<i32>(-30876i, -49461i, -2147483647i, 0i))), ~u_input.a.x << (u_input.a.x % 32u)));
    let var_2 = u_input.a.x;
    let var_3 = -_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)) >> ((~vec4<u32>(61006u, u_input.a.x, 15669u, u_input.a.x) ^ ~vec4<u32>(var_2, 0u, var_2, 4268u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(27568i, 1i, 1i, ~61473i), vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(var_2, var_2, 7712u, 0u) % vec4<u32>(32u))));
    var_1 = var_2 ^ _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(90914u, u_input.a.x, var_2), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 15654u, var_2), vec3<u32>(var_2, u_input.a.x, var_2))), 10637u, ~(u_input.a.x & var_2)), u_input.a >> (vec3<u32>(u_input.a.x << (34023u % 32u), func_2(vec3<f32>(895f, 535f, -1929f)).d.a.x, 4294967295u) % vec3<u32>(32u)));
    var_1 = ~_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(~u_input.a.zx, vec2<u32>(u_input.a.x, var_2), _wgslsmith_sub_vec2_u32(u_input.a.xz, vec2<u32>(var_2, 28723u))), u_input.a.yx);
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -662f, 1128f) + vec3<f32>(114f, -878f, 120f)) * vec3<f32>(1062f, 325f, -1800f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<bool>(var_0, all(select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(var_0, var_0, var_0, var_0), false)), all(vec2<bool>(var_0, true)) && all(vec4<bool>(var_0, false, var_0, true))))), _wgslsmith_sub_i32(var_3.x, 0i), _wgslsmith_clamp_i32(-var_3.x, _wgslsmith_div_i32(1i, _wgslsmith_div_i32(var_3.x & -2147483647i, -31289i)), max(var_3.x, ~_wgslsmith_dot_vec3_i32(var_3.xyz, vec3<i32>(0i, var_3.x, var_3.x)))));
}

