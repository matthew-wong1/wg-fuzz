struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(1i, 2147483647i, -42881i), vec3<bool>(false, false, true), false, vec4<f32>(-281f, 1000f, 233f, 1020f));

var<private> global1: array<u32, 11> = array<u32, 11>(97213u, 0u, 1u, 4294967295u, 1u, 13479u, 4294967295u, 4294967295u, 4294967295u, 0u, 26054u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = 56248i;
    let var_1 = !select(vec4<bool>(true, true, !global0.b.x, global0.c), !(!select(vec4<bool>(true, global0.b.x, arg_0.b.x, arg_0.c), vec4<bool>(global0.c, global0.c, true, true), vec4<bool>(true, global0.c, arg_0.b.x, global0.b.x))), select(!select(vec4<bool>(arg_0.c, global0.c, global0.c, arg_0.b.x), vec4<bool>(false, true, true, true), vec4<bool>(false, true, global0.c, arg_0.c)), select(select(vec4<bool>(false, global0.b.x, true, true), vec4<bool>(true, true, true, arg_0.b.x), vec4<bool>(false, global0.b.x, arg_0.b.x, false)), vec4<bool>(arg_0.b.x, true, false, false), true), true));
    var var_2 = 0u;
    global1 = array<u32, 11>();
    var_2 = 28456u;
    return _wgslsmith_mult_i32(-var_0, u_input.a);
}

fn func_2() -> Struct_1 {
    global1 = array<u32, 11>();
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.a.x, 12459i, 1612i, 0i), _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, -51659i, -1856i, u_input.a)), ~vec4<i32>(-1i, u_input.a, global0.a.x, global0.a.x))), global0.a.x, global0.a.x), vec4<i32>(u_input.a, min(u_input.a, func_3(Struct_1(vec3<i32>(-6012i, 0i, global0.a.x), global0.b, true, vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x)))), u_input.a, u_input.a));
    var var_1 = abs(~vec2<u32>(17438u, ~3741u));
    var_1 = vec2<u32>(global1[_wgslsmith_index_u32(48322u, 11u)], 1u);
    var var_2 = countOneBits(vec2<i32>(countOneBits(_wgslsmith_mult_i32(1i, var_0)), u_input.a)) ^ vec2<i32>(var_0, min(countOneBits(1i), -2147483647i));
    return Struct_1(select(-vec3<i32>(u_input.a, ~var_2.x, _wgslsmith_add_i32(u_input.a, var_2.x)), firstTrailingBit(global0.a), select(global0.b.x & false, any(!vec3<bool>(global0.b.x, false, false)), !any(vec3<bool>(global0.b.x, global0.c, global0.c)))), vec3<bool>(all(select(vec2<bool>(global0.b.x, false), !global0.b.yy, select(false, global0.c, false))), global0.c, true), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-715f, _wgslsmith_f_op_f32(global0.d.x + 629f), true | global0.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.d.x - -188f))), global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x + global0.d.x)))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<bool>) -> vec4<f32> {
    let var_0 = vec3<f32>(-1120f, global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -708f) + _wgslsmith_f_op_f32(exp2(global0.d.x))) - global0.d.x) + _wgslsmith_f_op_f32(global0.d.x + global0.d.x)));
    global1 = array<u32, 11>();
    global0 = Struct_1(-((global0.a ^ -global0.a) & -(~vec3<i32>(0i, arg_2, -19739i))), !global0.b, -abs(u_input.a) == global0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(276f, 529f, global0.d.x, 1680f))) - global0.d)));
    let var_1 = _wgslsmith_f_op_f32(ceil(var_0.x));
    let var_2 = func_2();
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.d, var_2.d, !vec4<bool>(global0.c, var_2.b.x, arg_3.x, arg_3.x)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.d.x, _wgslsmith_div_f32(global0.d.x, var_0.x), -547f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(-240f * -690f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.a, vec3<bool>(!global0.c && all(!vec4<bool>(global0.b.x, false, false, true)), global0.c, true), ~4294967295u < (~(~global1[_wgslsmith_index_u32(7571u, 11u)]) ^ abs(59860u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(true, reverseBits(vec2<i32>(u_input.a, 1i)), ~global0.a.x, !select(vec3<bool>(global0.c, global0.c, true), vec3<bool>(global0.c, false, global0.c), true))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1732f)), global0.d.x, 1f, -249f))));
    var var_1 = 42574u;
    let var_2 = _wgslsmith_clamp_vec2_i32(abs(-vec2<i32>(1i, reverseBits(var_0.a.x))), _wgslsmith_div_vec2_i32(-vec2<i32>(71417i, u_input.a), var_0.a.zz | var_0.a.xx), _wgslsmith_mod_vec2_i32(vec2<i32>(~(-33606i), var_0.a.x), var_0.a.zy));
    var var_3 = _wgslsmith_div_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(~_wgslsmith_div_u32(3508u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)]), 0u, true), 11u)], 11u)], 11u)], 11u)], 0u);
    global1 = array<u32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(788i, var_0.a, max(var_2.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_0.a.x, 2147483647i, -2147483647i) & vec4<i32>(var_0.a.x, var_0.a.x, 1i, var_0.a.x), abs(vec4<i32>(var_0.a.x, var_0.a.x, -2147483647i, 34769i))), vec4<i32>(-2147483647i, abs(u_input.a), -28961i, -2147483647i))), u_input.a, -448f);
}

