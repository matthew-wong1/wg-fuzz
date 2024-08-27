struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1705f;

var<private> global1: i32;

var<private> global2: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec4<f32>(-1328f, -546f, -170f, 469f)), Struct_2(vec4<f32>(-154f, -1141f, -1474f, -592f)), Struct_2(vec4<f32>(1041f, -491f, -360f, -929f)), Struct_2(vec4<f32>(-273f, 676f, 807f, -1000f)), Struct_2(vec4<f32>(590f, 743f, 1255f, 998f)), Struct_2(vec4<f32>(201f, 1000f, 201f, -386f)), Struct_2(vec4<f32>(-1452f, 112f, -124f, -260f)), Struct_2(vec4<f32>(-765f, -169f, 574f, 427f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0 * 1724f);
    global2 = array<vec3<bool>, 19>();
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(abs(~38654u), ~(~4294967295u)), 4294967295u), 8u)];
    var var_2 = abs(_wgslsmith_clamp_u32(4294967295u, reverseBits(~0u), 25502u ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 35975u), vec2<u32>(28102u, 53358u))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(783f, -1000f, true)), -590f) * _wgslsmith_div_f32(1246f, 642f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), 1388f);
    return -851f;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -660f) + 396f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -602f), 1f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(927f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(floor(-251f)), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))))))), 1000f);
    let var_1 = arg_1;
    let var_2 = global3[_wgslsmith_index_u32(33282u, 8u)];
    global2 = array<vec3<bool>, 19>();
    var var_3 = 36315u;
    return var_1;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(reverseBits(_wgslsmith_mod_u32(1u, ~22127u))), 19u)];
    global1 = -43045i;
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22008u, 4383u, 4595u), vec4<u32>(0u, 1u, 64464u, 0u))), _wgslsmith_div_u32(1u, ~1u), 0u), vec3<u32>(1u, 1u, 1u)), max(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, abs(0u), ~4294967295u), true), ~vec3<u32>(~0u, _wgslsmith_clamp_u32(1u, 25039u, 55037u), 1u)));
    var var_2 = _wgslsmith_f_op_f32(-1f);
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-508f, 643f, 2291f, -428f) - vec4<f32>(366f, -957f, -1276f, 251f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(923f, 184f, 607f, -387f) - vec4<f32>(-989f, -310f, 448f, -715f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1218f, -440f, -439f, -171f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_3.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(var_3.a, vec4<f32>(var_3.a.x, 158f, -330f, var_3.a.x))))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2382f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1025f)))), _wgslsmith_div_f32(-782f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(485f, -483f, arg_1.x)))))));
    let var_1 = u_input.a.x;
    global3 = array<Struct_2, 8>();
    global1 = -30333i;
    let var_2 = func_4(!arg_1.x, func_2((-47980i < u_input.a.x) != (53397i <= select(2147483647i, arg_0.x, true)), Struct_1(-_wgslsmith_mod_i32(-11558i, arg_0.x))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1, 42678i, 12764i), _wgslsmith_mod_vec3_i32(vec3<i32>(26450i, 6119i, -38150i), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))) ^ (vec3<i32>(-1i) * -vec3<i32>(var_1, var_1, -18135i)), ~firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(2001i, 18675i, var_1), vec3<i32>(arg_0.x, -2147483647i, 1i)))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-436f * _wgslsmith_f_op_f32(f32(-1f) * -995f)), var_0.a.x) - var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1176f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.a.x, -19028i) >> (vec2<u32>(4294967295u, 62289u) % vec2<u32>(32u)), vec3<bool>(true, true, true))))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)))), 373f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x >> (_wgslsmith_clamp_u32(~17885u, max(~0u, ~21382u), _wgslsmith_clamp_u32(abs(0u), countOneBits(67903u), min(35471u, 0u))) % 32u), reverseBits(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 2147483647i), u_input.a.x, ~u_input.a.x, u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1000f, _wgslsmith_mult_i32(u_input.a.x, -3098i)))), 673f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0)))))), 27368i);
}

