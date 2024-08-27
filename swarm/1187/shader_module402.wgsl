struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(35041i, 36619i, i32(-2147483648), 1i);

var<private> global1: array<vec2<u32>, 32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> f32 {
    global1 = array<vec2<u32>, 32>();
    let var_0 = Struct_1(283f, _wgslsmith_f_op_f32(trunc(arg_0)) < arg_0, ~global1[_wgslsmith_index_u32(u_input.b, 32u)], ~_wgslsmith_clamp_u32(select(arg_1.x, ~arg_1.x, true), ~(~0u), ~0u & arg_1.x), u_input.d.x);
    global1 = array<vec2<u32>, 32>();
    let var_1 = var_0;
    global0 = ~_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(-1045i, var_0.e), 1i, u_input.d.x, _wgslsmith_div_i32(0i, 2147483647i))), max(vec4<i32>(var_1.e, -23318i, -2147483647i, var_0.e) | u_input.c, firstLeadingBit(u_input.c)) >> (_wgslsmith_add_vec4_u32(arg_1, arg_1 >> (vec4<u32>(1u, var_1.d, var_0.d, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return arg_0;
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(821f * _wgslsmith_div_f32(arg_0.a, arg_0.a)) + _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(select(-707f, arg_0.a, false)))), ~(~(~vec4<u32>(1u, 14536u, 0u, u_input.e.x))))), false, u_input.e, ~(_wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, u_input.e.x), vec2<u32>(arg_0.c.x, 43501u))) ^ _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.d, 13174u), 4294967295u)), _wgslsmith_div_i32(~countOneBits(i32(-1i) * -20715i), -40834i));
    let var_1 = countOneBits(66194u);
    global1 = array<vec2<u32>, 32>();
    global1 = array<vec2<u32>, 32>();
    global0 = vec4<i32>(-(~arg_0.e), -(_wgslsmith_sub_i32(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.e, arg_0.e), u_input.a.xz)) & -(arg_0.e >> (var_1 % 32u))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-28499i, u_input.d.x), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(arg_0.e, u_input.c.x, arg_0.e)), _wgslsmith_mod_vec3_i32(u_input.c.wxx, u_input.a)), arg_0.e), 84384i);
    return vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(firstLeadingBit(-21639i), 37535i), abs(_wgslsmith_add_i32(arg_0.e, -27421i))) >> (u_input.e.x % 32u), firstTrailingBit(1i & u_input.d.x), _wgslsmith_dot_vec3_i32(global0.yyy, countOneBits(~global0.yww)) >> (u_input.e.x % 32u));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    global0 = vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d.yy, ~vec2<i32>(u_input.d.x, _wgslsmith_mult_i32(-33149i, global0.x))), u_input.a.x, global0.x ^ u_input.a.x, ~(-abs(_wgslsmith_mult_i32(-8051i, -1i))));
    let var_0 = min(_wgslsmith_dot_vec3_i32(select(func_2(Struct_1(arg_0, arg_1, vec2<u32>(0u, u_input.b), 0u, global0.x)), select(global0.ywz, u_input.a, vec3<bool>(arg_1, arg_1, true)), select(vec3<bool>(false, arg_1, false), vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, true, arg_1))), vec3<i32>(global0.x, global0.x >> (6753u % 32u), 17216i)), 1i) | u_input.a.x;
    var var_1 = Struct_1(arg_0, !any(select(vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1), true)) || !(!(!arg_1)), vec2<u32>(~65412u, 58749u), ~_wgslsmith_mod_u32(4294967295u, u_input.e.x), -22093i);
    let var_2 = Struct_1(var_1.a, var_1.b, u_input.e, 39604u, -2484i);
    var var_3 = var_2;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<i32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = func_1(_wgslsmith_f_op_f32(-623f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1269f - _wgslsmith_f_op_f32(-704f - 381f)), _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-458f * arg_0.a))))), global0.x >= -12186i);
    global1 = array<vec2<u32>, 32>();
    var var_2 = _wgslsmith_f_op_f32(round(865f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(abs(130f)), arg_1.x).a)) * 487f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 32>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_1(-284f, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), vec2<i32>(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-178f * 1291f) - _wgslsmith_f_op_f32(round(193f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1732f + -121f) * _wgslsmith_f_op_f32(func_4(Struct_1(1000f, true, vec2<u32>(u_input.b, u_input.e.x), u_input.b, global0.x), vec4<bool>(true, false, true, false), global0.wy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-283f - -1030f) + _wgslsmith_f_op_f32(step(-369f, -1296f))))))), !(true || any(vec2<bool>(false, false))), ~(~countOneBits(vec2<u32>(u_input.b, 150958u))), 32562u, ~(global0.x & -min(36524i, global0.x)));
    global0 = reverseBits(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(abs(1i), firstTrailingBit(var_0.e), var_0.e, -1i), -(~u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b >> (abs(28691u) % 32u), abs(15345u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~var_0.c.x, ~88518u), 1u)));
}

