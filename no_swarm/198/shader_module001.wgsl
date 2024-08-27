struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(-1093f, -788f, -410f), vec3<f32>(189f, 1671f, 323f), vec3<f32>(1620f, 657f, 2003f), vec3<f32>(-1498f, -1271f, 1000f), vec3<f32>(213f, -1202f, 252f), vec3<f32>(373f, -989f, -1000f), vec3<f32>(-682f, 140f, -1383f), vec3<f32>(-641f, 1310f, 430f), vec3<f32>(434f, 383f, -1113f));

var<private> global1: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<u32> {
    global0 = array<vec3<f32>, 9>();
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(79840u, firstTrailingBit(0u), reverseBits(u_input.a))), ~(~_wgslsmith_sub_u32(1u, 1u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(0u, 8128u))), -2147483647i, select(vec2<bool>(true, all(vec3<bool>(true, false, false))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), !all(vec4<bool>(true, false, true, false))), true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1139f, 335f, -515f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(107f, 2345f, 1957f) + global0[_wgslsmith_index_u32(u_input.a, 9u)])))))));
    var var_1 = Struct_1(~var_0.a, abs(-8688i), var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(var_0.a.x, 9u)], var_0.d)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, -1537f, var_0.d.x) - vec3<f32>(354f, 1014f, var_0.d.x)), _wgslsmith_f_op_vec3_f32(var_0.d * var_0.d)))));
    var_0 = Struct_1(~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, var_0.a.x, 0u), _wgslsmith_clamp_vec3_u32(var_0.a >> (var_0.a % vec3<u32>(32u)), var_0.a, vec3<u32>(var_1.a.x, 0u, 17449u))), ~_wgslsmith_mod_i32(firstLeadingBit(1i), -2147483647i), vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(284f - 535f), _wgslsmith_div_f32(-172f, var_1.d.x), var_1.d.x)))));
    global0 = array<vec3<f32>, 9>();
    return ~vec3<u32>(57919u, 1u << (_wgslsmith_mod_u32(u_input.a, 1u) % 32u), 18936u);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_3) -> u32 {
    global1 = ~(~(-29527i));
    let var_0 = arg_1;
    global0 = array<vec3<f32>, 9>();
    let var_1 = Struct_3(arg_3.a, arg_3.c, Struct_2(arg_3.b.d | _wgslsmith_sub_vec3_u32(func_3(), max(arg_3.b.b.a, vec3<u32>(82584u, 57482u, 77495u))), arg_3.c.b, -1i, firstTrailingBit(arg_3.b.a)));
    let var_2 = var_1.c.b;
    return 4294967295u;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: i32) -> vec4<i32> {
    var var_0 = ~abs((vec2<u32>(1u, 4294967295u) & vec2<u32>(4294967295u, u_input.a)) | vec2<u32>(4294967295u, 33669u)) ^ vec2<u32>(~countOneBits(func_2(true, arg_0, vec2<f32>(arg_0, arg_0), Struct_3(global0[_wgslsmith_index_u32(u_input.a, 9u)], Struct_2(vec3<u32>(u_input.a, u_input.a, 0u), Struct_1(vec3<u32>(1u, 1u, u_input.a), arg_2, vec2<bool>(true, true), vec3<f32>(-1607f, -2339f, -353f)), 2147483647i, vec3<u32>(u_input.a, 1u, 2453u)), Struct_2(vec3<u32>(33111u, u_input.a, u_input.a), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), arg_2, arg_1.xz, global0[_wgslsmith_index_u32(u_input.a, 9u)]), arg_2, vec3<u32>(1u, 26148u, u_input.a))))), u_input.a);
    let var_1 = -(~vec2<i32>(17750i, max(arg_2, arg_2)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    global1 = _wgslsmith_add_i32(abs(1356i), _wgslsmith_mod_i32(35743i, _wgslsmith_div_i32(-_wgslsmith_mult_i32(arg_2, arg_2), select(1i, -var_1.x, false))));
    global1 = -(~(firstTrailingBit(arg_2) | -(~(-2147483647i))));
    let var_2 = vec3<i32>(-4179i, (-10859i << (u_input.a % 32u)) & ~arg_2, _wgslsmith_add_i32(arg_2, arg_2));
    return ~vec4<i32>(arg_2, _wgslsmith_clamp_i32(reverseBits(var_1.x), _wgslsmith_div_i32(arg_2 | 1i, 32400i << (0u % 32u)), reverseBits(3318i)), var_2.x, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~(-43666i), (-(~52477i) & firstTrailingBit(_wgslsmith_add_i32(3128i, 0i))) >> (1u % 32u));
    global0 = array<vec3<f32>, 9>();
    let var_1 = -func_1(_wgslsmith_f_op_f32(f32(-1f) * -1077f), vec3<bool>(true, true, true), var_0.x);
    var var_2 = Struct_2(vec3<u32>(56663u, ~102409u, 2265u), Struct_1(vec3<u32>(1u, ~(~u_input.a), select(~u_input.a, u_input.a, true)), 1i, vec2<bool>(true, true), global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(17685u, 23636u, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a)), ~61432u), firstLeadingBit(firstLeadingBit(21702u))), 9u)]), var_0.x, max(~(~(~vec3<u32>(17126u, u_input.a, u_input.a))), vec3<u32>(~u_input.a, u_input.a, ~abs(u_input.a))));
    var var_3 = ~countOneBits(vec3<u32>(~u_input.a, _wgslsmith_sub_u32(~22627u, u_input.a), 39280u));
    var_2 = Struct_2(~(~_wgslsmith_mult_vec3_u32(var_2.d, vec3<u32>(var_3.x, var_3.x, 9924u) ^ var_2.d)), var_2.b, _wgslsmith_mult_i32(min(-var_1.x | 0i, var_2.b.b), _wgslsmith_mult_i32(var_1.x, -30694i)), firstLeadingBit(vec3<u32>(~var_3.x, ~u_input.a, firstTrailingBit(u_input.a))));
    let var_4 = _wgslsmith_f_op_f32(var_2.b.d.x * var_2.b.d.x);
    let var_5 = max(select(vec2<u32>(_wgslsmith_mod_u32(~4294967295u, 3187u), func_2(any(vec3<bool>(true, var_2.b.c.x, true)), var_2.b.d.x, _wgslsmith_f_op_vec2_f32(var_2.b.d.xy + vec2<f32>(var_4, var_2.b.d.x)), Struct_3(vec3<f32>(-1572f, var_2.b.d.x, 289f), Struct_2(var_2.d, var_2.b, var_0.x, var_2.b.a), Struct_2(vec3<u32>(0u, 1u, u_input.a), Struct_1(var_2.a, var_2.c, var_2.b.c, vec3<f32>(var_2.b.d.x, var_4, var_2.b.d.x)), -1i, vec3<u32>(var_3.x, 33073u, u_input.a))))), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.a), var_2.d.yx), vec2<bool>(true, true)), _wgslsmith_mod_vec2_u32(~firstLeadingBit(~var_2.d.xy), vec2<u32>(~var_2.a.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_2.d.x, var_2.b.a.x), _wgslsmith_add_u32(46241u, 14773u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, 0u, 1506u, var_3.x), vec4<u32>(26594u, 4294967295u, u_input.a, 1u))))));
    global0 = array<vec3<f32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(var_5, vec2<u32>(34824u, 4294967295u) << (min(_wgslsmith_sub_vec2_u32(var_5, var_5), var_5) % vec2<u32>(32u))), -143f);
}

