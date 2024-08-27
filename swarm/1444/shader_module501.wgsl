struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-77254i, 4117i, 35269i, 1i, 5738i, 2147483647i, 2147483647i, 32983i, 39377i, 5227i, 2147483647i, 0i, -1i, i32(-2147483648), 0i, i32(-2147483648), 0i, i32(-2147483648));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -388f))))))), -299f, 409f);
    global0 = array<i32, 18>();
    let var_1 = arg_2.c.wz;
    var var_2 = arg_1;
    var var_3 = vec2<i32>(-1i) * -vec2<i32>(~(~global0[_wgslsmith_index_u32(1u, 18u)]), -_wgslsmith_sub_i32(u_input.b, -66291i));
    return select(!(!select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1))), vec4<bool>(any(vec3<bool>(any(vec4<bool>(true, true, arg_1, arg_1)), arg_1, arg_1)), false & (true != any(vec3<bool>(arg_1, arg_1, arg_1))), any(!vec2<bool>(arg_1, true)), !(false || arg_1)), any(select(vec3<bool>(arg_1, !arg_1, !arg_1), select(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, arg_1, true), false), !vec3<bool>(false, arg_1, arg_1), all(vec2<bool>(false, arg_1))), select(vec3<bool>(true, true, false), vec3<bool>(arg_1, false, false), arg_1))));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = Struct_1(vec4<u32>(4294967295u, firstLeadingBit(53503u), u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~25814u, 40942u >> (arg_0 % 32u)), u_input.a.x)));
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    return !select(vec4<bool>(true, true, true, true), !vec4<bool>(false, all(vec4<bool>(false, false, true, true)), all(vec3<bool>(false, true, true)), u_input.b == 0i), func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-670f - 430f))), false, Struct_2(_wgslsmith_f_op_f32(select(-297f, -2485f, true)), Struct_1(var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(143f, 1128f, -178f, 355f))), Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(401f, 235f, 2459f, 1000f) - vec4<f32>(865f, -1000f, 1196f, -442f)))));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_5) -> Struct_4 {
    var var_0 = -768f;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1350f + -2031f))), -825f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1214f - 189f));
    let var_2 = select(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, arg_0), 0i) & -2147483647i, global0[_wgslsmith_index_u32(abs(~14139u), 18u)], arg_1.x);
    var_0 = var_1.x;
    let var_3 = _wgslsmith_clamp_vec4_u32(~(~(~abs(vec4<u32>(1u, arg_2.a.x, u_input.a.x, 22799u)))), firstLeadingBit(~(vec4<u32>(1u, arg_2.a.x, 18406u, 53969u) << (vec4<u32>(4294967295u, 36566u, 1u, u_input.a.x) % vec4<u32>(32u))) | vec4<u32>(arg_2.a.x, 2575u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 217u), arg_2.a), 1u)), ~max(~(vec4<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 4294967295u, 23661u, arg_2.a.x)));
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1404f, 710f, 1551f, var_1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(232f, -802f, var_1.x, var_1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, -922f), vec4<f32>(-830f, -1616f, var_1.x, var_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_2.b.x))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -1995f)), -1000f, var_1.x, -604f)));
}

fn func_1(arg_0: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(464f));
    let var_1 = func_4(u_input.b, func_2(u_input.a.x), Struct_5(u_input.a, vec3<bool>(true, true, true)));
    let var_2 = !func_2(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u), vec4<u32>(4294967295u, u_input.a.x, 15640u, arg_0)), arg_0 & 0u, true)).zw;
    var var_3 = Struct_3(u_input.b);
    var var_4 = vec3<i32>(_wgslsmith_mod_i32(min(40318i, 2147483647i), -(~1i)), 0i, 2147483647i) >> (vec3<u32>(4294967295u, select(u_input.a.x ^ arg_0, 94594u, false), arg_0) % vec3<u32>(32u));
    return firstLeadingBit(~vec4<u32>(firstLeadingBit(1936u), arg_0 >> (0u % 32u), max(u_input.a.x, 2758u), ~u_input.a.x) >> (~(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(806f, 188f)) * _wgslsmith_div_f32(1300f, -785f))))));
    var var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(func_1(min(u_input.a.x, u_input.a.x)), ~vec4<u32>(firstLeadingBit(46352u), u_input.a.x, firstTrailingBit(29142u), max(u_input.a.x, 57639u))), vec4<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 90566u, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u)), ~u_input.a.x)), 24087u, u_input.a.x));
    var var_2 = vec3<bool>(!(!all(vec4<bool>(false, false, false, true))), ~(1u >> (var_1.x % 32u)) == abs(firstLeadingBit(var_1.x)), true);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(882f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f), 1087f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(2558f, 1160f)), _wgslsmith_f_op_f32(floor(1000f))))));
    var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 30026u, var_1.x), vec4<u32>(_wgslsmith_mult_u32(reverseBits(1u), abs(u_input.a.x)), ~_wgslsmith_clamp_u32(3528u, 4294967295u, u_input.a.x), select(select(17053u, 12869u, true), _wgslsmith_clamp_u32(var_1.x, 4294967295u, 1u), any(vec4<bool>(var_2.x, var_2.x, true, false))), u_input.a.x)), ~_wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 57833u, var_1.x, u_input.a.x), vec4<u32>(var_1.x, u_input.a.x, var_1.x, 0u))), select(vec4<u32>(23235u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, var_1.x, u_input.a.x, 0u), vec4<bool>(var_2.x, false, false, true)) ^ ~vec4<u32>(1u, 0u, var_1.x, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1111f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1241f + 876f))) - _wgslsmith_f_op_f32(f32(-1f) * -707f))), ~firstTrailingBit(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 14957u, var_1.x), vec3<u32>(43825u, 89370u, u_input.a.x), vec3<u32>(u_input.a.x, 96705u, u_input.a.x)), vec3<u32>(var_1.x, u_input.a.x, var_1.x), false)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, ~reverseBits(global0[_wgslsmith_index_u32(var_1.x, 18u)])), vec2<i32>(countOneBits(1i), ~(~50396i))), vec2<f32>(_wgslsmith_f_op_f32(-177f + _wgslsmith_f_op_f32(f32(-1f) * -251f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-866f + 236f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-746f)) - _wgslsmith_f_op_f32(f32(-1f) * -413f)))));
}

