struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(4294967295u, 4294967295u, 47073u), Struct_1(1i, 481f), Struct_1(15287i, -253f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = Struct_1(-1i, -150f);
    var var_1 = arg_3;
    global0 = array<i32, 27>();
    let var_2 = arg_3.e;
    var_1 = arg_3;
    return _wgslsmith_add_vec4_i32(arg_2, _wgslsmith_add_vec4_i32(~arg_2, arg_2));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = Struct_2(vec3<u32>(u_input.d, global1.a.x, u_input.d), global1.b, arg_0);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2326f, global1.c.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) * vec2<f32>(-749f, arg_0.b)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.b, global1.c.b)) - vec2<f32>(global1.c.b, global1.c.b)), vec2<f32>(-562f, -1000f))));
    let var_1 = _wgslsmith_mod_vec3_u32(~vec3<u32>(2607u, global1.a.x & (1u << (global1.a.x % 32u)), 18059u), vec3<u32>(~global1.a.x, _wgslsmith_dot_vec3_u32(max(~vec3<u32>(1u, 56878u, 0u), vec3<u32>(4294967295u, 1162u, 1u) << (vec3<u32>(4294967295u, 14913u, global1.a.x) % vec3<u32>(32u))), select(global1.a, vec3<u32>(u_input.d, 49798u, 25341u), vec3<bool>(true, false, true)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(global1.a.x, 86483u, 11412u), vec3<u32>(1u, global1.a.x, 1u))), firstTrailingBit(~_wgslsmith_mult_u32(global1.a.x, 85446u))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-933f - var_0.x), global1.c.b))), _wgslsmith_f_op_f32(trunc(var_0.x)))), 1i, _wgslsmith_sub_vec2_i32(firstTrailingBit(min(vec2<i32>(10372i, arg_0.a) ^ vec2<i32>(arg_0.a, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<i32>(8079i, 2672i))), -(~(~vec2<i32>(global1.c.a, global0[_wgslsmith_index_u32(global1.a.x, 27u)])))), Struct_1(_wgslsmith_add_i32(-_wgslsmith_mult_i32(-62080i, -9732i), global1.b.a), -1102f), -(~(~vec3<i32>(0i, 1i, 2147483647i))));
    global0 = array<i32, 27>();
    return var_2.d.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = true;
    var var_1 = Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(~4294967295u, 1u, _wgslsmith_div_u32(u_input.d, global1.a.x)), global1.a), Struct_1(~(~1i), _wgslsmith_f_op_f32(f32(-1f) * -1343f)), arg_0);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.d.b))) - -1051f));
    var var_3 = vec4<u32>(abs(1u), ~select(countOneBits(27385u), abs(abs(var_1.a.x)), true), ((~17551u & u_input.d) & _wgslsmith_mult_u32(select(12265u, global1.a.x, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 39843u, global1.a.x), vec4<u32>(u_input.d, 54085u, 4314u, 4294967295u)))) | _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global1.a, vec3<u32>(4294967295u, 32674u, var_1.a.x)), vec3<u32>(1u, 1u, global1.a.x)), ~(~32328u)), countOneBits(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.d, 24515u), vec4<u32>(71217u, 34189u, 27732u, u_input.d)), ~(global1.a.x >> (u_input.d % 32u)), true)));
    let var_4 = 52132i;
    return ~vec3<u32>(1u, max(u_input.d, _wgslsmith_mod_u32(~var_3.x, _wgslsmith_clamp_u32(var_3.x, global1.a.x, 0u))), ~(~(u_input.d & global1.a.x)));
}

fn func_2() -> vec2<i32> {
    global0 = array<i32, 27>();
    var var_0 = Struct_3(1048f, 1i, ~vec2<i32>(-37975i, 19523i), global1.c, ~func_1(~vec4<u32>(u_input.d, 8986u, u_input.d, global1.a.x), vec2<bool>(false, false), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, global1.c.a, -8910i, -2147483647i), vec4<i32>(-2147483647i, u_input.a, global1.b.a, global1.c.a)), Struct_3(_wgslsmith_f_op_f32(global1.b.b * global1.c.b), u_input.c, max(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 27u)]), vec2<i32>(global0[_wgslsmith_index_u32(global1.a.x, 27u)], -2147483647i)), global1.c, abs(vec3<i32>(12990i, u_input.c, 1i)))).wyz);
    var_0 = Struct_3(1000f, global1.c.a, var_0.e.xz, global1.b, abs(abs(~_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(13337u, 27u)], 32589i, -53619i), vec3<i32>(26779i, 1i, -35843i)))));
    var var_1 = func_4(Struct_1(global1.b.a, -1439f), vec3<i32>(reverseBits(-29910i | func_3(var_0.d)), _wgslsmith_div_i32(u_input.b, global0[_wgslsmith_index_u32(u_input.d, 27u)]), ~_wgslsmith_mod_i32(min(u_input.a, -2147483647i), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(global1.a.x, 27u)], global1.c.a, var_0.c.x))), Struct_3(_wgslsmith_f_op_f32(step(306f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global1.b.b)))))), 15810i, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 27u)], 18798i) | var_0.e.yx, vec2<i32>(u_input.a, -3167i)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-28972i, global1.b.a), min(vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(84104u, 27u)]), vec2<i32>(1i, -1i)), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], -2147483647i))), Struct_1(var_0.e.x, _wgslsmith_f_op_f32(-var_0.a)), vec3<i32>(firstLeadingBit(u_input.c | u_input.b), u_input.c, _wgslsmith_dot_vec2_i32(abs(var_0.e.yx), ~vec2<i32>(19877i, 37887i)))));
    var var_2 = Struct_1(max(0i, 21495i), _wgslsmith_f_op_f32(-var_0.a));
    return vec2<i32>(-13985i, -min(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(12098u, 27u)], var_2.a, 21322i), global0[_wgslsmith_index_u32(u_input.d, 27u)] << (var_1.x % 32u))) | min(-(~(~var_0.c)), abs(_wgslsmith_add_vec2_i32(min(vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.d, 27u)])), -var_0.c)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_2(global1.a, global1.c, global1.b);
    var var_1 = vec4<bool>(true, true, !((_wgslsmith_clamp_u32(global1.a.x, global1.a.x, global1.a.x) <= 4294967295u) & true), all(vec3<bool>(true, false, true)));
    global1 = var_0;
    var_1 = vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(667f, _wgslsmith_f_op_f32(f32(-1f) * -113f)))) > _wgslsmith_f_op_f32(step(var_0.b.b, _wgslsmith_f_op_f32(-var_0.c.b))), true, all(!select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), !vec4<bool>(var_1.x, var_1.x, true, true), select(var_1.x, false, var_1.x))), true);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(var_0.c.b * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-793f))))), func_2().x, ~(_wgslsmith_sub_vec2_i32(firstLeadingBit(arg_1), vec2<i32>(arg_1.x, var_0.b.a)) >> (vec2<u32>(_wgslsmith_add_u32(7045u, var_0.a.x), var_0.a.x) % vec2<u32>(32u))), Struct_1(-1i, 1193f), arg_0.wzy);
    return var_2;
}

fn func_6(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = abs(_wgslsmith_mod_vec3_i32(countOneBits(arg_0.e), _wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(~26949u, 27u)], -1i, _wgslsmith_mod_i32(2147483647i, arg_2.x)), vec3<i32>(u_input.c, -9606i, global0[_wgslsmith_index_u32(global1.a.x, 27u)]) | _wgslsmith_add_vec3_i32(vec3<i32>(58666i, global1.b.a, -6660i), arg_2.xxx))));
    global1 = Struct_2(vec3<u32>(_wgslsmith_mult_u32(arg_3.x, firstTrailingBit(1u)) & firstTrailingBit(_wgslsmith_sub_u32(120363u, u_input.d)), _wgslsmith_sub_u32(arg_3.x & arg_3.x, _wgslsmith_div_u32(global1.a.x, firstLeadingBit(global1.a.x))), _wgslsmith_dot_vec3_u32(reverseBits(~global1.a), select(arg_3 >> (vec3<u32>(global1.a.x, arg_3.x, arg_3.x) % vec3<u32>(32u)), global1.a, true))), func_5(select(~abs(vec4<i32>(11479i, global1.c.a, u_input.a, arg_0.c.x)), vec4<i32>(21154i, u_input.c, _wgslsmith_add_i32(-1i, arg_1.x), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(1u, 27u)], var_0.x, var_0.x)), false), var_0.zz << (min(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 13498u), vec2<u32>(global1.a.x, global1.a.x)), func_4(Struct_1(2147483647i, 1000f), vec3<i32>(var_0.x, global1.c.a, -2147483647i), arg_0).yy) % vec2<u32>(32u)), 1i & _wgslsmith_dot_vec3_i32(arg_0.e & vec3<i32>(global1.c.a, u_input.a, arg_0.d.a), vec3<i32>(arg_0.e.x, 0i, global1.b.a))).d, global1.c);
    let var_1 = -101f;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(vec4<i32>(arg_1.x, var_0.x, -2147483647i, global1.b.a), vec2<i32>(-2147483647i, -20723i), -1i).d.b * arg_0.d.b), global1.b.b)) + -663f), arg_1.x, abs(reverseBits(vec2<i32>(-78558i, ~arg_2.x))), Struct_1(-_wgslsmith_div_i32(13417i << (arg_3.x % 32u), 1i), arg_0.a), arg_0.e);
    var_0 = min(_wgslsmith_mult_vec3_i32(~(-vec3<i32>(arg_1.x, 1i, arg_2.x)) << (~(vec3<u32>(u_input.d, 0u, 0u) >> (vec3<u32>(36537u, 33729u, u_input.d) % vec3<u32>(32u))) % vec3<u32>(32u)), ~func_1(vec4<u32>(arg_3.x, 4294967295u, 1u, 4294967295u) | vec4<u32>(57643u, 1u, arg_3.x, 4294967295u), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), ~vec4<i32>(arg_0.d.a, 6107i, -1i, -2147483647i), arg_0).zxy), arg_2.wzy);
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(~vec3<u32>(0u & u_input.d, max(6148u, 30050u), global1.a.x) ^ _wgslsmith_div_vec3_u32(~firstTrailingBit(vec3<u32>(0u, 4294967295u, 4294967295u)), ~_wgslsmith_add_vec3_u32(global1.a, global1.a)), func_6(func_5(func_1(vec4<u32>(global1.a.x, global1.a.x, 4294967295u, 0u) | vec4<u32>(u_input.d, 1u, 19536u, 1u), vec2<bool>(false, false), -vec4<i32>(-15893i, u_input.c, global1.b.a, 2445i), Struct_3(global1.c.b, 4036i, vec2<i32>(3682i, 2147483647i), Struct_1(70875i, -1627f), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 2147483647i, 0i))), -vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(global1.a.x, 27u)]) | func_2(), ~u_input.a), vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.d, 27u)]), vec2<i32>(global1.c.a, 727i)), _wgslsmith_mod_i32(-2147483647i, func_1(vec4<u32>(u_input.d, global1.a.x, u_input.d, global1.a.x), vec2<bool>(true, true), vec4<i32>(0i, 2147483647i, global1.b.a, 0i), Struct_3(global1.c.b, 0i, vec2<i32>(46738i, 59143i), Struct_1(global1.c.a, -518f), vec3<i32>(global0[_wgslsmith_index_u32(global1.a.x, 27u)], u_input.a, u_input.c))).x)), abs(-(~vec4<i32>(-1i, u_input.b, global1.b.a, 81929i))), vec3<u32>(global1.a.x, ~(0u >> (global1.a.x % 32u)), 4294967295u)), func_5((vec4<i32>(-27325i, u_input.b, u_input.c, u_input.b) << ((vec4<u32>(4294967295u, u_input.d, global1.a.x, global1.a.x) << (vec4<u32>(global1.a.x, 4294967295u, u_input.d, global1.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) | ~(vec4<i32>(u_input.b, 71027i, global1.b.a, 2147483647i) | vec4<i32>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(global1.a.x, 27u)], u_input.a, global1.c.a)), _wgslsmith_mult_vec2_i32(~vec2<i32>(-12413i, 10835i), ~vec2<i32>(-1469i, 58005i)) & countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(u_input.b, global1.b.a))), -u_input.c).d);
    var var_0 = vec4<bool>(any(vec3<bool>(true, true, true)) | !(_wgslsmith_f_op_f32(ceil(global1.c.b)) != func_6(Struct_3(-1006f, global1.b.a, vec2<i32>(-49734i, global1.c.a), global1.b, vec3<i32>(u_input.c, -1i, -68574i)), vec2<i32>(-2147483647i, global1.c.a), vec4<i32>(-46990i, u_input.b, global1.c.a, 341i), global1.a).b), !all(vec2<bool>(true, true)), !all(vec4<bool>(4294967295u <= u_input.d, select(true, false, false), true, true)), all(vec4<bool>(true, ~global0[_wgslsmith_index_u32(4294967295u, 27u)] > (u_input.b & 0i), select(any(vec4<bool>(true, false, true, true)), true, true), (53741i & global0[_wgslsmith_index_u32(0u, 27u)]) < ~global1.b.a)));
    let var_1 = ~0u;
    let var_2 = !(!var_0.zx);
    var var_3 = -630f;
    let x = u_input.a;
    s_output = StorageBuffer(-26655i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1909f, -831f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-121f, -531f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.b.b, global1.b.b), vec2<f32>(-339f, -529f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-476f, -124f, var_0.x)))), func_5(abs(vec4<i32>(global1.c.a, global0[_wgslsmith_index_u32(global1.a.x, 27u)], 26362i, global1.b.a)), select(vec2<i32>(global1.c.a, -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(51611u, 27u)], -2147483647i), var_2.x), _wgslsmith_mod_i32(global1.b.a, global1.b.a)).a))), _wgslsmith_add_vec3_i32(-(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.c.a, -1i, 1i), vec3<i32>(0i, u_input.b, 32349i)) ^ abs(vec3<i32>(-48343i, 2147483647i, global0[_wgslsmith_index_u32(global1.a.x, 27u)]))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], 22615i), firstLeadingBit(vec3<i32>(1i, global0[_wgslsmith_index_u32(1u, 27u)], 0i)), vec3<i32>(global0[_wgslsmith_index_u32(50409u, 27u)], -27999i, 2147483647i)), firstTrailingBit(vec3<i32>(u_input.c, global1.b.a, 0i)) >> (~vec3<u32>(var_1, u_input.d, global1.a.x) % vec3<u32>(32u)), vec3<i32>(~(-2147483647i), ~global1.c.a, ~0i))), 2970u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-189f, global1.c.b))))));
}

