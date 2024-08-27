struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_4(arg_0.b, _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, _wgslsmith_add_u32(u_input.a, u_input.a), 4294967295u, abs(0u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 1u, arg_0.a.x, u_input.a), firstTrailingBit(~arg_0.a))));
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_1 = 1u;
    return var_0.b;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_mult_u32(90167u, _wgslsmith_clamp_u32(~0u, u_input.a, 48017u));
    var_0 = _wgslsmith_add_u32(~u_input.a, countOneBits(u_input.a));
    var var_1 = Struct_3(vec4<u32>(u_input.a, ~min(countOneBits(74523u), 4294967295u), 8862u >> (u_input.a % 32u), countOneBits(3649u)), Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(26367u, 6u)], 124f) - vec2<f32>(173f, global0[_wgslsmith_index_u32(u_input.a, 6u)])))), vec4<i32>(~(i32(-1i) * -1i), _wgslsmith_mult_i32(u_input.b.x, countOneBits(-1i)), u_input.b.x, min(-u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x))), _wgslsmith_div_vec4_i32(vec4<i32>(max(u_input.b.x, u_input.b.x), u_input.b.x, 9089i, u_input.b.x), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), vec3<i32>(-16109i, u_input.b.x, 46509i)), _wgslsmith_mod_i32(1i, 1i), u_input.b.x, -1i << (u_input.a % 32u)))), !select(vec3<bool>(true, all(vec4<bool>(false, true, true, true)), true), vec3<bool>(true, true, true), !(u_input.b.x >= u_input.b.x)));
    var var_2 = var_1.c.x;
    return var_1.a.x;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: f32) -> Struct_2 {
    var var_0 = ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 11847u, 0u), ~vec4<u32>(u_input.a, 18507u, u_input.a, 0u)));
    global0 = array<f32, 6>();
    let var_1 = ~abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 40387u)));
    var_0 = select(~(vec4<u32>(~40689u, ~u_input.a, 1u >> (var_1 % 32u), var_1 >> (var_0.x % 32u)) & _wgslsmith_div_vec4_u32(func_2(Struct_3(vec4<u32>(0u, 63371u, 42188u, 9441u), Struct_1(false, vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], arg_1), arg_2, vec4<i32>(2147483647i, arg_0, arg_0, u_input.b.x)), vec3<bool>(false, false, true)), vec2<u32>(1u, var_0.x), arg_2), vec4<u32>(5527u, u_input.a, var_1, var_1))), vec4<u32>(~4294967295u, _wgslsmith_mod_u32(1u, var_1), func_3(), _wgslsmith_clamp_u32(~u_input.a, u_input.a, min(~27720u, _wgslsmith_mod_u32(12335u, 4294967295u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3))) >= arg_3);
    var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(var_0.x), max(u_input.a, reverseBits(610u)), reverseBits(0u), 4294967295u), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 1u, 0u, 1u), vec4<u32>(u_input.a, var_0.x, u_input.a, var_0.x), vec4<u32>(0u, 1u, u_input.a, var_1)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(44459u, u_input.a, 30681u, 27829u), vec4<u32>(u_input.a, 1u, var_0.x, var_1)), vec4<u32>(16700u, var_0.x, var_1, var_0.x)))), ~(~firstTrailingBit(~vec4<u32>(1u, var_1, u_input.a, 4294967295u))), vec4<u32>(~(~_wgslsmith_clamp_u32(var_0.x, var_1, 1u)), ~var_1, 0u >> (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.xzz, var_0.www), u_input.a) % 32u), _wgslsmith_dot_vec2_u32(var_0.xz << ((vec2<u32>(var_0.x, u_input.a) ^ vec2<u32>(1u, var_0.x)) % vec2<u32>(32u)), ~func_2(Struct_3(vec4<u32>(0u, u_input.a, u_input.a, 0u), Struct_1(false, vec2<f32>(-656f, -1643f), arg_2, arg_2), vec3<bool>(true, true, false)), vec2<u32>(u_input.a, u_input.a), arg_2).xw)));
    return Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(971f, 1345f))) - vec2<f32>(arg_3, arg_1))), arg_2, vec4<i32>(2147483647i, -_wgslsmith_div_i32(1i, arg_0), 10204i, _wgslsmith_add_i32(2147483647i, 2147483647i ^ arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~u_input.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 6u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 6u)])))), vec4<i32>(abs(u_input.b.x) >> ((select(0u, u_input.a, false) << (u_input.a % 32u)) % 32u), -u_input.b.x, -(~33744i), u_input.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2077f + 1711f))))));
    var var_1 = 2147483647i;
    var var_2 = !vec3<bool>(false, false && (firstTrailingBit(var_0.a.c.x) <= 626i), var_0.a.a);
    var_2 = select(select(!select(!vec3<bool>(var_2.x, var_0.a.a, true), select(vec3<bool>(var_0.a.a, true, var_0.a.a), vec3<bool>(true, false, var_2.x), true), all(vec2<bool>(var_0.a.a, var_2.x))), !(!(!vec3<bool>(var_0.a.a, false, var_0.a.a))), false), vec3<bool>(var_2.x, select(var_0.a.a, !select(var_0.a.a, true, var_0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1258f) <= func_1(1i, global0[_wgslsmith_index_u32(0u, 6u)], var_0.a.c, 880f).a.b.x), false), 15018i != -((var_0.a.c.x ^ -8934i) ^ -u_input.b.x));
    let var_3 = -741f;
    var_1 = -u_input.b.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-func_1(u_input.b.x, var_3, var_0.a.d, global0[_wgslsmith_index_u32(u_input.a, 6u)]).a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -161f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(465f * -740f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(892f - global0[_wgslsmith_index_u32(79599u, 6u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 6u)]), _wgslsmith_f_op_f32(-421f - -1886f), _wgslsmith_f_op_f32(var_0.a.b.x + -1828f)) - vec4<f32>(var_0.a.b.x, func_1(0i, 808f, var_0.a.c, -210f).a.b.x, -1131f, 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-663f, -1603f, 731f, var_3)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.b.x, var_0.a.b.x, -429f, global0[_wgslsmith_index_u32(4294967295u, 6u)])))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, -572f, var_3, -186f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a, _wgslsmith_clamp_u32(1u, ~u_input.a ^ u_input.a, u_input.a)), firstTrailingBit(min(_wgslsmith_sub_vec4_i32(~var_0.a.c, vec4<i32>(9625i, u_input.b.x, var_0.a.d.x, -16577i) & var_0.a.d), _wgslsmith_sub_vec4_i32(vec4<i32>(8866i, -51822i, 49344i, var_0.a.c.x), var_0.a.d))));
}

