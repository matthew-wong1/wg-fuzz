struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2776i, -41710i, -6088i);

var<private> global1: i32 = 1i;

var<private> global2: Struct_1;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = ~global0.x;
    var var_1 = vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(global0.x | 13734i, -944i)), ~0i, 1i >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_2.yzy, arg_2.zyw)) % 32u), global0.x) << (_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, 3192u, arg_2.x, 24226u), vec4<u32>(23825u, arg_2.x, arg_2.x, 258u)), arg_2) % vec4<u32>(32u));
    return -8639i;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>) -> i32 {
    var var_0 = ~vec4<u32>(select(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 35836u), countOneBits(vec2<u32>(1u, 1u))), false), 28166u, 9752u, ~1u);
    var var_1 = false;
    global2 = Struct_1(!global2.a, 0i, global2.e, ~(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b, 93607i, global2.b, global2.d.x), global2.d), -29814i | global0.x, func_3(arg_0, arg_0, vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(global2.c, 1263f, arg_1.x, global2.e)), 2147483647i)), _wgslsmith_f_op_f32(trunc(arg_0.x)));
    let var_2 = u_input.a;
    var_0 = ~(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, 29246u), vec4<u32>(6343u, var_0.x, var_0.x, var_0.x)), min(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(9466u, var_0.x, var_0.x, 1u)), vec4<bool>(global2.a, false, false, global2.a))) ^ firstTrailingBit(~countOneBits(~vec4<u32>(var_0.x, 1u, 1u, var_0.x)));
    return abs(global0.x) ^ 0i;
}

fn func_1(arg_0: vec4<f32>) -> vec3<u32> {
    var var_0 = u_input.b.x;
    global1 = -1i;
    let var_1 = Struct_1(true, i32(-1i) * -select(firstTrailingBit(global0.x), -global0.x, global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1168f * 1002f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1108f, arg_0.x)), _wgslsmith_f_op_f32(arg_0.x + 138f)))))), vec4<i32>(~_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global2.d.x, global2.b, u_input.a.x)) ^ global2.b, ~(~_wgslsmith_mod_i32(u_input.b.x, global0.x)), _wgslsmith_sub_i32(16508i, _wgslsmith_mod_i32(2147483647i, firstTrailingBit(global2.d.x))), reverseBits(i32(-1i) * -40183i)), 1740f);
    var var_2 = Struct_1(global2.a, var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-141f - arg_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(817f, -1000f))))), vec4<i32>(_wgslsmith_mult_i32(func_2(vec2<f32>(-203f, 554f), arg_0.zwy), -36532i) & ~(i32(-1i) * -1i), i32(-1i) * -min(u_input.a.x, -7414i), select(abs(-2147483647i), -1i, func_3(vec2<f32>(global2.c, var_1.c), arg_0.wz, vec4<u32>(1u, 4294967295u, 4294967295u, 1u), arg_0) != max(10075i, global2.d.x)), max(_wgslsmith_dot_vec2_i32(global2.d.xz ^ vec2<i32>(-1i, var_1.d.x), vec2<i32>(2147483647i, -15862i)), _wgslsmith_clamp_i32(select(global2.b, global0.x, global2.a), -7609i, _wgslsmith_mod_i32(global2.d.x, global0.x)))), arg_0.x);
    let var_3 = var_2.d.xxw;
    return abs(~vec3<u32>(min(4791u, 4294967295u) >> (1u % 32u), 0u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(21547u, 0u), vec2<u32>(0u, 6908u)), _wgslsmith_dot_vec4_u32(vec4<u32>(18566u, 29534u, 4294967295u, 59082u), vec4<u32>(34594u, 1u, 73988u, 122258u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(max(_wgslsmith_sub_vec3_u32(min(~vec3<u32>(7077u, 53053u, 4294967295u), vec3<u32>(45146u, 0u, 4294967295u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(27535u, 4294967295u, 1u), vec3<u32>(34181u, 17444u, 4294967295u)), reverseBits(1u), 1u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(19698u, 7157u, 1u), ~vec3<u32>(9827u, 0u, 46880u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), firstLeadingBit(func_1(vec4<f32>(_wgslsmith_f_op_f32(abs(global2.e)), global2.c, _wgslsmith_f_op_f32(global2.c * -564f), _wgslsmith_f_op_f32(-global2.e)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.e, global2.c, 1402f), vec3<f32>(global2.e, 446f, global2.c), global2.a | true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, 951f, global2.e)), vec3<bool>(true, true, true))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e, global2.e, 1000f)))))));
    global2 = Struct_1(global2.a, abs(1i), 1000f, vec4<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.xz, global2.d.xz), 15122i) >> (var_0.x % 32u), global0.x, firstLeadingBit(2147483647i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c, var_1.x) + _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(min(global2.e, _wgslsmith_f_op_f32(global2.e - 1730f)))))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -142f);
    global2 = Struct_1(true, ~(~(u_input.b.x & global2.d.x)), -526f, -vec4<i32>(-global0.x, ~global0.x, _wgslsmith_add_i32(global0.x, 1i), _wgslsmith_mod_i32(global0.x, global2.d.x)) ^ _wgslsmith_div_vec4_i32(firstLeadingBit(global2.d), -max(global2.d, global2.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1167f + -333f) * -624f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1476f + global2.c) + 1834f))));
    let var_3 = _wgslsmith_mod_vec3_i32(u_input.a, -(~select(vec3<i32>(u_input.a.x, 18563i, global2.b) >> (vec3<u32>(13621u, var_0.x, var_0.x) % vec3<u32>(32u)), -vec3<i32>(1i, 2147483647i, global2.d.x), !vec3<bool>(global2.a, global2.a, global2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(30791u, var_0.x, _wgslsmith_sub_u32(1u, var_0.x)) >> (var_0 % vec3<u32>(32u)), var_0), global2.d, _wgslsmith_f_op_f32(-var_1.x), ~_wgslsmith_clamp_vec3_u32(var_0, _wgslsmith_sub_vec3_u32(vec3<u32>(28538u, var_0.x, 1u), vec3<u32>(10154u, var_0.x, var_0.x)), var_0));
}

