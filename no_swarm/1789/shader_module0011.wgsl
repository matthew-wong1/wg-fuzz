struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: vec2<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<u32> {
    return ~arg_1.a << (vec4<u32>(0u, 0u ^ firstLeadingBit(global1.x), 0u, max(_wgslsmith_div_u32(global1.x ^ arg_1.a.x, global1.x), ~arg_1.a.x)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: vec3<f32>) -> bool {
    global1 = ~(~u_input.a >> (~firstTrailingBit(vec2<u32>(29498u, 28662u)) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(abs(~10713u), firstLeadingBit(arg_2.x) ^ 76462u), firstLeadingBit(vec2<u32>(u_input.a.x, 1u)));
    global0 = array<f32, 11>();
    let var_0 = false;
    global1 = vec2<u32>(firstLeadingBit(global1.x), u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_0.x, 11u)], 1409f)) * _wgslsmith_f_op_f32(max(1538f, 1012f))) * _wgslsmith_f_op_f32(sign(-453f)))));
    return var_0;
}

fn func_2() -> u32 {
    let var_0 = Struct_3(Struct_2(!vec2<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(false, true, true)))), Struct_1(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, global1.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 3098u, u_input.a.x, 48383u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 36899u, 4294967295u, 2393u), vec4<u32>(0u, global1.x, 1u, 0u)), vec4<bool>(true, false, false, true)), func_4(u_input.a, !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec4<u32>(18552u, global1.x, global1.x, u_input.a.x) ^ func_3(true, Struct_1(vec4<u32>(57025u, 1u, global1.x, 1u), false, 1i, vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 1047f), vec2<bool>(true, false)), vec2<f32>(global0[_wgslsmith_index_u32(1u, 11u)], -652f)), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.x, 11u)]), 549f, _wgslsmith_f_op_f32(f32(-1f) * -361f))), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-35957i), -2147483647i), ~vec2<i32>(2147483647i, 0i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(819f, global0[_wgslsmith_index_u32(105047u, 11u)])), vec2<f32>(394f, -709f)) * vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global1.x, 11u)], 417f), _wgslsmith_f_op_f32(1284f - global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true))), Struct_2(!vec2<bool>(true, global1.x == 80942u)));
    global0 = array<f32, 11>();
    global1 = ~abs(~vec2<u32>(4294967295u, var_0.b.a.x) >> (~u_input.a % vec2<u32>(32u))) ^ vec2<u32>(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_clamp_u32(global1.x, 4294967295u, 47507u) >> (u_input.a.x % 32u)), 1u);
    let var_1 = abs(~vec4<u32>(~_wgslsmith_sub_u32(global1.x, u_input.a.x), 30825u, 4294967295u, countOneBits(12553u)));
    global0 = array<f32, 11>();
    return min(_wgslsmith_mult_u32(var_1.x, abs(min(var_0.b.a.x & 55336u, u_input.a.x))), var_0.b.a.x);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<i32>) -> vec4<i32> {
    var var_0 = false;
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global1.x, 99303u, arg_0, 4294967295u), ~vec4<u32>(arg_0, func_2(), ~38118u, u_input.a.x), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(52172u, 4294967295u, 1u, u_input.a.x), vec4<u32>(0u, 0u, u_input.a.x, 1u), arg_1), ~vec4<u32>(global1.x, u_input.a.x, 0u, 24034u))), arg_1, -_wgslsmith_mult_i32(arg_2.x, -(~arg_2.x)), vec2<f32>(global0[_wgslsmith_index_u32(~global1.x, 11u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(countOneBits(global1.x), u_input.a.x), 11u)])), vec2<bool>(!arg_1, arg_1));
    return -vec4<i32>(abs(arg_2.x), max(0i, arg_2.x), select(-1i, select(0i, 1i, arg_1), true) >> (~abs(u_input.a.x) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_1.c, -1i), firstTrailingBit(arg_2.x), -30619i, arg_2.x), ~vec4<i32>(1i, 1i, var_1.c, -1i) & _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 12282i, var_1.c, -1423i), vec4<i32>(var_1.c, var_1.c, 26445i, 1223i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(countOneBits(~(i32(-1i) * -2147483647i)), _wgslsmith_dot_vec4_i32(max(-(vec4<i32>(-35960i, -2147483647i, 17058i, -1i) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), -vec4<i32>(-7514i, 0i, 0i, 1i)), max(func_1(0u, false, vec2<i32>(-2147483647i, 2147483647i)), reverseBits(max(vec4<i32>(0i, -1i, 2147483647i, -6155i), vec4<i32>(-45127i, -2147483647i, -1i, 2257i))))));
    global1 = ~(u_input.a | (firstTrailingBit(vec2<u32>(48285u, 1u)) >> (_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(0u, 3857u)) % vec2<u32>(32u)))) ^ u_input.a;
    var var_1 = _wgslsmith_mod_i32(var_0.x, -countOneBits(var_0.x));
    var var_2 = ~u_input.a.x;
    global1 = vec2<u32>(min(min(~110361u, global1.x >> (global1.x % 32u)), _wgslsmith_mod_u32(min(35233u, global1.x), global1.x)) & ~(~abs(4697u)), firstTrailingBit(global1.x));
    global1 = _wgslsmith_mult_vec2_u32(u_input.a, ~vec2<u32>(global1.x, _wgslsmith_add_u32(45085u, ~u_input.a.x)));
    global1 = ~u_input.a;
    let var_3 = Struct_3(Struct_2(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), true))), Struct_1(~(~(vec4<u32>(u_input.a.x, u_input.a.x, global1.x, 47144u) & vec4<u32>(u_input.a.x, 81003u, 3455u, 22827u))), true | !any(vec2<bool>(true, false)), ~_wgslsmith_add_i32(abs(var_0.x), var_0.x << (4294967295u % 32u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1006f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1340f, 890f) - vec2<f32>(global0[_wgslsmith_index_u32(0u, 11u)], -1555f)), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(14852u, 11u)]), false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_2(vec2<bool>(select(false, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.b.c >> (global1.x % 32u), _wgslsmith_f_op_f32(-var_3.b.d.x), firstLeadingBit(~var_3.b.a), -select(-abs(vec4<i32>(var_0.x, 0i, -32995i, var_3.b.c)), func_1(_wgslsmith_mod_u32(global1.x, u_input.a.x), var_3.b.b, vec2<i32>(var_0.x, -16992i)), select(!vec4<bool>(true, true, var_3.a.a.x, false), vec4<bool>(false, true, true, false), select(vec4<bool>(var_3.c.a.x, var_3.b.e.x, false, true), vec4<bool>(false, var_3.b.e.x, false, var_3.a.a.x), vec4<bool>(true, false, false, var_3.c.a.x)))), ~(~(~1u)));
}

