struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(80156u, 0u), vec2<u32>(1u, 65446u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(72161u, 10601u), vec2<u32>(6831u, 0u), vec2<u32>(37709u, 7296u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(45411u, 44083u), vec2<u32>(9981u, 0u), vec2<u32>(0u, 3603u), vec2<u32>(4294967295u, 11968u), vec2<u32>(29769u, 38176u), vec2<u32>(1u, 4294967295u), vec2<u32>(71475u, 1u), vec2<u32>(4282u, 0u), vec2<u32>(43836u, 0u), vec2<u32>(42215u, 4294967295u), vec2<u32>(1u, 17360u), vec2<u32>(4294967295u, 69993u), vec2<u32>(37486u, 76703u), vec2<u32>(54309u, 6749u), vec2<u32>(12950u, 1u), vec2<u32>(75618u, 4706u), vec2<u32>(1u, 19434u), vec2<u32>(2935u, 60604u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(24472u, 0u), vec2<u32>(25186u, 19108u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_f32(-396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1038f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_div_f32(-1258f, _wgslsmith_f_op_f32(ceil(var_0)))))));
    global0 = array<vec2<u32>, 32>();
    global0 = array<vec2<u32>, 32>();
    global0 = array<vec2<u32>, 32>();
    return _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(1i, 1i)), ~firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(14917i, 4410i), vec2<i32>(-4366i, 0i))) << (~global0[_wgslsmith_index_u32(u_input.a, 32u)] % vec2<u32>(32u)));
}

fn func_2(arg_0: u32) -> Struct_3 {
    global0 = array<vec2<u32>, 32>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(-1i, -2147483647i >> (u_input.a % 32u)), 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-2398f)), _wgslsmith_div_f32(538f, -999f)))), ~arg_0, ~u_input.a | 2777u);
    var var_1 = Struct_1((~func_3() | 1i) << (4294967295u % 32u), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(abs(var_0.a.b.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_0.a.b, _wgslsmith_f_op_vec2_f32(-var_0.a.b))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_0.a.b, var_0.a.b))), vec2<bool>(true, true)))));
    var var_2 = var_0.a.b.x >= _wgslsmith_f_op_f32(239f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(535f, -1000f, true))));
    var var_3 = 1f;
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 782f, -1034f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-276f, -638f, 1057f)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.a.b.x)), 248f, _wgslsmith_div_f32(var_1.b.x, var_0.a.b.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.x, var_0.a.b.x, 1000f)))), var_0.a);
}

fn func_1(arg_0: bool, arg_1: bool) -> vec2<f32> {
    var var_0 = all(!(!(!select(vec2<bool>(false, arg_0), vec2<bool>(arg_1, true), false))));
    var var_1 = func_2(countOneBits(~abs(u_input.a)));
    var var_2 = ~_wgslsmith_add_u32(countOneBits(u_input.a), 7501u) << (_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 777u, 0u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), 32u)], select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 23362u), global0[_wgslsmith_index_u32(~4294967295u, 32u)]), ~global0[_wgslsmith_index_u32(~1u, 32u)], vec2<bool>(any(vec3<bool>(arg_0, arg_0, arg_1)), !arg_0))) % 32u);
    let var_3 = ~_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 56375u, u_input.a)), u_input.a);
    let var_4 = Struct_2(var_1.b, _wgslsmith_mult_u32(0u, abs(abs(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(1u, 32u)], vec2<u32>(1u, 5551u))))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, var_3), vec4<u32>(var_3, u_input.a, u_input.a, var_3))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(var_3, 0u, 1u)), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(30143u, u_input.a, var_3), vec3<u32>(u_input.a, 26594u, u_input.a)), 47314u)), u_input.a));
    return vec2<f32>(-1000f, var_1.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1067f, 1374f, -1058f)) - vec3<f32>(-731f, 1483f, 385f))))), Struct_1(countOneBits(-1i), _wgslsmith_f_op_vec2_f32(func_1(false, any(vec3<bool>(true, false, true))))));
    var_0 = func_2(~14658u);
    var var_1 = all(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, false, false, false)))), true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))) | (1u != u_input.a), any(vec3<bool>(select(true, false, true), true, any(vec3<bool>(true, true, false))))));
    var_1 = ~_wgslsmith_clamp_u32(~(~1u), ~1u, 60793u << (0u % 32u)) == (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u), ~vec3<u32>(41528u, 0u, 6211u)) << (max(~u_input.a, u_input.a) % 32u));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-121f * -444f))), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1621f)) + var_0.a.x) == var_0.a.x, false)).x));
    var var_3 = Struct_5(-1754i, Struct_2(var_0.b, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(7013u, 0u, 0u))), u_input.a));
    var var_4 = Struct_5(i32(-1i) * -2147483647i, Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, var_3.a, -88079i), ~vec4<i32>(26299i, -2147483647i, 6636i, 77345i)), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_3.b.a.b.x)), _wgslsmith_f_op_f32(floor(-411f)))), ~u_input.a, var_3.b.b));
    let var_5 = Struct_2(Struct_1(~min(0i, select(0i, -1i, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.b.a.b))), firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_4.b.c, u_input.a, 42883u) | ~vec3<u32>(var_4.b.c, var_4.b.c, 0u), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_3.b.b, var_4.b.c), vec3<u32>(46505u, u_input.a, u_input.a)), vec3<u32>(u_input.a, 39241u, 4294967295u) >> (vec3<u32>(var_3.b.b, u_input.a, 6182u) % vec3<u32>(32u))))), 13283u);
    let x = u_input.a;
    s_output = StorageBuffer(1204f, ~var_5.b, -_wgslsmith_add_i32(var_3.b.a.a, -18934i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1822f, var_4.b.a.b.x, 1324f) + var_0.a)))), var_0.a));
}

