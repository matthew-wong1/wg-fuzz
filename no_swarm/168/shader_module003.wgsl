struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<i32>(24116i, 2147483647i, -19308i), vec3<f32>(547f, 320f, 806f)), Struct_1(vec3<i32>(11119i, 38276i, i32(-2147483648)), vec3<f32>(-841f, -580f, 411f)), Struct_1(vec3<i32>(0i, 319i, -1i), vec3<f32>(-708f, -352f, -133f)), Struct_1(vec3<i32>(30234i, 62056i, -1i), vec3<f32>(890f, -692f, 1412f)), Struct_1(vec3<i32>(0i, -9211i, -21356i), vec3<f32>(1288f, 812f, -231f)), Struct_1(vec3<i32>(34377i, -1i, -1i), vec3<f32>(398f, -200f, -720f)), Struct_1(vec3<i32>(2147483647i, -39636i, 2147483647i), vec3<f32>(1198f, 657f, 527f)), Struct_1(vec3<i32>(8897i, -49641i, 0i), vec3<f32>(812f, -1235f, 1972f)), Struct_1(vec3<i32>(-37585i, 48846i, 62548i), vec3<f32>(954f, -1102f, 375f)), Struct_1(vec3<i32>(-40466i, -49853i, i32(-2147483648)), vec3<f32>(-1313f, -623f, 692f)), Struct_1(vec3<i32>(-13086i, i32(-2147483648), -1i), vec3<f32>(100f, -831f, -1000f)), Struct_1(vec3<i32>(-1i, 1i, -1i), vec3<f32>(-907f, -331f, 693f)), Struct_1(vec3<i32>(-20321i, -1i, -1i), vec3<f32>(871f, -656f, -178f)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0.b.x, -1213f), _wgslsmith_f_op_f32(round(arg_0.b.x)))) + vec2<f32>(arg_0.b.x, -621f)));
    global0 = array<vec4<bool>, 20>();
    var var_1 = global0[_wgslsmith_index_u32(~u_input.c, 20u)];
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), var_0.x) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-386f, arg_0.b.x)), _wgslsmith_f_op_vec2_f32(round(arg_0.b.yz)), select(vec2<bool>(true, true), vec2<bool>(var_1.x, var_1.x), var_1.yy)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-686f)))), _wgslsmith_div_f32(-404f, 488f))));
    global0 = array<vec4<bool>, 20>();
    return vec4<i32>(1i, 16539i, abs(0i), ~1i);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = vec4<i32>(51863i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x ^ firstLeadingBit(-2147483647i), 1i, 42006i, u_input.a), abs(func_3(Struct_1(arg_0.a, vec3<f32>(arg_0.b.x, -520f, 899f))))), _wgslsmith_clamp_i32(-19844i, _wgslsmith_mod_i32(2147483647i, 1i), -1i), 2147483647i);
    var var_1 = 1u;
    var_1 = 0u;
    var var_2 = vec2<bool>(!all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true))), any(global0[_wgslsmith_index_u32(u_input.b, 20u)]));
    var var_3 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x * -1015f), _wgslsmith_f_op_f32(min(arg_0.b.x, 340f)), _wgslsmith_f_op_f32(sign(1285f)))), arg_0.b), arg_0, 1u, arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, 1558f) - vec2<f32>(-179f, arg_0.b.x))))));
    return Struct_1(max(arg_0.a | arg_0.a, vec3<i32>(max(-2147483647i, 1i), -2147483647i, (-43083i << (arg_1.x % 32u)) ^ arg_0.a.x)), var_3.b.b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-arg_1.b), func_2(global1[_wgslsmith_index_u32(u_input.c, 13u)], ~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(4294967295u, u_input.b, 1u, 12553u)), ~vec4<u32>(u_input.b, 35917u, 89626u, u_input.b))), ~(_wgslsmith_div_u32(u_input.b, u_input.c) << (min(u_input.b, ~u_input.c) % 32u)), arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(arg_1.b.zy)), vec2<f32>(245f, arg_1.b.x), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(594f, arg_1.b.x) + vec2<f32>(arg_1.b.x, arg_0.b.x))))));
    let var_1 = var_0;
    let var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-var_1.a.x), var_1.e.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -598f), arg_1.b.x, 220f)), global1[_wgslsmith_index_u32(~min(var_0.c, _wgslsmith_add_u32(reverseBits(u_input.c), u_input.b)), 13u)], 0u, var_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1228f, 991f), vec2<f32>(arg_0.b.x, -363f), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1280f, var_0.a.x)))))));
    let var_3 = var_1;
    global1 = array<Struct_1, 13>();
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, firstTrailingBit(-1i)), ~min(1i, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(true, (0u < _wgslsmith_mod_u32(u_input.c, 8835u)) && any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true))));
    var_0 = all(vec4<bool>(_wgslsmith_add_i32(u_input.a | -36141i, ~u_input.a) < 1i, all(vec2<bool>(false, false)), true, !any(global0[_wgslsmith_index_u32(max(84170u, 49335u), 20u)])));
    global0 = array<vec4<bool>, 20>();
    var var_1 = vec3<i32>(-44179i, func_1(Struct_1(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(17835i, u_input.a, 17258i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1534f, -936f, -512f), vec3<f32>(201f, -298f, 467f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1768f, 537f, 681f)))), global1[_wgslsmith_index_u32(~(min(u_input.b, 0u) ^ ~14534u), 13u)]), u_input.a);
    let var_2 = (2147483647i > ~(func_2(Struct_1(vec3<i32>(var_1.x, var_1.x, -2147483647i), vec3<f32>(-856f, -1000f, 1100f)), vec4<u32>(u_input.c, u_input.c, u_input.c, 1u)).a.x >> (_wgslsmith_mult_u32(28310u, 40486u) % 32u))) || true;
    var_0 = !var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -(-27831i >> (u_input.b % 32u)), -2147483647i), vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(var_1.zz, var_1.zx), -2147483647i) & abs(vec3<i32>(-48684i, 39041i, 0i) << (vec3<u32>(0u, u_input.c, 53648u) % vec3<u32>(32u)))), _wgslsmith_mod_u32(1u, 53220u) ^ max(~(~0u), _wgslsmith_sub_u32(u_input.c, 0u) ^ u_input.b), u_input.c | ~41322u);
}

