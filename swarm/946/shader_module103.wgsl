struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: u32 = 61317u;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32) -> u32 {
    var var_0 = vec3<bool>(arg_0, false, 1u >= ~u_input.d);
    global1 = 1u;
    global2 = Struct_1(var_0.xx);
    var var_1 = Struct_1(vec2<bool>(arg_0, true));
    var_0 = !(!vec3<bool>(all(vec2<bool>(true, false)) != var_1.a.x, true, var_1.a.x & var_0.x));
    return arg_1;
}

fn func_2() -> Struct_1 {
    global1 = u_input.a;
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-903f, -138f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1246f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 846f))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -2005f)), 787f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))) + -1000f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2868f, var_0.x, -388f) - var_0)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -1799f, _wgslsmith_f_op_f32(-var_0.x)), !global2.a.x))))));
    global1 = ~(~((~2826u << ((u_input.a << (4686u % 32u)) % 32u)) & 0u));
    global0 = array<Struct_1, 18>();
    return global0[_wgslsmith_index_u32((u_input.d >> (((func_3(false, u_input.a) << (~78146u % 32u)) & _wgslsmith_mod_u32(u_input.d, u_input.d)) % 32u)) >> (~_wgslsmith_clamp_u32(u_input.a, ~u_input.a, reverseBits(abs(u_input.a))) % 32u), 18u)];
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = (_wgslsmith_sub_u32(96750u, arg_0.x) | ~u_input.d) | arg_0.x;
    global0 = array<Struct_1, 18>();
    global2 = func_2();
    var var_2 = u_input.c;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(~(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1853u, u_input.d, u_input.a, 5809u), vec4<u32>(1u, 33663u, u_input.d, 0u))) ^ vec2<u32>(30737u, 102206u)));
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.c, countOneBits(vec3<i32>(-707i, 12611i, -70438i))), u_input.c), _wgslsmith_add_i32((-u_input.b & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.e), vec2<i32>(u_input.b, u_input.c.x))) ^ -20138i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~u_input.e, -2147483647i, -u_input.c.x), u_input.c.x, 1i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(620f, -193f, -1099f), vec3<f32>(-1003f, 1192f, 887f), global2.a.x)) - vec3<f32>(252f, 532f, 156f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(282f, 886f, 736f), vec3<f32>(981f, -973f, 253f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(346f, -144f, -898f))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1097f, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-2707f - 175f)) + vec3<f32>(_wgslsmith_f_op_f32(round(-582f)), _wgslsmith_f_op_f32(trunc(917f)), 1405f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(815f, 1467f), _wgslsmith_f_op_f32(floor(1000f)), 1549f)))));
    var_0 = min(~_wgslsmith_mod_i32(10279i, u_input.e), i32(-1i) * -u_input.e);
    var var_2 = -1855i;
    global0 = array<Struct_1, 18>();
    var var_3 = vec2<bool>(all(vec4<bool>(55904i <= (u_input.e | 49538i), true, all(!vec4<bool>(false, global2.a.x, false, false)), func_2().a.x)), 32010u != _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, select(41997u, u_input.a, true)), 0u));
    var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1943f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 475f, var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 571f, -1727f))), vec3<bool>(all(!vec3<bool>(var_3.x, global2.a.x, false)), global2.a.x, true))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 1094f)), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(55085i, -(-2147483647i ^ u_input.c.x), ~_wgslsmith_add_i32(u_input.b, u_input.b)), (u_input.c ^ select(vec3<i32>(2147483647i, u_input.b, -1i), u_input.c, false)) >> (~(~vec3<u32>(u_input.d, 0u, u_input.d)) % vec3<u32>(32u))), vec2<f32>(-793f, -581f), ~_wgslsmith_mod_u32(13330u, u_input.a & _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.d)), ~(~2005u), 238f);
}

