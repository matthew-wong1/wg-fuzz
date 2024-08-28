struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(-12074i, 149f, 1u, vec4<bool>(true, true, false, false)));

var<private> global1: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> vec2<f32> {
    global1 = array<vec4<bool>, 4>();
    global0 = array<Struct_3, 1>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1993f)), 1f) + vec2<f32>(-905f, _wgslsmith_f_op_f32(-1000f - -1227f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(296f, 1387f) + vec2<f32>(1374f, 833f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(554f, 2040f) * vec2<f32>(1101f, -367f)), vec2<f32>(-1013f, -312f))))));
    let var_1 = var_0;
    global0 = array<Struct_3, 1>();
    return vec2<f32>(var_0.a.x, var_1.a.x);
}

fn func_3() -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(-1597f, 622f, false))), -1206f) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_2(true)).x, 1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(614f, 1031f))))));
    let var_1 = Struct_1(1127f, true, select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(u_input.c <= -34532i, all(vec4<bool>(true, true, false, true)), true), vec3<bool>(true, true, any(vec3<bool>(true, true, false))), true)));
    let var_2 = firstTrailingBit(_wgslsmith_clamp_vec2_i32(reverseBits(firstTrailingBit(vec2<i32>(-131i, u_input.c) << (vec2<u32>(u_input.b, u_input.e.x) % vec2<u32>(32u)))), vec2<i32>(select(-2147483647i, 0i, true) << (u_input.e.x % 32u), -3143i), _wgslsmith_clamp_vec2_i32(-countOneBits(vec2<i32>(36469i, 1168i)), vec2<i32>(select(13195i, u_input.c, var_1.b), u_input.c), -_wgslsmith_sub_vec2_i32(vec2<i32>(45997i, u_input.c), vec2<i32>(-2147483647i, -12784i)))));
    let var_3 = _wgslsmith_f_op_f32(117f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(109f * 189f), var_1.a)))));
    var var_4 = 230f;
    return u_input.c;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(true)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-297f, 181f), vec2<f32>(471f, 769f), any(vec2<bool>(true, true))))), vec2<f32>(-411f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1522f)))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), vec2<bool>(true, true)))));
    let var_1 = 4294967295u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), (min(_wgslsmith_mod_i32(34524i, u_input.c), _wgslsmith_div_i32(u_input.c, u_input.c)) > func_3()) | select(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), 0u >= _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.e, vec2<u32>(4294967295u, 1u)), vec2<u32>(0u, u_input.d)), 1u <= abs(_wgslsmith_div_u32(u_input.a, 55524u))));
    let var_3 = -277f;
    let var_4 = _wgslsmith_sub_vec4_i32(countOneBits(-select(-vec4<i32>(-1i, 1i, -1i, u_input.c), ~vec4<i32>(u_input.c, 3462i, -2147483647i, u_input.c), false)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-4414i, 2147483647i, u_input.c), 2668i, i32(-1i) * -42763i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(2147483647i, u_input.c))) | vec4<i32>(-1i, ~(-22491i), -15394i, ~11146i), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-33370i, 0i, u_input.c, u_input.c), vec4<i32>(-69820i, 52708i, u_input.c, 12066i)) | abs(vec4<i32>(-1i, -14441i, 1i, u_input.c)), vec4<i32>(countOneBits(u_input.c), max(-1i, u_input.c), u_input.c, u_input.c | 2147483647i))));
    return Struct_1(var_0.a.x, var_2.c.x, var_2.c);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> vec3<f32> {
    let var_0 = arg_3.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a, arg_2.a.x, -351f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(575f, arg_2.a.x, arg_2.a.x))))) - vec3<f32>(-757f, 806f, func_1().a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1107f, arg_2.a.x, arg_2.a.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, 728f, arg_1.a), vec3<f32>(arg_2.a.x, -372f, arg_1.a), arg_1.c)), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 4>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, _wgslsmith_clamp_u32(u_input.a, u_input.b, ~u_input.d)), 1u)];
    let var_1 = 4294967295u;
    global1 = array<vec4<bool>, 4>();
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b, 1245f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1549f))))), _wgslsmith_f_op_vec3_f32(func_4(true, func_1(), Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), vec2<f32>(var_0.b, var_0.b), var_0.d.x))), vec2<u32>(_wgslsmith_div_u32(49381u, u_input.a) & 1u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(select(473f, _wgslsmith_f_op_f32(var_2.x - var_0.b), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x - 2353f))))));
}

