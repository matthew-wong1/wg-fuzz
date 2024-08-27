struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> u32 {
    let var_0 = ~u_input.b & ~u_input.d.x;
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_1 = ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -25810i, -2147483647i, var_0) & vec4<i32>(u_input.d.x, -23779i, 27712i, -41235i), ~(~vec4<i32>(0i, -29817i, 28284i, -2147483647i))));
    global0 = array<f32, 31>();
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(countOneBits(~vec3<u32>(2362u, 0u, arg_0.c.x))), abs(arg_0.c)), 0u);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = 0u;
    let var_1 = u_input.c.zww;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_3(Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(arg_3, 24552u)), var_1.zx, arg_0 >> (u_input.c.wwz % vec3<u32>(32u)), Struct_1(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true), arg_2.b, 209f), _wgslsmith_f_op_f32(max(-933f, arg_2.b.x))), select(select(vec3<bool>(true, false, arg_2.a.x), vec3<bool>(false, true, arg_2.a.x), arg_2.a.yyx), vec3<bool>(false, true, false), arg_2.a.zzz)), 31u)]), 990f));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(arg_2.b));
    let var_4 = arg_2.a.xz;
    return arg_3;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mult_u32(~u_input.a, _wgslsmith_add_u32(~(u_input.c.x << (u_input.a % 32u)) & 40559u, max(abs(func_2(vec3<u32>(0u, u_input.a, 34171u), vec4<i32>(4627i, arg_1, 1i, u_input.d.x), Struct_1(vec4<bool>(true, arg_2.a.x, arg_2.a.x, arg_0.x), vec2<f32>(arg_2.b.x, -1000f), arg_2.b.x), 28684u)), _wgslsmith_mod_u32(~u_input.c.x, u_input.a))));
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_1 = arg_2;
    var var_2 = arg_1;
    return Struct_2(u_input.c.yw, vec2<u32>(1u, 0u), vec3<u32>(6586u, u_input.a, var_0), arg_2, 107f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(all(vec3<bool>(select(false, false, true), true, true)), true, select(u_input.b >= 1i, false, true) | all(vec4<bool>(true, true, true, true)), !(all(vec3<bool>(false, false, true)) == true)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.c.x), 31u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1692f, global0[_wgslsmith_index_u32(u_input.a, 31u)], false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-174f, global0[_wgslsmith_index_u32(u_input.c.x, 31u)]) + vec2<f32>(456f, global0[_wgslsmith_index_u32(u_input.c.x, 31u)])) + vec2<f32>(-187f, -269f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.c.x, 31u)]))) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 31u)] - _wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(0u, 31u)]))))));
    global0 = array<f32, 31>();
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(var_0.b));
    var var_2 = var_0.a.x;
    var var_3 = func_1(select(!var_0.a.wy, select(vec2<bool>(var_0.a.x, all(var_0.a.wwy)), !var_0.a.wx, vec2<bool>(var_0.a.x && var_0.a.x, true)), !(!(!vec2<bool>(var_0.a.x, var_0.a.x)))), 1i, Struct_1(select(var_0.a, !select(vec4<bool>(false, var_0.a.x, false, var_0.a.x), vec4<bool>(true, true, var_0.a.x, var_0.a.x), var_0.a), vec4<bool>(true, u_input.b >= 25949i, true, var_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_f32(1188f + _wgslsmith_div_f32(1029f, -922f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-571f)) - var_0.c), 1000f))));
    let var_4 = func_1(vec2<bool>(true, var_0.a.x), min(1i, 1i), func_1(!func_1(vec2<bool>(var_3.d.a.x, true), u_input.b << (u_input.c.x % 32u), Struct_1(var_0.a, var_3.d.b, -958f)).d.a.yy, u_input.d.x, Struct_1(select(var_3.d.a, vec4<bool>(var_3.d.a.x, var_3.d.a.x, var_0.a.x, var_0.a.x), all(vec2<bool>(false, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1), vec2<f32>(var_3.d.c, -484f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-947f, 1127f, var_3.d.a.x)))))).d).d;
    var var_5 = max(_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(var_3.a.x), 4294967295u, ~0u, u_input.a) >> (~abs(u_input.c) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(u_input.c.x, 1u), ~var_3.b.x, ~select(24688u, 6426u, true), 22328u)), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

