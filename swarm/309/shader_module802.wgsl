struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, select(~4294967295u, ~u_input.b, all(vec4<bool>(false, false, true, false))) >> (_wgslsmith_div_u32(~u_input.b, ~56331u) % 32u)), 13u)], _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, u_input.b), 1u), 0u), ~(~select(vec2<u32>(u_input.b, 15971u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(false, true)))));
    global1 = -1i;
    return var_0;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = abs(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 0i, 13450i), vec4<i32>(u_input.c, 21425i, -2147483647i, 15591i)))) ^ (vec4<i32>(-_wgslsmith_div_i32(global0[_wgslsmith_index_u32(arg_1.b.x, 13u)], u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 30768i, global0[_wgslsmith_index_u32(13370u, 13u)], 2147483647i), countOneBits(vec4<i32>(arg_1.a, arg_1.a, 0i, global0[_wgslsmith_index_u32(u_input.b, 13u)]))), 1i, arg_1.a) | vec4<i32>(global0[_wgslsmith_index_u32(69590u, 13u)], arg_1.a, u_input.c, -1i | _wgslsmith_add_i32(global0[_wgslsmith_index_u32(arg_1.b.x, 13u)], 2147483647i)));
    global0 = array<i32, 13>();
    let var_1 = _wgslsmith_sub_i32(var_0.x, -1i);
    global1 = var_1;
    global1 = u_input.a.x;
    return _wgslsmith_add_i32(arg_1.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c, ~(~var_0.x)), _wgslsmith_add_i32(_wgslsmith_add_i32(-28725i, 0i << (arg_1.b.x % 32u)), var_0.x)));
}

fn func_1() -> bool {
    global1 = _wgslsmith_div_i32(_wgslsmith_add_i32(1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.b, 13u)], -1i), -5074i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, 0u)) % 32u))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b, u_input.b), 13u)]);
    var var_0 = _wgslsmith_mult_i32(firstTrailingBit(-(-global0[_wgslsmith_index_u32(u_input.b, 13u)] << (17886u % 32u))), -12013i);
    global1 = -firstLeadingBit(firstTrailingBit(func_3(any(vec4<bool>(false, true, false, true)), func_2())));
    var var_1 = func_2();
    var_1 = func_2();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = all(select(vec4<bool>(_wgslsmith_clamp_u32(0u, u_input.b, 4294967295u) < ~u_input.b, any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true, func_1()), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), true))));
    global1 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~u_input.b, 13u)] >> (4294967295u % 32u), u_input.a.x), _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(-26535i, global0[_wgslsmith_index_u32(42982u, 13u)], u_input.c, -63900i) & vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], -17158i, 0i)), vec4<i32>(i32(-1i) * -52223i, _wgslsmith_mod_i32(-24632i, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.b, 13u)], u_input.c), vec3<i32>(919i, global0[_wgslsmith_index_u32(29267u, 13u)], 32521i)), global0[_wgslsmith_index_u32(~22050u, 13u)]) | vec4<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(71708u, 13u)]), -global0[_wgslsmith_index_u32(43237u, 13u)], u_input.a.x, -35244i)));
    var var_1 = func_2();
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(984f + 391f);
    var_0 = any(vec2<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), !(!(16811u < u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(var_2.b.x, 42710u, 1u, 3451u), vec4<u32>(75613u, 49366u, var_1.b.x, 25108u), false)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 19947u, var_2.b.x, u_input.b), vec4<u32>(u_input.b, 1u, var_2.b.x, u_input.b)))), select(vec4<u32>(1u, 24377u, 26685u, var_2.b.x) >> (vec4<u32>(var_2.b.x, u_input.b, 0u, 0u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(var_1.b.x, u_input.b), 4294967295u, 75101u, 4294967295u), true) ^ abs(~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.b.x, var_2.b.x, 0u, u_input.b), vec4<u32>(42467u, u_input.b, 1u, 1u))), ~_wgslsmith_clamp_u32(firstLeadingBit(75007u), func_2().b.x, 1u), -func_3(func_1(), var_2), vec4<i32>(_wgslsmith_mod_i32(-59098i, 1324i), var_1.a, -(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 13u)], 5478i) << (var_1.b.x % 32u)), 1i));
}

