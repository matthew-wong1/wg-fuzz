struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<i32>) -> bool {
    global0 = array<vec2<i32>, 19>();
    global0 = array<vec2<i32>, 19>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-430f - 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(591f)), -853f), _wgslsmith_f_op_f32(-1464f * 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-776f)))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(2167f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(805f)))), _wgslsmith_div_f32(-1378f, _wgslsmith_f_op_f32(step(599f, -637f))), _wgslsmith_f_op_f32(-1549f + _wgslsmith_f_op_f32(f32(-1f) * -492f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-125f, 2022f, 201f, -1241f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -170f, -470f, -760f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2352f, 1350f, -1000f, 1000f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(843f, 615f, -458f, -336f)))))));
    var var_1 = _wgslsmith_add_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(14925i, ~(-31218i), ~u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.x, 2147483647i, arg_1), vec3<i32>(-1i, arg_1, -2147483647i))), vec3<i32>(_wgslsmith_dot_vec2_i32(arg_2, global0[_wgslsmith_index_u32(1u, 19u)]), u_input.a, abs(0i)) ^ ~(vec3<i32>(arg_2.x, 31895i, u_input.a) << (vec3<u32>(64478u, 1u, 1u) % vec3<u32>(32u))), !select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), !vec3<bool>(arg_0, true, false))), ~vec3<i32>(min(arg_1 & 0i, max(arg_1, -14069i)), u_input.a, select(firstLeadingBit(u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.a), false)));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(abs(_wgslsmith_add_i32(_wgslsmith_div_i32(arg_2.x, -45223i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 1i), global0[_wgslsmith_index_u32(1u, 19u)]))), _wgslsmith_sub_i32(~(-1i), _wgslsmith_add_i32(-2147483647i, arg_1 & 0i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(2147483647i, arg_1, -676i, u_input.a), vec4<i32>(-1i, arg_2.x, 1i, arg_2.x)), vec4<i32>(var_1.x, -11542i, 0i, 56916i), vec4<i32>(u_input.a, u_input.a, 15748i, 42508i)), countOneBits(-vec4<i32>(u_input.a, arg_2.x, arg_1, arg_2.x)))), -(~(vec3<i32>(arg_2.x, arg_1, arg_2.x) & vec3<i32>(arg_1, arg_2.x, u_input.a))) << (vec3<u32>(1u, ~min(0u, 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(11900u, 19773u), vec2<u32>(4918u, 60660u))) % vec3<u32>(32u)));
    return !(any(vec2<bool>(any(vec3<bool>(false, true, true)), arg_0)) || arg_0);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(vec3<bool>(true, true, true), select(vec3<bool>(false, any(vec3<bool>(true, true, false)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), vec3<bool>(false, false, true), select(vec3<bool>(true, all(vec4<bool>(true, false, true, false)), true), vec3<bool>(true, true, true), vec3<bool>(false, any(vec3<bool>(false, false, false)), all(vec4<bool>(false, false, true, true))))), !select(vec3<bool>(true, true, func_3(true, 0i, vec2<i32>(arg_0.b, -48818i))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), true));
    let var_1 = Struct_3(Struct_2(select(!(!vec2<bool>(var_0.x, var_0.x)), select(var_0.xx, !var_0.xy, select(vec2<bool>(false, false), var_0.zx, var_0.x)), vec2<bool>(var_0.x, false)), Struct_1(28564u, 24182i << (max(arg_1.e, arg_1.a) % 32u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(arg_1.c)))), -_wgslsmith_add_i32(arg_0.b, -384i), 75507u), vec2<i32>(1i, min(u_input.a & u_input.a, arg_1.d)), abs(~abs(vec4<u32>(arg_1.e, arg_0.a, arg_1.a, 105782u)))), arg_0, Struct_2(var_0.xz, Struct_1(arg_1.e, arg_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.c, vec3<f32>(arg_1.c.x, arg_0.c.x, -1541f)) - vec3<f32>(249f, -276f, arg_1.c.x)), arg_1.b, ~(~0u)), vec2<i32>(arg_1.b, -8190i), vec4<u32>(~9919u ^ arg_1.e, arg_0.a, 1u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -154f))), 1u & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(1u, arg_1.e, arg_1.e), _wgslsmith_clamp_u32(arg_1.e, 4294967295u, arg_1.a)), reverseBits(select(vec3<u32>(arg_0.a, 28548u, arg_1.e), vec3<u32>(arg_0.e, arg_1.e, 15217u), vec3<bool>(var_0.x, false, var_0.x)))));
    global0 = array<vec2<i32>, 19>();
    let var_2 = false;
    let var_3 = 0u;
    return Struct_1(41895u, arg_1.b, vec3<f32>(550f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.b.c.x, var_1.d, !var_2)) * -368f), _wgslsmith_f_op_f32(min(var_1.a.b.c.x, -1589f))), var_1.a.c.x, ~44414u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = select(!(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(func_2(arg_0, func_2(Struct_1(40193u, 2147483647i, arg_1.c, -331i, arg_0.a), arg_1)).c.x - arg_1.c.x) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(469f, arg_0.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(arg_0.c.x - 421f))));
    let var_1 = Struct_3(Struct_2(!vec2<bool>(!var_0.x, true), func_2(Struct_1(arg_0.e, abs(-45187i), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1068f, -409f, arg_0.c.x), vec3<f32>(arg_1.c.x, -1010f, arg_0.c.x))), -arg_1.b, arg_1.e), func_2(Struct_1(78980u, 2147483647i, vec3<f32>(1303f, arg_0.c.x, 263f), 0i, 7989u), func_2(Struct_1(1u, arg_0.d, vec3<f32>(arg_0.c.x, arg_1.c.x, arg_1.c.x), u_input.a, arg_1.e), arg_1))), global0[_wgslsmith_index_u32(min(arg_0.a, min(arg_0.a, ~arg_1.e)), 19u)], ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 115901u, 32396u, 19192u), max(vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(81064u, arg_0.a, 1u, arg_0.a)))), arg_1, Struct_2(select(var_0.yx, vec2<bool>(!var_0.x, -42115i <= arg_1.d), 53957u != _wgslsmith_dot_vec2_u32(vec2<u32>(1655u, 55787u), vec2<u32>(5477u, arg_1.a))), func_2(arg_1, Struct_1(~0u, reverseBits(2147483647i), vec3<f32>(-344f, arg_1.c.x, arg_0.c.x), _wgslsmith_clamp_i32(1i, 1i, 1i), _wgslsmith_dot_vec2_u32(vec2<u32>(3215u, 1u), vec2<u32>(arg_1.a, arg_0.e)))), global0[_wgslsmith_index_u32(0u, 19u)], select(vec4<u32>(arg_0.a, abs(1u), _wgslsmith_clamp_u32(arg_0.e, 22989u, arg_1.a), arg_0.e), vec4<u32>(4294967295u, ~arg_0.a, ~0u, 0u >> (arg_1.e % 32u)), select(!var_0, var_0, select(var_0, var_0, vec4<bool>(true, false, var_0.x, false))))), arg_0.c.x, ~27840u);
    let var_2 = ~vec2<i32>(-34978i, 13592i);
    var var_3 = func_2(arg_0, Struct_1(12981u, 2147483647i, vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), var_1.a.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-701f * var_1.c.b.c.x))), _wgslsmith_mult_i32(var_2.x, min(u_input.a, _wgslsmith_clamp_i32(30110i, 0i, var_1.c.c.x))), 35549u));
    var var_4 = _wgslsmith_add_vec3_i32(select(-firstLeadingBit(vec3<i32>(1i, 2147483647i, arg_0.b)) & _wgslsmith_sub_vec3_i32(select(vec3<i32>(49475i, var_1.c.b.b, 1i), vec3<i32>(var_2.x, -21216i, var_2.x), vec3<bool>(var_1.a.a.x, true, false)), vec3<i32>(0i, var_1.c.c.x, arg_0.d) ^ vec3<i32>(arg_1.d, u_input.a, 1i)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, var_3.b, -3481i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_2.x, 24131i), vec3<i32>(-52927i, var_1.b.b, 1i))), vec3<i32>(30147i, ~(-2147483647i), -31246i), var_1.c.a.x), all(select(vec3<bool>(false, true, false), var_0.wwz, select(var_0.yyx, vec3<bool>(var_1.a.a.x, false, var_1.c.a.x), false)))), vec3<i32>(-var_3.b, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.b.b, -53023i, var_1.c.b.d, var_2.x), ~vec4<i32>(var_2.x, var_2.x, arg_1.d, -1i)), _wgslsmith_mod_i32(-2147483647i, countOneBits(arg_1.d))), -54747i));
    return _wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec4_u32((vec4<u32>(var_3.e, var_1.b.a, var_1.e, arg_0.e) & vec4<u32>(6155u, 4294967295u, arg_1.e, var_1.e)) & var_1.c.d, reverseBits(vec4<u32>(~36483u, 4294967295u, ~var_1.a.b.e, arg_0.a ^ arg_0.e))), ~(abs(~0u) >> (abs(~arg_1.e) % 32u)));
}

fn func_5(arg_0: vec4<u32>, arg_1: f32, arg_2: f32, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = true;
    global0 = array<vec2<i32>, 19>();
    global0 = array<vec2<i32>, 19>();
    var var_1 = _wgslsmith_mod_u32(func_4(func_2(func_2(func_2(Struct_1(arg_0.x, u_input.a, vec3<f32>(-1000f, arg_2, arg_1), u_input.a, arg_0.x), Struct_1(arg_0.x, -53558i, vec3<f32>(700f, arg_2, 439f), 8331i, arg_0.x)), func_2(Struct_1(26632u, arg_3.x, vec3<f32>(299f, -245f, arg_2), 32811i, 61790u), Struct_1(11197u, 36002i, vec3<f32>(1018f, arg_1, arg_1), u_input.a, arg_0.x))), func_2(func_2(Struct_1(arg_0.x, u_input.a, vec3<f32>(arg_1, -1771f, arg_1), u_input.a, 8988u), Struct_1(arg_0.x, arg_3.x, vec3<f32>(arg_1, arg_2, arg_1), arg_3.x, 0u)), func_2(Struct_1(arg_0.x, arg_3.x, vec3<f32>(arg_1, arg_1, -1031f), 2147483647i, 44937u), Struct_1(arg_0.x, -1i, vec3<f32>(2422f, -131f, arg_2), arg_3.x, 1u)))), Struct_1(~(arg_0.x | 946u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1937i, arg_3.x), _wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(68985u, 19u)], vec2<i32>(arg_3.x, 27726i))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_f_op_f32(max(arg_2, 1835f)), arg_2), func_2(func_2(Struct_1(arg_0.x, arg_3.x, vec3<f32>(arg_1, arg_1, arg_2), 2147483647i, arg_0.x), Struct_1(arg_0.x, arg_3.x, vec3<f32>(arg_1, -1000f, 1000f), 2147483647i, 1u)), func_2(Struct_1(arg_0.x, 2696i, vec3<f32>(1277f, arg_2, 1712f), -13114i, arg_0.x), Struct_1(arg_0.x, 29753i, vec3<f32>(-492f, arg_2, arg_1), arg_3.x, arg_0.x))).b, _wgslsmith_mult_u32(2452u, arg_0.x))), func_4(Struct_1(arg_0.x, -_wgslsmith_sub_i32(arg_3.x, -4491i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(502f, 1000f, arg_2), false)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, 2577f, arg_1))), vec3<bool>(var_0, false, var_0))), arg_3.x, max(~arg_0.x, _wgslsmith_mult_u32(arg_0.x, 38991u))), Struct_1(_wgslsmith_mod_u32(arg_0.x, ~21954u), 0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1078f, -648f, -935f), vec3<f32>(arg_2, -526f, arg_2))), _wgslsmith_add_i32(u_input.a & 12415i, 1i), ~(arg_0.x & 4294967295u))));
    var var_2 = _wgslsmith_f_op_f32(-arg_2);
    return Struct_3(Struct_2(vec2<bool>(any(select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, false, false, var_0), vec4<bool>(var_0, var_0, false, false))), false), Struct_1(53466u << (1u % 32u), func_2(func_2(Struct_1(arg_0.x, u_input.a, vec3<f32>(arg_1, arg_2, -1259f), arg_3.x, 21107u), Struct_1(4294967295u, arg_3.x, vec3<f32>(-1580f, 1000f, arg_2), arg_3.x, arg_0.x)), func_2(Struct_1(109027u, arg_3.x, vec3<f32>(arg_2, arg_1, arg_2), arg_3.x, 51u), Struct_1(arg_0.x, 2147483647i, vec3<f32>(611f, arg_2, arg_1), -2147483647i, 13792u))).d, vec3<f32>(_wgslsmith_f_op_f32(365f + 1000f), -1394f, _wgslsmith_f_op_f32(arg_1 * arg_2)), -1i, arg_0.x), _wgslsmith_div_vec2_i32(select(vec2<i32>(-2147483647i, arg_3.x), arg_3, arg_0.x == 1u), vec2<i32>(-u_input.a, arg_3.x)), ~firstTrailingBit(vec4<u32>(4294967295u, 0u, 1u, arg_0.x))), func_2(func_2(func_2(Struct_1(1u, -1i, vec3<f32>(-1239f, -908f, 254f), 2147483647i, arg_0.x), func_2(Struct_1(4294967295u, 0i, vec3<f32>(-508f, arg_1, 1005f), arg_3.x, arg_0.x), Struct_1(arg_0.x, u_input.a, vec3<f32>(arg_2, -365f, -1053f), 41763i, 1u))), func_2(func_2(Struct_1(arg_0.x, -2147483647i, vec3<f32>(146f, arg_2, 775f), u_input.a, 1u), Struct_1(24375u, arg_3.x, vec3<f32>(arg_1, arg_2, arg_1), 7577i, 4294967295u)), func_2(Struct_1(16487u, u_input.a, vec3<f32>(arg_1, -1653f, arg_1), 1i, 1u), Struct_1(1u, u_input.a, vec3<f32>(arg_1, -344f, 843f), u_input.a, arg_0.x)))), func_2(func_2(func_2(Struct_1(arg_0.x, -3164i, vec3<f32>(arg_1, arg_2, arg_1), arg_3.x, arg_0.x), Struct_1(37638u, u_input.a, vec3<f32>(arg_1, arg_1, 168f), -27810i, arg_0.x)), func_2(Struct_1(arg_0.x, -61667i, vec3<f32>(arg_1, arg_2, arg_1), arg_3.x, arg_0.x), Struct_1(4294967295u, u_input.a, vec3<f32>(arg_1, -495f, arg_1), arg_3.x, arg_0.x))), Struct_1(_wgslsmith_add_u32(13173u, 67539u), u_input.a, vec3<f32>(121f, 2467f, arg_1), 2147483647i, arg_0.x))), Struct_2(select(vec2<bool>(var_0, var_0 == var_0), select(!vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), false | var_0), !var_0 && (true && var_0)), func_2(func_2(func_2(Struct_1(0u, arg_3.x, vec3<f32>(-657f, -711f, -228f), arg_3.x, arg_0.x), Struct_1(arg_0.x, arg_3.x, vec3<f32>(arg_2, arg_1, 1009f), -1i, 151779u)), func_2(Struct_1(8337u, -45508i, vec3<f32>(-1456f, 255f, 1492f), -2147483647i, 4294967295u), Struct_1(arg_0.x, arg_3.x, vec3<f32>(615f, arg_2, 403f), u_input.a, arg_0.x))), Struct_1(~arg_0.x, -1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_1, arg_1)), _wgslsmith_clamp_i32(-5796i, -1i, u_input.a), arg_0.x ^ 4294967295u)), -vec2<i32>(arg_3.x, ~2147483647i), select(~_wgslsmith_div_vec4_u32(arg_0, arg_0), firstLeadingBit(reverseBits(arg_0)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-978f + arg_2)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_2, arg_2)), _wgslsmith_f_op_f32(469f + arg_2), false)))), _wgslsmith_div_u32(19109u, func_4(func_2(Struct_1(arg_0.x, arg_3.x, vec3<f32>(arg_1, 631f, arg_1), u_input.a, arg_0.x), Struct_1(arg_0.x, 1i, vec3<f32>(1178f, 176f, arg_2), -82892i, arg_0.x)), func_2(func_2(Struct_1(0u, u_input.a, vec3<f32>(662f, arg_2, 464f), u_input.a, 4294967295u), Struct_1(4294967295u, 1i, vec3<f32>(arg_2, -734f, arg_2), 0i, 4294967295u)), Struct_1(arg_0.x, 1i, vec3<f32>(arg_2, -441f, arg_1), arg_3.x, arg_0.x)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = ~vec4<i32>(u_input.a, arg_1.b, 0i, arg_1.d) | _wgslsmith_sub_vec4_i32(~(~vec4<i32>(arg_1.d, 0i, 1i, u_input.a)), -vec4<i32>(arg_1.b, arg_1.d, arg_1.d, countOneBits(u_input.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(327f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1044f), _wgslsmith_f_op_f32(-986f * arg_1.c.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), arg_1.c.x)))));
    let var_2 = func_5(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a, 20782u), vec2<u32>(arg_0, arg_0)) >> (vec2<u32>(arg_1.a, 0u) % vec2<u32>(32u))), func_4(func_2(arg_1, arg_1), Struct_1(arg_0, 7338i, arg_1.c, arg_1.b, arg_0)) & max(~arg_1.a, ~arg_0), ~1u, arg_0), 333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -205f)))), firstLeadingBit(-_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(-14860i, -10596i)), global0[_wgslsmith_index_u32(24876u, 19u)])));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 61803u;
    var_0 = _wgslsmith_add_u32(select(11143u ^ _wgslsmith_mod_u32(func_1(78789u, Struct_1(89551u, -21036i, vec3<f32>(2246f, -338f, 824f), u_input.a, 1u)), ~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 15656u), select(vec4<u32>(0u, 11623u, 104478u, 18390u), vec4<u32>(4294967295u, 0u, 0u, 33657u), vec4<bool>(false, true, false, true))) >> (~11955u % 32u), true), 4294967295u);
    var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, min(~44598u, 32617u), 73144u, _wgslsmith_dot_vec4_u32(~vec4<u32>(12219u, 1u, 117167u, 25388u), vec4<u32>(1u, 1u, 1u, 1u))), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 59274u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, true, true))), ~vec4<u32>(~70193u, 1u, ~0u, countOneBits(4294967295u))));
}

