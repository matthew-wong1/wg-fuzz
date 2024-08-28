struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-1233i, -45453i), vec2<i32>(7018i, -1i), vec2<i32>(0i, -12708i), vec2<i32>(5668i, 41613i), vec2<i32>(0i, -1i), vec2<i32>(0i, 13037i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, 1i), vec2<i32>(21213i, 29871i), vec2<i32>(-1i, 0i), vec2<i32>(-6220i, 20501i), vec2<i32>(38614i, -22806i), vec2<i32>(11455i, -11479i), vec2<i32>(4244i, -23469i), vec2<i32>(-1i, -30734i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, -5495i), vec2<i32>(41618i, 26541i), vec2<i32>(-3645i, 2147483647i), vec2<i32>(-7500i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1880i, 7776i), vec2<i32>(-26724i, -16263i), vec2<i32>(54548i, -47487i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 44i), vec2<i32>(-14568i, i32(-2147483648)), vec2<i32>(1i, -14081i), vec2<i32>(1i, 1i), vec2<i32>(-1i, 86654i), vec2<i32>(-83625i, 2147483647i), vec2<i32>(1i, 11410i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = true;
    var_0 = true;
    let var_1 = 21812u;
    let var_2 = arg_1;
    let var_3 = arg_0;
    return reverseBits(_wgslsmith_add_i32(u_input.b.x, abs(0i ^ arg_0))) & select(-7225i, _wgslsmith_add_i32(u_input.b.x, var_3), false);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(arg_0.c.a)));
    var var_1 = Struct_1(arg_1.a);
    let var_2 = reverseBits(vec4<i32>(-1i, _wgslsmith_add_i32(~(~(-39463i)), u_input.b.x), -abs(u_input.b.x) << (~(~105013u) % 32u), func_3(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_clamp_i32(8755i, 38759i, -23454i)), Struct_1(-119f))));
    let var_3 = 0u;
    let var_4 = _wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, ~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3, 73060u, arg_0.b), vec4<u32>(var_3, 84296u, arg_0.b, 45375u)), 7352u) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(3157u, var_3, var_3, var_3), vec4<u32>(4294967295u, arg_0.b, 10589u, u_input.c.x))), vec4<u32>(_wgslsmith_add_u32(3210u, 30910u), 5602u, abs(~4408u), ~_wgslsmith_add_u32(0u, var_3)) << (firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b, 50705u, u_input.c.x, 19994u), min(vec4<u32>(arg_0.b, 0u, 53002u, u_input.c.x), vec4<u32>(u_input.c.x, 50821u, var_3, arg_0.b)))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), -492f, arg_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-504f + 723f) * _wgslsmith_f_op_f32(-arg_0.c.a))) + vec4<f32>(1000f, 1900f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_1.a)))), _wgslsmith_f_op_f32(floor(621f)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> Struct_1 {
    global0 = 40278i;
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_3), _wgslsmith_f_op_f32(920f - arg_3))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(-428f), 37500u, Struct_1(245f)), Struct_1(-154f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1112f, arg_2, -249f, -802f)))), true))));
    global0 = firstLeadingBit(u_input.a.x);
    var var_1 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, -2096f)) - _wgslsmith_f_op_f32(-arg_0.x)), -546f, arg_0.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(var_0.x), 14198u, Struct_1(-417f)), Struct_1(-1822f))).x));
    return Struct_1(var_0.x);
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = 1i;
    var var_1 = !(!(!select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false), any(vec4<bool>(false, true, true, true)))));
    var_1 = vec4<bool>(true, !((!var_1.x & (var_1.x && false)) || !any(vec2<bool>(false, var_1.x))), true && var_1.x, all(var_1.zyw));
    global0 = var_0;
    var var_2 = var_0 ^ _wgslsmith_sub_i32(~u_input.a.x, var_0);
    return max(7183i, abs(u_input.a.x) << ((~4294967295u << (~4294967295u % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-542f);
    global0 = u_input.a.x;
    global0 = _wgslsmith_dot_vec3_i32(-u_input.d, vec3<i32>(u_input.a.x, u_input.b.x, 0i));
    global1 = array<vec2<i32>, 32>();
    global1 = array<vec2<i32>, 32>();
    var var_1 = vec3<i32>(u_input.b.x, func_4(Struct_2(func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a, var_0.a, -635f), vec3<f32>(964f, var_0.a, -323f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1298f, -941f))), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.a * 1368f)), u_input.c.x, var_0)), _wgslsmith_mod_i32(-23125i, -(~countOneBits(u_input.a.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, -1000f, var_0.a), vec3<f32>(var_0.a, var_0.a, 1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-109f * _wgslsmith_f_op_vec4_f32(func_2(Struct_2(func_1(vec3<f32>(var_2.x, var_2.x, var_2.x), var_2.xy, -703f, var_0.a), ~4294967295u, func_1(vec3<f32>(var_0.a, -1245f, var_0.a), var_2.yy, var_0.a, var_2.x)), Struct_1(_wgslsmith_f_op_f32(var_2.x * var_0.a)))).x), vec4<f32>(_wgslsmith_f_op_f32(ceil(2698f)), _wgslsmith_f_op_f32(round(540f)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(511f))))), abs(var_1.x));
}

