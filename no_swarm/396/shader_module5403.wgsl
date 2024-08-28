struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<bool>) -> u32 {
    global0 = array<vec2<u32>, 22>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1764f)) - 472f), arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.x)))));
    var var_1 = arg_1.d.a.b;
    let var_2 = vec3<u32>(arg_1.a.a.x, _wgslsmith_div_u32(var_1.x, _wgslsmith_mult_u32(arg_1.d.a.b.x, _wgslsmith_div_u32(u_input.b, ~4294967295u))), ~0u);
    global0 = array<vec2<u32>, 22>();
    return 0u | min(_wgslsmith_mult_u32(var_1.x, _wgslsmith_mod_u32(u_input.b, 1u)), abs(var_2.x));
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~28522u), ~(~4294967295u) | _wgslsmith_div_u32(~u_input.b, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(4787u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)])), u_input.b, u_input.b), max(select(vec4<u32>(func_3(Struct_4(vec3<i32>(u_input.a, u_input.a, arg_0), vec3<f32>(-286f, 349f, -103f)), Struct_3(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 22u)], vec3<u32>(0u, u_input.b, 1u), -1i, false), vec3<bool>(true, false, false), -1051f, Struct_2(Struct_1(vec2<u32>(1u, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b), -2147483647i, true), vec4<bool>(false, true, true, false), vec3<i32>(-43443i, -388i, arg_0), u_input.a), vec4<bool>(true, false, false, false)), vec3<bool>(false, true, false)), 4294967295u, reverseBits(11130u), 25720u), ~(~vec4<u32>(7903u, u_input.b, u_input.b, u_input.b)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))), ~vec4<u32>(~u_input.b, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 44855u, u_input.b), vec4<u32>(1u, u_input.b, 71663u, 1u)), 28567u >> (u_input.b % 32u))));
    global0 = array<vec2<u32>, 22>();
    var_0 = u_input.b;
    var_0 = u_input.b;
    let var_1 = Struct_3(Struct_1(vec2<u32>(u_input.b, 45640u), vec3<u32>(~u_input.b, u_input.b, 45976u), -_wgslsmith_add_i32(_wgslsmith_div_i32(9656i, u_input.a), countOneBits(0i)), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(false, false, false), false), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-155f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(491f, -567f)) + _wgslsmith_f_op_f32(1270f + -1080f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(598f)) * _wgslsmith_f_op_f32(abs(-1000f))))), Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b, 22u)]), global0[_wgslsmith_index_u32(~u_input.b, 22u)]), ~vec3<u32>(9298u, 15525u, u_input.b) ^ vec3<u32>(u_input.b, u_input.b, u_input.b), -24555i, all(vec2<bool>(false, true))), select(vec4<bool>(true, all(vec3<bool>(false, true, true)), true, false), vec4<bool>(true, true, select(false, false, true), false), vec4<bool>(true, all(vec2<bool>(false, true)), true, true)), vec3<i32>(arg_0 & 0i, u_input.a, arg_0), u_input.a), vec4<bool>(any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), false, !any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), any(vec3<bool>(true, false, true))));
    return vec4<f32>(var_1.c, -847f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1117f, var_1.c)))) + var_1.c), _wgslsmith_f_op_f32(trunc(1708f))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(round(-2079f))), _wgslsmith_f_op_f32(f32(-1f) * -809f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    global0 = array<vec2<u32>, 22>();
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: bool) -> u32 {
    global0 = array<vec2<u32>, 22>();
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(func_2(25028i)), Struct_2(Struct_1(vec2<u32>(u_input.b, u_input.b), select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 39121u), vec3<u32>(26062u, 145776u, u_input.b)), vec3<u32>(11081u, u_input.b, u_input.b), false), 0i, u_input.b == 1u), vec4<bool>(true, true, true, true), vec3<i32>(arg_0 | -49331i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, 30485i, -29076i), -2147483647i, -2147483647i | arg_0), 1i), _wgslsmith_mult_i32(i32(-1i) * -1i, u_input.a)), -249f);
    global0 = array<vec2<u32>, 22>();
    let var_1 = arg_1;
    global0 = array<vec2<u32>, 22>();
    return max(47363u, ~u_input.b | ~53337u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, -1i, 29283i), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -9223i, 11069i), vec3<i32>(12967i, 39175i, 43593i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-156f, -854f, 1000f)))))));
    let var_1 = func_1(~(-92717i), true) != ~max(_wgslsmith_mult_u32(~4294967295u, u_input.b), min(91478u, u_input.b) | max(u_input.b, 50325u));
    let var_2 = Struct_1(min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(4294967295u, 36796u, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), false), abs(vec4<u32>(4227u, u_input.b, 28493u, 1u))), 22u)], _wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.b, 1u)), ~vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, 14532u) % vec2<u32>(32u)))), ~firstLeadingBit(reverseBits(vec3<u32>(u_input.b, u_input.b, 0u))), var_0.a.x, var_0.b.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(var_0.b.x + -1381f)) - _wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x), var_1 && true))));
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-765f, var_0.b.x, var_0.b.x, var_0.b.x))))))), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(~2924u, u_input.b), 33100u), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 975f, var_0.b.x, var_0.b.x)))), Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -1121f, 717f, 936f)), Struct_2(var_2, vec4<bool>(var_1, var_1, var_2.d, var_1), vec3<i32>(-1534i, -36762i, 43424i), 0i), _wgslsmith_f_op_f32(-var_0.b.x)).a, select(vec4<bool>(var_1, false, var_1, true), select(vec4<bool>(true, var_1, true, var_1), vec4<bool>(var_1, true, true, var_1), false), true), vec3<i32>(var_2.c, firstTrailingBit(55031i), _wgslsmith_div_i32(var_0.a.x, u_input.a)), _wgslsmith_add_i32(abs(0i), u_input.a & 7149i)), var_0.b.x).a.b, -778f);
}

