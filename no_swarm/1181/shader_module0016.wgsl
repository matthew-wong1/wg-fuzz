struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 17536i), vec2<i32>(0i, -5294i), vec2<i32>(-16595i, 1i), vec2<i32>(-1i, 24755i), vec2<i32>(-13588i, 1i), vec2<i32>(-32275i, -20542i), vec2<i32>(i32(-2147483648), -52462i), vec2<i32>(18389i, 1i), vec2<i32>(1i, -1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(26499i, -7809i), vec2<i32>(27262i, -1i), vec2<i32>(-39223i, 33716i), vec2<i32>(16009i, 2147483647i), vec2<i32>(7132i, 42075i), vec2<i32>(3969i, 61577i), vec2<i32>(-78555i, 1i), vec2<i32>(-1i, 42044i), vec2<i32>(-10991i, -6068i), vec2<i32>(1i, -3229i), vec2<i32>(-46094i, -59845i), vec2<i32>(-10552i, -21831i));

var<private> global1: u32 = 66958u;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f), _wgslsmith_f_op_f32(1311f - -1365f))));
    let var_1 = any(vec4<bool>(!all(vec3<bool>(true, true, true)), select(true, true, true), true, true));
    var var_2 = vec3<f32>(-1362f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1319f * 438f)), _wgslsmith_f_op_f32(f32(-1f) * -1971f), any(vec4<bool>(false, var_1, false, true)) | (var_1 | false))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1877f * 749f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1566f * -466f) + 777f))), _wgslsmith_f_op_f32(f32(-1f) * -591f));
    var var_3 = Struct_1(u_input.a);
    let var_4 = _wgslsmith_add_vec3_i32(vec3<i32>(-(~1i), ~(2147483647i >> (_wgslsmith_div_u32(arg_0, 33622u) % 32u)), min(1i, -countOneBits(-947i))), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(1i, 6623i, 37387i)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-4799i, 1i, -2462i), vec3<i32>(-1i, -2147483647i, -3229i), vec3<i32>(-1i, -14217i, 1i))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(u_input.b.zx), vec2<u32>(u_input.a, 61992u)), ~36899u, _wgslsmith_mult_u32(arg_0, countOneBits(4294967295u))) % vec3<u32>(32u)));
    return !select(select(!(!vec4<bool>(false, var_1, var_1, false)), select(vec4<bool>(var_1, false, true, var_1), vec4<bool>(var_1, true, var_1, var_1), all(vec2<bool>(true, var_1))), !var_1), vec4<bool>(var_1, var_1, false, -2147483647i != ~var_4.x), !all(!vec4<bool>(var_1, true, var_1, var_1)));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(545f * 193f);
    var var_1 = _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 723u), vec2<u32>(arg_0, 60305u)), ~vec2<u32>(u_input.b.x, 1u)), vec2<u32>(u_input.a, reverseBits(u_input.a)));
    global1 = 1u;
    global0 = array<vec2<i32>, 23>();
    var var_2 = Struct_1(4294967295u | u_input.b.x);
    return vec4<bool>(true & any(!func_3(51021u)), true, false, true);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> u32 {
    global1 = 19995u;
    var var_0 = Struct_1(1u);
    let var_1 = ~vec4<u32>(7218u, 1u, ~_wgslsmith_sub_u32(var_0.a, reverseBits(var_0.a)), _wgslsmith_add_u32(firstTrailingBit(~u_input.b.x), var_0.a));
    global1 = ~0u ^ abs(~_wgslsmith_mult_u32(1u, ~var_1.x));
    let var_2 = Struct_1(countOneBits(1u));
    return var_0.a;
}

fn func_1(arg_0: vec4<i32>) -> vec4<u32> {
    global1 = ~func_4(!func_2(_wgslsmith_div_u32(1u, u_input.b.x)), _wgslsmith_div_i32(_wgslsmith_sub_i32(-arg_0.x, min(26893i, arg_0.x)), _wgslsmith_sub_i32(1i >> (0u % 32u), -25670i)));
    var var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(701i, _wgslsmith_mult_i32(-769i, -18503i)), _wgslsmith_add_i32(arg_0.x, min(47289i, arg_0.x)), arg_0.x, (13015i ^ arg_0.x) | _wgslsmith_add_i32(arg_0.x, -12414i)) & arg_0);
    let var_1 = 52208i;
    global1 = u_input.a;
    var_0 = countOneBits(-arg_0);
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, ~u_input.b.x, ~(~1u), u_input.a), ~(~(~(vec4<u32>(u_input.b.x, u_input.b.x, 3064u, 125961u) & vec4<u32>(u_input.a, 6580u, u_input.b.x, 20257u)))), vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, 7313u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -2147483647i;
    global0 = array<vec2<i32>, 23>();
    var var_1 = Struct_2(~(~vec4<u32>(~4294967295u, ~5340u, _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, 49088u)), firstLeadingBit(u_input.b.x))), u_input.a >> (max(0u, min(firstLeadingBit(u_input.b.x), firstLeadingBit(3930u))) % 32u), ~select(~vec4<u32>(16585u, 1u, u_input.b.x, 22053u), ~vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.a), vec4<bool>(false, false, true, true)) ^ func_1(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -64443i, -1i, 0i), vec4<i32>(2147483647i, 16080i, 5760i, -1i)))), Struct_1(_wgslsmith_div_u32(~(~6953u), abs(~98575u))));
    global1 = ~reverseBits(~countOneBits(1u));
    var var_2 = vec4<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 1u, u_input.a, u_input.b.x) << (~var_1.a % vec4<u32>(32u)), var_1.a), func_4(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, false, false), func_2(u_input.a)), func_2(47602u), vec4<bool>(true, true, true, true)), -9194i), u_input.a, 4294967295u);
    let var_3 = !(any(vec3<bool>(true, true, true)) | all(vec2<bool>(true, true)));
    var var_4 = ~_wgslsmith_clamp_i32(min(-1i, -19377i) & reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(32503i, 1i, -28355i, 16779i), vec4<i32>(12964i, -8097i, -11959i, -38303i))), -1i, 1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, 14892i, 2147483647i, 1i)));
    var var_5 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1168f - 797f), -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(113f, -712f), vec2<f32>(1000f, -1712f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1593f, 211f)))))));
    var_5 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1094f)) * var_5.x), _wgslsmith_f_op_f32(-var_5.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_1.a.x | _wgslsmith_dot_vec3_u32(reverseBits(var_1.c.wwx), _wgslsmith_mult_vec3_u32(u_input.b, u_input.b)), ~u_input.a), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u) & firstTrailingBit(vec2<u32>(1u, u_input.a)), ~var_1.c.yw, u_input.b.zy)), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 30434i, 31318i, 0i), ~vec4<i32>(-4636i, -33602i, 2147483647i, -1i)) & min(-54535i, 0i), 1i, 1i >> (firstLeadingBit(36971u) % 32u), 1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, 50942u), vec2<u32>(var_2.x, u_input.b.x), vec2<u32>(var_1.d.a, var_1.a.x))) % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -(~0i), ~1i, ~1i), -_wgslsmith_sub_vec4_i32(vec4<i32>(-19690i, 15326i, 1i, 8184i), max(vec4<i32>(-2351i, 0i, 2147483647i, 2147483647i), vec4<i32>(32189i, -1i, -1i, 0i)))), 9836i);
}

