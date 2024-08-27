struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<Struct_1, 10>;

var<private> global3: array<vec2<i32>, 2>;

var<private> global4: bool;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> vec4<u32> {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~(u_input.b.x << (u_input.b.x % 32u))), 31068u & u_input.a, 39338u), 10u)];
    return _wgslsmith_mult_vec4_u32(u_input.b | max(~u_input.b >> (_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(23827u, 1u, u_input.a, var_0.c.x)) % vec4<u32>(32u)), max(u_input.b, ~u_input.b)), _wgslsmith_mult_vec4_u32(u_input.b ^ u_input.b, (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 12806u, u_input.a, 1u), u_input.b) | u_input.b) ^ ~(~vec4<u32>(u_input.a, var_0.c.x, 35898u, var_0.c.x))));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_div_f32(704f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 19u)]))) - _wgslsmith_f_op_f32(f32(-1f) * -754f)));
    let var_1 = u_input.c;
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(func_3(false, !vec4<bool>(arg_0, false, true, arg_0)), vec4<u32>(1u, 1u >> (u_input.a % 32u), 34240u, u_input.b.x)), 19u)] <= global0[_wgslsmith_index_u32(~u_input.b.x | u_input.a, 19u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-220f, -537f)))));
    global4 = true;
    return u_input.b.x;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_div_f32(1596f, _wgslsmith_f_op_f32(sign(-1025f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-875f, global0[_wgslsmith_index_u32(abs(u_input.a), 19u)], !all(vec2<bool>(false, true)))) - _wgslsmith_f_op_f32(max(-223f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(func_2(true), 19u)])))));
    var_0 = any(vec3<bool>(false, true, any(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.c, u_input.c, abs(-6586i)) ^ -vec3<i32>(-97137i, 3232i, u_input.c), _wgslsmith_mult_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-28037i, u_input.c, u_input.c), vec3<i32>(-2147483647i, u_input.c, -608i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(-7632i, -19873i, u_input.c), vec3<i32>(u_input.c, 2147483647i, u_input.c)))), u_input.c);
    var var_2 = global2[_wgslsmith_index_u32(u_input.b.x, 10u)];
    let var_3 = all(select(vec2<bool>(u_input.c <= _wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(12033u, 2u)], global3[_wgslsmith_index_u32(var_2.c.x, 2u)]), true), var_2.b.yy, select(var_2.b.yy, vec2<bool>(any(vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x)), 4294967295u < var_2.c.x), vec2<bool>(!var_2.d, any(vec2<bool>(var_2.d, true))))));
    return _wgslsmith_f_op_f32(-1191f * _wgslsmith_f_op_f32(min(615f, _wgslsmith_f_op_f32(ceil(-1000f))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.c.x, 19u)] - global0[_wgslsmith_index_u32(39391u, 19u)]) + _wgslsmith_f_op_f32(select(-937f, 1573f, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 2>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -640f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1064f) - -451f));
    global2 = array<Struct_1, 10>();
    var var_1 = select(u_input.b, _wgslsmith_div_vec4_u32((firstLeadingBit(u_input.b) & vec4<u32>(u_input.b.x, 1u, 1u, 4294967295u)) & _wgslsmith_div_vec4_u32(u_input.b ^ u_input.b, u_input.b), _wgslsmith_add_vec4_u32(~u_input.b, abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 8122u, u_input.b.x), u_input.b)))), any(select(vec2<bool>(22750u > u_input.a, false), vec2<bool>(true, all(vec2<bool>(true, true))), func_1())));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) + vec2<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~4294967295u, 19u)])), 505f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(476f, var_0.x) * vec2<f32>(global0[_wgslsmith_index_u32(0u, 19u)], var_0.x))))));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(-1i) * -vec2<i32>(u_input.c, u_input.c)), ~u_input.c);
}

