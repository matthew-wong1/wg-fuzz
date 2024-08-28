struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec4<bool>, 18>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    var var_0 = select(global1[_wgslsmith_index_u32(u_input.b, 18u)], vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), any(vec3<bool>(true, all(global1[_wgslsmith_index_u32(u_input.b, 18u)]), true)), all(global1[_wgslsmith_index_u32(max(1u, u_input.b), 18u)])), all(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), all(global1[_wgslsmith_index_u32(1u, 18u)])), vec3<bool>(u_input.a.x <= u_input.d.x, true, 21113i >= u_input.c), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))));
    global1 = array<vec4<bool>, 18>();
    let var_1 = u_input.a;
    global0 = _wgslsmith_div_u32(u_input.b, u_input.b);
    global1 = array<vec4<bool>, 18>();
    return Struct_1(false);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_3 {
    global0 = ~arg_3;
    var var_0 = func_2();
    global1 = array<vec4<bool>, 18>();
    let var_1 = u_input.d;
    let var_2 = Struct_5(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, arg_3), abs(vec2<u32>(2727u, 53434u))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 3930u, 4294967295u, 64533u), select(vec4<u32>(u_input.b, arg_3, arg_3, arg_3), vec4<u32>(u_input.b, arg_3, 0u, 0u), var_0.a)), vec4<u32>(76784u | arg_3, 64742u, _wgslsmith_mod_u32(arg_3, u_input.b), _wgslsmith_mult_u32(19088u, arg_3)))), func_2(), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(492f * arg_0.b.x) * arg_0.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0.b.x, -402f, arg_1.a)), -834f, any(vec3<bool>(true, true, true)))), 856f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.x, arg_0.b.x, -110f), vec3<f32>(arg_0.b.x, -1098f, 1774f), vec3<bool>(true, false, arg_0.a.a))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-505f, -984f, arg_0.b.x), vec3<f32>(328f, 349f, arg_0.b.x), true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -2481f, 1927f) * vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x))))), vec2<u32>(~2556u, ~1u));
    return Struct_3(~(~vec3<u32>(1203u, 59445u, arg_3)) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(var_2.a, u_input.b, arg_3), ~vec3<u32>(1u, 0u, 4294967295u)) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_5 {
    var var_0 = Struct_3(arg_1.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(134f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -550f)) * 2549f))));
    var var_2 = _wgslsmith_mod_u32(func_3(Struct_4(Struct_1(any(arg_0)), var_1), func_2(), select(-select(u_input.d.x, -59980i, arg_0.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-16123i, -22649i, u_input.c, u_input.a.x), vec4<i32>(u_input.c, u_input.c, u_input.c, 15721i)), !(!arg_0.x)), var_0.a.x).a.x, 1u);
    var var_3 = Struct_3(min(arg_1.a, reverseBits(var_0.a << (vec3<u32>(var_0.a.x, u_input.b, 963u) % vec3<u32>(32u)))));
    var_0 = func_3(Struct_4(Struct_1(true), _wgslsmith_f_op_vec2_f32(abs(var_1))), Struct_1(false), u_input.a.x, var_0.a.x);
    return Struct_5(~(_wgslsmith_mult_u32(var_0.a.x, 50900u) & u_input.b), func_2(), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-339f, var_1.x, 1213f), vec3<f32>(var_1.x, 3175f, var_1.x), arg_0.x)))))), ~select(arg_1.a.yx, select(~vec2<u32>(var_0.a.x, arg_1.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, 7175u), arg_1.a.xy), u_input.c > -1i), all(arg_0.yx)));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_5) -> Struct_1 {
    let var_0 = 922f;
    var var_1 = Struct_3(_wgslsmith_sub_vec3_u32(~(abs(vec3<u32>(u_input.b, arg_2.d.x, arg_2.d.x)) | ~vec3<u32>(u_input.b, 16144u, 1u)), vec3<u32>(arg_2.a, 1u, 45959u)));
    let var_2 = select(var_1.a, var_1.a, false);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(710f, var_0))))));
    global0 = _wgslsmith_mult_u32(max(u_input.b, ~_wgslsmith_dot_vec3_u32(select(var_2, vec3<u32>(4294967295u, 1886u, var_2.x), false), var_2)), _wgslsmith_dot_vec2_u32(var_1.a.xx, ~reverseBits(vec2<u32>(102846u, 4294967295u))));
    return Struct_1(true | func_4(select(!vec3<bool>(false, true, arg_2.b.a), !vec3<bool>(arg_2.b.a, arg_2.b.a, arg_2.b.a), true), Struct_3(~vec3<u32>(var_2.x, arg_2.a, var_2.x))).b.a);
}

fn func_6(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(u_input.d.zx, !select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.x, 4294967295u), 10060u), 18u)], !select(global1[_wgslsmith_index_u32(u_input.b, 18u)], vec4<bool>(false, arg_2.a, false, false), global1[_wgslsmith_index_u32(64698u, 18u)]), vec4<bool>(4294967295u == u_input.b, false, true, true)));
    var var_1 = vec2<f32>(-477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1098f)))));
    var_1 = vec2<f32>(var_1.x, 274f);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.x, var_1.x)) + vec3<f32>(var_1.x, 2091f, var_1.x)) - vec3<f32>(_wgslsmith_f_op_f32(floor(1093f)), _wgslsmith_f_op_f32(1969f + 1001f), _wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_vec3_f32(select(func_4(!var_0.b.zyz, arg_3).c, vec3<f32>(var_1.x, _wgslsmith_f_op_f32(max(-171f, var_1.x)), _wgslsmith_f_op_f32(-369f * -561f)), select(!var_0.b.yzz, var_0.b.zzw, select(vec3<bool>(arg_2.a, false, true), var_0.b.yyy, false))))));
    var var_3 = Struct_4(Struct_1(var_0.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -428f)))));
    return arg_3;
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-696f * 816f))), -258f));
    var_0 = -1000f;
    let var_1 = func_6(min(vec3<u32>(~3824u, u_input.b, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 28228u, 27977u) ^ vec3<u32>(u_input.b, 28685u, 16564u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, 71659u, 22072u)), vec3<u32>(4294967295u, 4294967295u, 1u) ^ vec3<u32>(u_input.b, 0u, 0u))) & vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(13025u, u_input.b, select(_wgslsmith_mult_u32(u_input.b, u_input.b), ~(~40822u), false)), func_5(reverseBits(_wgslsmith_mult_i32(1i, 0i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-447f, -1936f, -251f, 481f) * vec4<f32>(-963f, 1296f, 1698f, -896f)))), func_4(vec3<bool>(true, all(vec3<bool>(true, true, true)), true), func_3(Struct_4(Struct_1(false), vec2<f32>(-288f, 430f)), func_2(), 48755i, ~u_input.b))), Struct_3(~(~(vec3<u32>(u_input.b, 4204u, 54800u) | vec3<u32>(u_input.b, 33798u, 33228u)))));
    global0 = ~func_4(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true), var_1).d.x;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -878f);
    return vec2<bool>(func_2().a, true);
}

fn func_7(arg_0: vec4<u32>, arg_1: bool) -> StorageBuffer {
    return StorageBuffer(firstTrailingBit(34412u), _wgslsmith_mod_u32(u_input.b, ~(~(arg_0.x & 0u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(432f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1923f + _wgslsmith_f_op_f32(f32(-1f) * -742f)) * 1504f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 18>();
    let x = u_input.a;
    s_output = func_7(~(~select(~vec4<u32>(78358u, 4294967295u, 4294967295u, 1u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), true)), any(func_1()));
}

