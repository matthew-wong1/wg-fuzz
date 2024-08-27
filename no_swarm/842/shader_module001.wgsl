struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = vec4<bool>(false, arg_0, !any(!vec4<bool>(arg_0, arg_0, true, false)), all(!vec3<bool>(any(vec3<bool>(false, arg_0, arg_0)), false, arg_0)));
    let var_1 = u_input.a.x;
    var var_2 = ~u_input.a;
    let var_3 = abs(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.b, 15310i, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.b), vec3<i32>(u_input.b, u_input.c, 0i) & vec3<i32>(u_input.c, u_input.b, u_input.b)))) | _wgslsmith_dot_vec3_i32(select(max(abs(vec3<i32>(-1i, u_input.b, u_input.c)), vec3<i32>(2147483647i, u_input.c, u_input.c)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 57780i), vec2<i32>(2147483647i, -68523i)), 2147483647i, select(0i, u_input.b, var_0.x)), vec3<bool>(var_0.x, all(vec3<bool>(arg_0, arg_0, arg_0)), false)), select(vec3<i32>(-2147483647i, ~u_input.b, abs(-1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 46986i, u_input.b), vec3<i32>(-4664i, u_input.c, u_input.b), vec3<i32>(u_input.c, u_input.c, 23417i)) & vec3<i32>(-86904i, 0i, -56040i), all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)) || select(arg_0, true, arg_0)));
    var var_4 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3, -41038i), _wgslsmith_mod_vec2_i32(vec2<i32>(-56407i, 2147483647i), vec2<i32>(-2147483647i, var_3))), min(_wgslsmith_mult_i32(u_input.b, var_3), var_3), -(~var_3)), countOneBits(vec3<i32>(1i, _wgslsmith_div_i32(10154i, -1i), select(1444i, u_input.b, arg_0)))));
    return -2147483647i;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>) -> i32 {
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    global1 = false;
    let var_0 = 21505u;
    let var_1 = arg_0.c;
    return max(~func_3(false), -var_1.a);
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = firstTrailingBit(~(~firstLeadingBit(~136268u)));
    global1 = _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(12825u, 7u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(42065u, 2402u), 7u)])) != 2259f;
    let var_1 = Struct_1(22479i | firstLeadingBit(~func_2(Struct_2(Struct_1(-18130i), vec3<f32>(923f, 375f, -757f), Struct_1(-2147483647i)), arg_0, vec4<u32>(u_input.d.x, u_input.d.x, 4788u, arg_0))));
    let var_2 = var_1;
    let var_3 = arg_0;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1733f, global0[_wgslsmith_index_u32(56249u, 7u)]) - vec2<f32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]))) - vec2<f32>(-1544f, _wgslsmith_f_op_f32(100f + global0[_wgslsmith_index_u32(var_3, 7u)]))), vec2<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, u_input.a.x), 7u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3, 7u)]) * _wgslsmith_div_f32(886f, global0[_wgslsmith_index_u32(arg_0, 7u)]))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 7u)], -1889f)) + vec2<f32>(global0[_wgslsmith_index_u32(var_3, 7u)], 1357f))) + vec2<f32>(global0[_wgslsmith_index_u32(var_3, 7u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3 >> (u_input.a.x % 32u), countOneBits(var_3)), 7u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], 1000f), vec2<f32>(656f, 908f)), vec2<f32>(global0[_wgslsmith_index_u32(1u, 7u)], -1049f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], 820f) - vec2<f32>(871f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1295f, 1095f))))), _wgslsmith_f_op_vec2_f32(func_1(u_input.d.x))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_div_f32(_wgslsmith_div_f32(-1529f, global0[_wgslsmith_index_u32(4294967295u, 7u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 42269u, 1u), 7u)])))));
    let var_1 = 107963u >> (u_input.d.x % 32u);
    let var_2 = Struct_1(_wgslsmith_clamp_i32(min(~u_input.b | ~2147483647i, u_input.c), 1i, _wgslsmith_sub_i32(~func_2(Struct_2(Struct_1(u_input.b), vec3<f32>(-1000f, var_0.x, 638f), Struct_1(61057i)), 1u, vec4<u32>(var_1, 18714u, u_input.a.x, var_1)), u_input.b >> (28880u % 32u))));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f - _wgslsmith_f_op_f32(-943f - -772f))))));
    global1 = all(vec3<bool>(!(_wgslsmith_f_op_f32(min(var_0.x, -688f)) > 1000f), !(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), 7u)] > global0[_wgslsmith_index_u32(~var_1, 7u)]), true));
    var var_4 = abs(_wgslsmith_add_i32((_wgslsmith_div_i32(var_2.a, u_input.b) << ((u_input.a.x ^ 44509u) % 32u)) ^ u_input.c, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-416f, global0[_wgslsmith_index_u32(var_1, 7u)], var_3, 119f) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], var_3, var_0.x, -523f)) + vec4<f32>(var_0.x, -409f, -728f, -428f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(364f, -1122f, 986f, var_0.x)))))));
}

