struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec3<i32>,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26>;

var<private> global1: array<bool, 12> = array<bool, 12>(true, false, false, false, true, false, true, true, true, true, false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = vec3<bool>(!(!any(vec4<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(28570u, 12u)]))), all(select(select(!vec4<bool>(true, arg_0, global1[_wgslsmith_index_u32(1u, 12u)], arg_0), !vec4<bool>(true, global1[_wgslsmith_index_u32(25279u, 12u)], true, false), global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), select(!vec4<bool>(arg_0, false, true, false), select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(false, arg_0, global1[_wgslsmith_index_u32(28642u, 12u)], false), vec4<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(7095u, 12u)])), vec4<bool>(false, false, false, arg_0)), !select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(15904u, 12u)], false, true), vec4<bool>(arg_0, false, false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 12u)], true, arg_0)))), !(!any(vec3<bool>(false, global1[_wgslsmith_index_u32(80750u, 12u)], false))) != all(vec3<bool>(true, true, true)));
    let var_1 = 0i;
    var var_2 = max(countOneBits(~(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, var_1), vec2<i32>(u_input.a, var_1)))), vec2<i32>(_wgslsmith_div_i32(16870i, var_1), ~u_input.a));
    global0 = array<vec2<f32>, 26>();
    var var_3 = (-(vec3<i32>(u_input.a, u_input.a, -55199i) | vec3<i32>(u_input.a, -1i, -1i)) & -vec3<i32>(u_input.a, -2147483647i, var_2.x)) >> (vec3<u32>(~(~(~u_input.b.x)), u_input.b.x, ~u_input.b.x) % vec3<u32>(32u));
    return vec4<bool>(var_0.x, true, false, any(var_0.yx));
}

fn func_2(arg_0: u32, arg_1: u32) -> vec4<u32> {
    var var_0 = -109f;
    global0 = array<vec2<f32>, 26>();
    var var_1 = 9946i;
    let var_2 = !(!func_3(any(vec2<bool>(true, false))));
    var var_3 = Struct_1(vec4<i32>(u_input.a, -30325i, abs(_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(15893i, u_input.a)), firstTrailingBit(vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_mod_i32(-u_input.a, ~(u_input.a << (arg_0 % 32u)))));
    return vec4<u32>(~(arg_0 ^ u_input.b.x), 2767u, arg_0, u_input.b.x);
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0.b.a.x & u_input.b.x, 0u, 0u), vec4<u32>(_wgslsmith_div_u32(34754u, 34614u), ~arg_0.b.a.x, 1u, 1u << (0u % 32u)))) & func_2(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b.x, 24683u), 29225u), u_input.b.x);
    global0 = array<vec2<f32>, 26>();
    global1 = array<bool, 12>();
    global0 = array<vec2<f32>, 26>();
    return !vec4<bool>(func_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(33109u), ~0u), 12u)]).x, arg_0.a, any(vec2<bool>(all(vec2<bool>(false, global1[_wgslsmith_index_u32(42581u, 12u)])), !arg_0.a)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 26>();
    var var_0 = ~(~_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, min(u_input.b.x, 18893u)), 19150u));
    let var_1 = vec2<bool>(true, any(select(!func_1(Struct_4(true, Struct_3(u_input.b.xy, vec4<i32>(0i, u_input.a, -44828i, u_input.a), Struct_2(35774u), vec3<i32>(13724i, -2147483647i, u_input.a), -1000f), 0i, global1[_wgslsmith_index_u32(69574u, 12u)])), select(vec4<bool>(true, global1[_wgslsmith_index_u32(13803u, 12u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], true, false, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(26186u, 12u)], false, false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(57981u, 12u)]), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]))), select(true, u_input.a >= u_input.a, true))));
    var var_2 = -(~vec3<i32>(u_input.a, 2147483647i, u_input.a));
    var var_3 = countOneBits(vec4<i32>(-1i) * -vec4<i32>(-1i, -24826i, var_2.x, u_input.a)) & -max(~(-vec4<i32>(2147483647i, -74978i, u_input.a, 31606i)), min(vec4<i32>(u_input.a, var_2.x, 2147483647i, u_input.a), vec4<i32>(var_2.x, -10516i, 2147483647i, -2147483647i)) & abs(vec4<i32>(-1i, 1i, u_input.a, -33959i)));
    global0 = array<vec2<f32>, 26>();
    let var_4 = !func_1(Struct_4(any(func_3(true)), Struct_3(abs(vec2<u32>(u_input.b.x, u_input.b.x)), vec4<i32>(-10019i, -16316i, var_2.x, -51521i), Struct_2(u_input.b.x), min(var_3.xxy, var_3.yyz), _wgslsmith_f_op_f32(trunc(-1776f))), -(~var_3.x), !global1[_wgslsmith_index_u32(63071u, 12u)] && global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(10610u, u_input.b.x)), 12u)]));
    var_2 = firstTrailingBit(vec3<i32>(var_3.x, 0i, -1i));
    let var_5 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(countOneBits(u_input.b)), min(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, 0u)) ^ ~u_input.b), ~firstTrailingBit(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -920f), vec4<u32>(0u, var_5.a, var_5.a, u_input.b.x), _wgslsmith_add_vec2_u32(~vec2<u32>(~1u, 1u >> (1u % 32u)), vec2<u32>(_wgslsmith_clamp_u32(0u, var_5.a, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1788u, 145817u, 12203u), vec4<u32>(u_input.b.x, 67245u, var_5.a, 1u))) & u_input.b.zy));
}

