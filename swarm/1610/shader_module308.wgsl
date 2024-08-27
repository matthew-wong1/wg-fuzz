struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<bool>, 2>;

var<private> global2: array<i32, 17> = array<i32, 17>(2147483647i, 96402i, 1i, 6716i, -1i, -80051i, -46077i, -13794i, 31650i, -4237i, i32(-2147483648), -30803i, 0i, -1i, 0i, 0i, -13969i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-533f)), _wgslsmith_f_op_f32(-425f * 1349f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1204f, -2708f))) + -548f)) * 931f);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> f32 {
    global1 = array<vec2<bool>, 2>();
    global0 = abs(~u_input.a);
    let var_0 = arg_1;
    global2 = array<i32, 17>();
    global2 = array<i32, 17>();
    return 579f;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = vec4<f32>(-1297f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.a)) - _wgslsmith_f_op_f32(arg_1.a * arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_u32(u_input.b, 4294967295u), arg_1)) + _wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-479f * arg_1.a))) * 831f))), arg_1.a);
    let var_1 = Struct_3(1326f);
    global2 = array<i32, 17>();
    var var_2 = _wgslsmith_add_i32(-reverseBits(_wgslsmith_div_i32(global0.x, 14631i)), _wgslsmith_div_i32(10693i, global0.x)) == _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(16905i, global0.x, global2[_wgslsmith_index_u32(4294967295u, 17u)]), u_input.a.wwz) >> (u_input.d.zzy % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.wzx, vec3<i32>(-22033i, u_input.c, u_input.c), vec3<i32>(u_input.c, -23522i, -68319i)), vec3<i32>(u_input.c, u_input.a.x, -2147483647i), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(4294967295u, 17u)], u_input.c)), vec3<i32>(global0.x, 0i, _wgslsmith_mod_i32(-3063i, -1i))));
    let var_3 = u_input.a.zyz;
    return -max(global0.wwy, var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-777f * _wgslsmith_f_op_f32(sign(-148f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-918f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))) + 1000f);
    var var_2 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(u_input.d, ~u_input.d), ~u_input.d.x ^ ~u_input.d.x), u_input.d.yyz);
    var_2 = u_input.d.yxy;
    var var_3 = u_input.a.zyw << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u));
    var_3 = _wgslsmith_mult_vec3_i32(func_2(vec3<bool>(true, false, any(vec3<bool>(true, true, true))), Struct_2(_wgslsmith_f_op_f32(217f * _wgslsmith_f_op_f32(max(441f, -956f))), Struct_1(~u_input.d))), _wgslsmith_add_vec3_i32(~global0.zyy, ~(~vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 17u)], u_input.c, var_3.x))) << (u_input.d.yzw % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec4<i32>(~var_3.x, func_2(vec3<bool>(true, true, false), Struct_2(-975f, Struct_1(u_input.d))).x >> (~select(4294967295u, 70530u, true) % 32u), abs(u_input.a.x << (var_2.x % 32u)), firstLeadingBit(u_input.a.x)));
}

