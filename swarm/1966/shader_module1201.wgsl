struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(0i, -6617i, -46956i, 0i, 1i, 0i, -24354i, 41717i, i32(-2147483648), 32857i, 11781i, 2147483647i, -13503i, -65020i, 1i, -8886i, 46236i, -60280i, 9957i, 0i);

var<private> global1: Struct_3 = Struct_3(true, Struct_2(Struct_1(vec4<i32>(1i, 36505i, 4452i, 2147483647i), vec2<u32>(99042u, 22621u))));

var<private> global2: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = Struct_3(!(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.d), vec3<u32>(54915u, u_input.c.x, 64065u)), global1.b.a.b.x, global1.b.a.b.x), 20u)] > ~1i), global1.b);
    let var_1 = Struct_3(global1.a, Struct_2(Struct_1(-firstLeadingBit(vec4<i32>(global1.b.a.a.x, var_0.b.a.a.x, 34486i, -1i)), vec2<u32>(var_0.b.a.b.x, 14035u) << (u_input.c.yw % vec2<u32>(32u)))));
    var_0 = var_1;
    let var_2 = all(select(vec3<bool>(false, select(false, global1.a, false), true), select(select(vec3<bool>(false, false, var_0.a), vec3<bool>(global1.a, var_0.a, var_0.a), vec3<bool>(true, var_1.a, global1.a)), select(vec3<bool>(false, false, true), vec3<bool>(var_1.a, false, false), vec3<bool>(false, false, true)), vec3<bool>(var_1.a, true, var_1.a)), true)) && all(!select(!vec4<bool>(var_1.a, true, var_1.a, var_0.a), !vec4<bool>(global1.a, global1.a, var_1.a, false), !vec4<bool>(var_1.a, var_0.a, var_0.a, global1.a)));
    return false;
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    global0 = array<i32, 20>();
    var var_0 = -(_wgslsmith_add_i32(~6100i, -1i) | _wgslsmith_mult_i32(abs(u_input.b), 5471i));
    let var_1 = _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1139f)), 1528f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) * _wgslsmith_f_op_f32(arg_0.x - 1831f)))));
    var var_2 = ~4294967295u;
    var var_3 = ~7746u;
    return !vec4<bool>(all(!(!vec3<bool>(global1.a, false, global1.a))), !func_3(), true, _wgslsmith_mult_i32(~6622i, _wgslsmith_add_i32(u_input.b, global1.b.a.a.x)) > _wgslsmith_div_i32(global1.b.a.a.x, _wgslsmith_add_i32(-44545i, global0[_wgslsmith_index_u32(u_input.d, 20u)])));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global1 = Struct_3(any(select(func_2(vec3<f32>(651f, 1000f, -843f)), vec4<bool>(global1.a, global1.a, global1.a, global1.a), true)) | true, Struct_2(global1.b.a));
    var var_0 = global1.b;
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    var var_1 = u_input.c.ywy ^ (select(abs(_wgslsmith_div_vec3_u32(u_input.c.zyz, vec3<u32>(global1.b.a.b.x, 27899u, arg_0.b.x))), u_input.c.zxz, any(select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(false, false, global1.a), vec3<bool>(false, global1.a, true)))) & vec3<u32>(_wgslsmith_mod_u32(var_0.a.b.x, u_input.d), _wgslsmith_sub_u32(28291u | global1.b.a.b.x, u_input.d), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, arg_0.b.x), vec3<u32>(arg_0.b.x, 13610u, 4142u)))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(false, global1.b);
    var var_1 = vec4<i32>(u_input.a.x >> (1u % 32u), _wgslsmith_mult_i32(~func_1(Struct_1(var_0.b.a.a, vec2<u32>(global1.b.a.b.x, global1.b.a.b.x))), -679i), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.d, 0u), 20u)], -32789i);
    let var_2 = Struct_2(var_0.b.a);
    global1 = Struct_3((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1286f)) - _wgslsmith_f_op_f32(trunc(-1500f))) < 565f) != !(!var_0.a), Struct_2(global1.b.a));
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-821f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1056f, -755f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(522f * -432f), 1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-947f, 763f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(330f, 992f, 1964f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2427f, 700f, -317f)))))), -1000f);
}

