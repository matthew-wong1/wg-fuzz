struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(50858u, 0u, 4294967295u, 476u, 1u, 1854u, 33029u, 1u, 0u);

var<private> global1: vec2<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>) -> vec4<i32> {
    global0 = array<u32, 9>();
    var var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~(~1u), ~global0[_wgslsmith_index_u32(1u, 9u)]), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 43412u), _wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global1.x, 9u)], global1.x), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34109u, 9u)], 9u)], global1.x))));
    var var_1 = vec2<u32>(~(~(~firstTrailingBit(76852u))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)] | _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 1u, 4294967295u), vec3<u32>(global1.x, global0[_wgslsmith_index_u32(global1.x, 9u)], 4294967295u)), ~85768u), 50782u), 9u)]);
    var var_2 = vec3<bool>(true, min(global1.x, global0[_wgslsmith_index_u32(var_1.x, 9u)]) <= var_1.x, any(vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), true)));
    var var_3 = Struct_1(firstTrailingBit(select(vec4<i32>(-u_input.a.x, -56514i, u_input.c, max(-4211i, u_input.c)), -select(vec4<i32>(-2147483647i, u_input.b.x, 1i, u_input.b.x), vec4<i32>(0i, u_input.c, u_input.a.x, -16164i), vec4<bool>(var_2.x, var_2.x, var_2.x, true)), !(!vec4<bool>(var_2.x, false, false, false)))));
    return select(-firstLeadingBit(~vec4<i32>(2147483647i, 1i, u_input.b.x, var_3.a.x)), _wgslsmith_sub_vec4_i32(min(abs(var_3.a), ~var_3.a), vec4<i32>(countOneBits(var_3.a.x), 1i, var_3.a.x, var_3.a.x & u_input.a.x)), vec4<bool>(true, all(select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(false, false, var_2.x, var_2.x), var_2.x)), all(!vec2<bool>(var_2.x, var_2.x)), any(vec3<bool>(false, false, var_2.x)) & (var_2.x & true))) << (~min(firstTrailingBit(~vec4<u32>(var_1.x, 43768u, 48825u, var_1.x)), vec4<u32>(3567u, var_1.x, var_1.x, 4294967295u) | ~vec4<u32>(1u, 8652u, global1.x, global0[_wgslsmith_index_u32(global1.x, 9u)])) % vec4<u32>(32u));
}

fn func_2() -> Struct_1 {
    let var_0 = -827f;
    let var_1 = _wgslsmith_mult_vec2_u32(~(~min(~vec2<u32>(69614u, 45941u), vec2<u32>(global0[_wgslsmith_index_u32(54734u, 9u)], 57784u) ^ vec2<u32>(8902u, 1u))), ~vec2<u32>(firstLeadingBit(31756u) << (global1.x % 32u), abs(global1.x)));
    global0 = array<u32, 9>();
    var var_2 = Struct_1(func_3(vec2<f32>(300f, -1265f)) & ~abs(max(vec4<i32>(u_input.c, u_input.a.x, u_input.b.x, u_input.c), vec4<i32>(-33435i, u_input.c, 60017i, u_input.c))));
    var_2 = Struct_1(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 323f), _wgslsmith_div_vec2_f32(vec2<f32>(1273f, var_0), vec2<f32>(var_0, -2178f)), select(vec2<bool>(true, true), vec2<bool>(true, false), true))))));
    return Struct_1(vec4<i32>(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(861f, var_0) - vec2<f32>(var_0, var_0))).x, _wgslsmith_add_i32(_wgslsmith_sub_i32(18477i, u_input.c), firstTrailingBit(u_input.c)), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, var_2.a.x), u_input.a)), abs(-1i)) & -vec4<i32>(abs(-45312i), _wgslsmith_dot_vec4_i32(var_2.a, vec4<i32>(u_input.a.x, var_2.a.x, u_input.a.x, -10265i)), -10520i, 0i));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    global1 = ~(~arg_0 & ~reverseBits(~arg_0));
    let var_0 = countOneBits(_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-21721i, -1i, 2808i, 0i), vec4<i32>(33078i, u_input.b.x, u_input.c, 2147483647i), vec4<bool>(false, false, false, true)), reverseBits(vec4<i32>(u_input.a.x, 33924i, u_input.a.x, 18110i)))), u_input.a.x));
    var var_1 = Struct_4(func_2(), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -394f)))), select(~vec4<i32>(3387i, -u_input.b.x, i32(-1i) * -2147483647i, 1i), _wgslsmith_div_vec4_i32(max(vec4<i32>(var_0, 2147483647i, u_input.a.x, u_input.a.x), max(vec4<i32>(var_0, 5516i, 10402i, 0i), vec4<i32>(u_input.a.x, var_0, -1i, var_0))), vec4<i32>(-2147483647i, var_0, u_input.a.x, -33600i) << (abs(vec4<u32>(global1.x, 90800u, global0[_wgslsmith_index_u32(101593u, 9u)], arg_0.x)) % vec4<u32>(32u))), true), Struct_2(var_0, !(true | any(vec4<bool>(false, true, false, false))), Struct_1(firstLeadingBit(vec4<i32>(-1i, 24116i, 1i, u_input.a.x)) >> (~vec4<u32>(4294967295u, 49385u, arg_0.x, global0[_wgslsmith_index_u32(40257u, 9u)]) % vec4<u32>(32u))), Struct_1(vec4<i32>(u_input.c, u_input.a.x, ~1i, u_input.a.x << (arg_0.x % 32u))), all(vec2<bool>(true, true))), false);
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(~10879u, max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], global1.x), ~43365u, global1.x)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(arg_0.x, global1.x, global1.x, 4294967295u)), select(~vec4<u32>(arg_0.x, 1738u, global0[_wgslsmith_index_u32(8656u, 9u)], 0u), vec4<u32>(1u, 9978u, arg_0.x, 42684u), !vec4<bool>(var_1.d.b, var_1.d.e, true, true)))), 9u)], abs(19478u)), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(true, false, any(vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true)), (u_input.b.x >= countOneBits(0i)) | all(vec3<bool>(true, false, false))));
    global0 = array<u32, 9>();
    global1 = _wgslsmith_add_vec2_u32(select(vec2<u32>(0u, func_1(vec2<u32>(global0[_wgslsmith_index_u32(69082u, 9u)], 79444u))), ~vec2<u32>(global1.x, global1.x), vec2<bool>(true, true)), ~countOneBits(vec2<u32>(95860u, global1.x))) & vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(3374u, 9u)], global0[_wgslsmith_index_u32(94742u, 9u)]), 1u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 1u), global1.x), 9u)]);
    let var_1 = false;
    let var_2 = func_2();
    var var_3 = Struct_3(var_2, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(773f, 557f, -1548f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1034f, -497f, -398f) * vec3<f32>(881f, -828f, -799f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-993f, 792f, -224f) - vec3<f32>(1087f, 1638f, -1165f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-459f, 1716f, 1467f), vec3<f32>(331f, -918f, -283f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, _wgslsmith_clamp_u32(global1.x, global0[_wgslsmith_index_u32(66188u, 9u)], global1.x)), ~vec2<u32>(global1.x, 24352u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, var_3.b.x, 485f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.b.x, var_3.b.x, 1706f))))), -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, -1i, var_3.a.a.x), var_2.a), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, var_2.a.x, var_3.a.a.x, var_2.a.x), var_3.a.a)), vec3<u32>(_wgslsmith_sub_u32(abs(13167u), 0u), 22745u, global1.x ^ 0u));
}

