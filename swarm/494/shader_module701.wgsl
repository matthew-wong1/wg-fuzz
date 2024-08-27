struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_mult_u32(arg_3, 1u);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -942f);
    global0 = array<bool, 19>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-106f - _wgslsmith_f_op_f32(340f - 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-827f * -450f), _wgslsmith_f_op_f32(ceil(961f)), true)) - 1380f)));
    var var_1 = 30536u;
    return vec3<i32>(-2147483647i, -2147483647i, 1i);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<u32>) -> bool {
    let var_0 = Struct_1(u_input.a, select(select(!(!vec4<bool>(false, true, arg_1, global0[_wgslsmith_index_u32(u_input.a, 19u)])), vec4<bool>(arg_1, 0u == u_input.a, global0[_wgslsmith_index_u32(~arg_2.x, 19u)], all(vec3<bool>(arg_1, false, true))), select(select(vec4<bool>(arg_1, global0[_wgslsmith_index_u32(arg_2.x, 19u)], global0[_wgslsmith_index_u32(arg_2.x, 19u)], arg_1), vec4<bool>(true, true, false, false), global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_2.x, 19u)], arg_1, arg_1, global0[_wgslsmith_index_u32(4294967295u, 19u)]))), select(!select(vec4<bool>(arg_1, false, false, false), vec4<bool>(true, true, false, false), arg_1), select(vec4<bool>(true, false, arg_1, false), vec4<bool>(false, false, true, arg_1), true), false), vec4<bool>(any(select(vec4<bool>(arg_1, true, true, true), vec4<bool>(true, arg_1, global0[_wgslsmith_index_u32(arg_2.x, 19u)], global0[_wgslsmith_index_u32(arg_2.x, 19u)]), vec4<bool>(true, arg_1, true, arg_1))), true, all(vec2<bool>(global0[_wgslsmith_index_u32(42459u, 19u)], true)) || (global0[_wgslsmith_index_u32(u_input.c, 19u)] || global0[_wgslsmith_index_u32(u_input.a, 19u)]), (u_input.a == 95476u) || true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1624f, arg_0.x)), arg_0.x, u_input.d <= u_input.d))))));
    let var_1 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, min(26575u, 4294967295u), ~arg_2.x), select(~vec4<u32>(u_input.c, var_0.a, 66180u, u_input.c), ~vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), var_0.b)));
    var var_2 = var_1;
    let var_3 = 1344f;
    var_2 = var_1;
    return select(true, !(u_input.d == -countOneBits(u_input.d)), all(select(!var_0.b.wy, vec2<bool>(var_0.b.x, true), select(var_0.b.xz, var_0.b.yz, false))) || (all(var_0.b.xz) & false));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = -_wgslsmith_dot_vec3_i32(func_2(9120u, true, global0[_wgslsmith_index_u32(7765u, 19u)], u_input.a), vec3<i32>(-1i) * -(~vec3<i32>(u_input.d, u_input.d, u_input.d)));
    var var_1 = countOneBits(_wgslsmith_mult_i32(~abs(~u_input.d), _wgslsmith_div_i32(-_wgslsmith_mod_i32(-1i, u_input.d), _wgslsmith_sub_i32(u_input.d, u_input.d) >> (~38018u % 32u))));
    let var_2 = Struct_1(min(4294967295u, ~1u) | (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.c) >> (vec3<u32>(35754u, u_input.b, 7208u) % vec3<u32>(32u)), vec3<u32>(u_input.a, 4294967295u, 6582u)) << (~_wgslsmith_sub_u32(u_input.b, u_input.a) % 32u)), !vec4<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 3601u, u_input.a), vec4<u32>(0u, 82134u, 4294967295u, u_input.c)), 19u)], arg_1.x, _wgslsmith_mult_u32(u_input.c, 69576u) < u_input.c, func_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-526f, 554f))), true, reverseBits(vec2<u32>(u_input.c, 63990u)))), 1f);
    var var_3 = Struct_1(~var_2.a, var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-820f * _wgslsmith_f_op_f32(1367f - var_2.c)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-198f - -267f))))));
    var var_4 = firstTrailingBit(85492u) >> (max((var_2.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(43888u, 1u, u_input.a, 0u), vec4<u32>(89622u, var_3.a, 4294967295u, 42743u))) << (_wgslsmith_mod_u32(0u, 52198u) % 32u), ~_wgslsmith_add_u32(firstLeadingBit(u_input.b), _wgslsmith_mod_u32(var_2.a, var_3.a))) % 32u);
    return var_2;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_i32(-abs(abs(vec2<i32>(u_input.d, u_input.d)) & -vec2<i32>(-1i, u_input.d)), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.d, -1i), -u_input.d), reverseBits(vec2<i32>(u_input.d, -16417i))), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-37720i, 2594i)), abs(func_2(arg_0.a, true, false, 10394u).xy), vec2<i32>(u_input.d, -2147483647i) & vec2<i32>(u_input.d, u_input.d))));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32((~vec2<u32>(arg_0.a, 4294967295u) & ~vec2<u32>(0u, 7050u)) ^ (vec2<u32>(u_input.a, u_input.b) >> (min(vec2<u32>(18470u, u_input.c), vec2<u32>(arg_0.a, arg_0.a)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, 0u), ~vec2<u32>(u_input.c, 1u)), ~(vec2<u32>(1783u, u_input.c) | vec2<u32>(24229u, 1u)))), select(!arg_0.b, arg_0.b, vec4<bool>(any(!arg_0.b.wz), all(arg_0.b.yzz), true, !(arg_0.c >= -192f))), arg_0.c);
    global0 = array<bool, 19>();
    var var_2 = func_1(!var_1.b.yy, var_1.b.xww);
    var var_3 = func_1(var_2.b.yy, var_2.b.xyz).b.yx;
    return func_1(vec2<bool>(false, !(!arg_0.b.x) || true), vec3<bool>(true, !(!(u_input.d < var_0.x)), !((96696u >= arg_0.a) && false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 19>();
    let var_0 = vec2<u32>(u_input.b, 7053u);
    let var_1 = func_4(func_1(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 19u)], global0[_wgslsmith_index_u32(5949u, 19u)])), !vec2<bool>(global0[_wgslsmith_index_u32(38022u, 19u)], false), select(14545i > u_input.d, global0[_wgslsmith_index_u32(1u, 19u)], true)), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(var_0.x, 19u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)]), !select(vec3<bool>(false, global0[_wgslsmith_index_u32(86727u, 19u)], true), vec3<bool>(false, true, true), true))));
    global0 = array<bool, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

