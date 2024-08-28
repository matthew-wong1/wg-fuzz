struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: f32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(12678u, 78867u, 19638u), vec3<u32>(103873u, 1u, 1u), vec3<u32>(8368u, 23360u, 1u), vec3<u32>(0u, 48813u, 59242u), vec3<u32>(28664u, 55528u, 43628u), vec3<u32>(1u, 11204u, 1u), vec3<u32>(0u, 5324u, 15952u), vec3<u32>(49691u, 8141u, 4294967295u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: f32, arg_3: f32) -> f32 {
    let var_0 = Struct_1(vec4<f32>(arg_2, _wgslsmith_f_op_f32(floor(arg_2)), arg_2, arg_3), vec3<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true))), !(!all(vec3<bool>(true, false, false))), any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)))), arg_2, _wgslsmith_add_u32(40510u, u_input.d) >= 0u, true || all(vec2<bool>(true, true)));
    global0 = array<vec3<u32>, 8>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1157f)), var_0.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-768f, var_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(arg_3 + -118f)) * -2298f));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(194f, -897f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))))))));
    global0 = array<vec3<u32>, 8>();
    return _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(763f, -230f)))) + -198f));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<vec3<u32>, 8>();
    let var_0 = arg_1.x;
    global0 = array<vec3<u32>, 8>();
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -182f) - _wgslsmith_f_op_f32(f32(-1f) * -379f)), _wgslsmith_f_op_f32(var_0 - -592f), -491f, _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec4_u32(u_input.b, ~vec4<u32>(20400u, u_input.e.x, 62695u, u_input.d)), u_input.b.xw << (~u_input.e.xz % vec2<u32>(32u)), arg_1.x, arg_1.x))), vec3<bool>(false, false, true), var_0, any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), true)), !(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 0u, u_input.e.x, u_input.e.x), _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(35715u, u_input.a.x, 1688u, u_input.b.x))) < _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(22303u, u_input.e.x)), u_input.e.xy)));
    global0 = array<vec3<u32>, 8>();
    return Struct_1(vec4<f32>(-1023f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1246f - -984f)), -225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(max(268f, var_1.c)))))), var_1.b, var_1.c, !any(var_1.b.yz), var_1.e);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    let var_0 = func_2(vec3<i32>(arg_0.x, reverseBits(abs(-16933i)) | max(arg_0.x, -30888i), -((i32(-1i) * -1i) ^ ~arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-204f * -1035f), _wgslsmith_f_op_f32(-636f * 1000f)) - _wgslsmith_f_op_f32(451f - -599f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-163f * _wgslsmith_f_op_f32(1209f - -503f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(221f))))), -1000f, _wgslsmith_f_op_f32(1884f + -1113f)));
    global0 = array<vec3<u32>, 8>();
    global0 = array<vec3<u32>, 8>();
    let var_1 = arg_0.zyz;
    var var_2 = _wgslsmith_mod_i32(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_1, arg_0.ywx), ~arg_0.yzw), arg_0.x), ~_wgslsmith_mult_i32(var_1.x, ~arg_0.x));
    return func_2(vec3<i32>(~28398i, reverseBits(reverseBits(26376i)), _wgslsmith_sub_i32(-u_input.c, max(reverseBits(-54418i), u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -901f, -482f, 2226f)), _wgslsmith_div_vec4_f32(vec4<f32>(-2094f, 193f, var_0.c, var_0.a.x), vec4<f32>(var_0.a.x, -486f, var_0.a.x, -1030f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.c, var_0.a.x, -168f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-616f, var_0.c, -974f, -804f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(-vec4<i32>(u_input.c & u_input.c, u_input.c, ~u_input.c, u_input.c >> (u_input.e.x % 32u))), countOneBits(u_input.c) >= min(-40143i, 18444i));
    global0 = array<vec3<u32>, 8>();
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), var_0.b, -1000f, true, var_0.b.x);
    global0 = array<vec3<u32>, 8>();
    var var_3 = _wgslsmith_div_f32(var_1.a.x, var_1.c);
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_2.a - vec4<f32>(-602f, var_1.c, var_0.c, var_2.c)))) + var_1.a)), var_2.b, _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~vec4<u32>(1u, u_input.d, u_input.a.x, u_input.b.x), abs(vec2<u32>(u_input.b.x, u_input.e.x)), var_1.c, _wgslsmith_f_op_f32(1000f * 503f))) + var_2.c)), true, var_2.a.x >= _wgslsmith_f_op_f32(exp2(var_1.c)));
    global0 = array<vec3<u32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1649f - var_4.c) + var_1.a.x), -1050f, func_2(countOneBits(vec3<i32>(u_input.c, -1i, u_input.c)), vec4<f32>(var_0.a.x, 215f, var_4.a.x, var_1.c)).c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -1012f, -1440f) - vec3<f32>(var_4.a.x, 1964f, var_2.c)) - vec3<f32>(803f, var_4.a.x, _wgslsmith_div_f32(var_2.a.x, -538f)))), _wgslsmith_clamp_vec3_i32(reverseBits(~select(vec3<i32>(-581i, u_input.c, 0i), vec3<i32>(u_input.c, 69623i, 44928i), var_4.b)), -abs(vec3<i32>(0i, 2147483647i, u_input.c)), (select(vec3<i32>(0i, -18277i, -2147483647i), vec3<i32>(-2147483647i, u_input.c, u_input.c), vec3<bool>(var_2.b.x, false, true)) >> (~global0[_wgslsmith_index_u32(u_input.e.x, 8u)] % vec3<u32>(32u))) >> (u_input.e % vec3<u32>(32u))), vec4<i32>(u_input.c, ~select(-14828i, ~u_input.c, var_0.e), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -16302i, u_input.c), vec3<i32>(-7283i, u_input.c, 0i)), vec3<i32>(u_input.c, -56268i, u_input.c) | vec3<i32>(u_input.c, -1i, u_input.c)), u_input.c | abs(_wgslsmith_mult_i32(u_input.c, u_input.c))), _wgslsmith_f_op_f32(select(-622f, _wgslsmith_f_op_f32(func_2(~vec3<i32>(2147483647i, 26933i, u_input.c), _wgslsmith_div_vec4_f32(var_4.a, var_4.a)).a.x + -1348f), var_0.e)));
}

