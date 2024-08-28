struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<u32>, 24>();
    global0 = array<vec4<u32>, 24>();
    global0 = array<vec4<u32>, 24>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-703f, -1000f)))) + _wgslsmith_f_op_f32(f32(-1f) * -555f));
    var var_1 = any(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), true)));
    return Struct_1(any(vec2<bool>(true, ~1u >= u_input.a)), abs(_wgslsmith_mult_vec4_u32(~firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 24u)]), ~(~global0[_wgslsmith_index_u32(93998u, 24u)]))));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = vec2<u32>(63054u << (~(u_input.a & 0u) % 32u), _wgslsmith_mod_u32(1u, ~u_input.a));
    let var_1 = Struct_3(func_2(), Struct_2(-(~vec4<i32>(1i, 1i, 1i, 1i)), vec2<bool>(!(u_input.a != 10633u), true)));
    global0 = array<vec4<u32>, 24>();
    var var_2 = !(!vec2<bool>(any(!vec4<bool>(false, false, true, arg_0)), any(!vec4<bool>(var_1.b.b.x, true, arg_0, arg_0))));
    let var_3 = func_2();
    return u_input.a;
}

fn func_3(arg_0: f32) -> vec4<i32> {
    let var_0 = Struct_1(true, ~abs(_wgslsmith_mult_vec4_u32(~global0[_wgslsmith_index_u32(4294967295u, 24u)], vec4<u32>(30393u, 79259u, u_input.a, 1u) & global0[_wgslsmith_index_u32(u_input.a, 24u)])));
    var var_1 = Struct_2(countOneBits(vec4<i32>(_wgslsmith_add_i32(-822i, 61208i >> (var_0.b.x % 32u)), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(44972i, -1i, 53944i, -26516i), vec4<i32>(-2147483647i, 0i, -2147483647i, 22331i)) << (1u % 32u), 1i)), vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.a, true, var_0.a, false), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.a, false, false, var_0.a), true))), true));
    let var_2 = var_1.b.x;
    var var_3 = !(!any(select(select(vec4<bool>(var_1.b.x, var_0.a, var_0.a, var_1.b.x), vec4<bool>(var_0.a, false, var_1.b.x, var_1.b.x), true), !vec4<bool>(var_0.a, false, var_0.a, false), select(vec4<bool>(var_0.a, false, true, false), vec4<bool>(var_1.b.x, var_1.b.x, true, var_0.a), vec4<bool>(true, true, var_1.b.x, false)))));
    let var_4 = vec3<i32>(abs(0i), var_1.a.x, _wgslsmith_div_i32(var_1.a.x, _wgslsmith_sub_i32(2147483647i, reverseBits(var_1.a.x))));
    return firstLeadingBit(min(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, var_4.x, var_1.a.x), vec4<i32>(var_4.x, var_4.x, 8378i, var_4.x)), countOneBits(vec4<i32>(-55169i, -2147483647i, -993i, var_4.x))), var_1.a) ^ var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1050f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-105f)), 320f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1285f)) - _wgslsmith_f_op_f32(trunc(1791f))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(354f, _wgslsmith_f_op_f32(trunc(-1036f))) - _wgslsmith_f_op_f32(f32(-1f) * -119f)));
    global0 = array<vec4<u32>, 24>();
    let var_1 = vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_div_u32(func_1(true), reverseBits(1u)), 0u);
    global0 = array<vec4<u32>, 24>();
    global0 = array<vec4<u32>, 24>();
    var var_2 = Struct_3(func_2(), Struct_2(func_3(-637f), vec2<bool>(true, true)));
    let var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-639f, _wgslsmith_f_op_f32(f32(-1f) * -990f), _wgslsmith_f_op_f32(-var_0)))), -_wgslsmith_dot_vec4_i32(var_3.a, var_3.a), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_3.a.x, -2147483647i, 42074i)), var_3.a.wzy << (var_2.a.b.wxz % vec3<u32>(32u)))) | var_2.b.a.x, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(688f, 576f) + _wgslsmith_f_op_f32(-198f * 1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-441f, var_0, _wgslsmith_f_op_f32(floor(-952f)))));
}

