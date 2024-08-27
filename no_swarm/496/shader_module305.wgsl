struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    var var_0 = vec4<u32>(~0u, global1.d, 14565u, _wgslsmith_div_u32(4294967295u, reverseBits(global1.d)));
    var var_1 = ~(i32(-1i) * -_wgslsmith_mult_i32(~global1.c, ~(-27494i)));
    let var_2 = Struct_1(global1.e, _wgslsmith_f_op_f32(global1.b * 1000f), u_input.c.x, ~var_0.x, false);
    var var_3 = var_2;
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1379f)) * _wgslsmith_f_op_f32(-569f * -1000f))))));
    return _wgslsmith_mod_i32(var_2.c & _wgslsmith_dot_vec2_i32(~vec2<i32>(-3452i, global1.c), u_input.c.zx), _wgslsmith_sub_i32(max(2147483647i, _wgslsmith_div_i32(i32(-1i) * -4647i, var_2.c)), -(~0i)));
}

fn func_1() -> bool {
    let var_0 = !(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, global1.a), vec2<bool>(global1.a, global1.e), vec2<bool>(true, false)), select(vec2<bool>(true, global1.e), vec2<bool>(true, true), global1.a), !vec2<bool>(false, global1.a)), u_input.b >= u_input.b));
    var var_1 = Struct_1(((u_input.b ^ u_input.b) >> (global1.d % 32u)) < ~u_input.b, -1112f, min(-35068i, 2147483647i), select(~0u, min(_wgslsmith_add_u32(max(global1.d, u_input.b), _wgslsmith_add_u32(32983u, u_input.b)), ~_wgslsmith_mult_u32(u_input.b, 0u)), any(vec3<bool>(var_0.x, global1.a & true, var_0.x))), true);
    let var_2 = -84823i;
    var var_3 = var_0.x;
    var var_4 = -(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-22035i), _wgslsmith_mult_i32(u_input.a.x, global1.c), func_2()), vec3<i32>(0i, 25944i, 1i) & (vec3<i32>(-10709i, 47194i, var_1.c) & u_input.c)) & firstLeadingBit(_wgslsmith_mult_i32(var_1.c, global1.c)));
    return true;
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: bool) -> vec3<u32> {
    global0 = 2147483647i;
    return vec3<u32>(max(u_input.b | countOneBits(global1.d), _wgslsmith_dot_vec4_u32(vec4<u32>(44929u, u_input.b, global1.d, 0u), vec4<u32>(4294967295u, 14544u, global1.d, global1.d))), 4294967295u, 1u >> (firstLeadingBit(abs(60125u)) % 32u)) ^ _wgslsmith_add_vec3_u32(~(~select(vec3<u32>(global1.d, 0u, global1.d), vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<bool>(global1.a, global1.e, arg_2))), ~(~abs(vec3<u32>(global1.d, 143657u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec3<bool>(func_1(), 1095f >= global1.b, true)), !vec3<bool>(global1.a & any(vec2<bool>(true, global1.a)), !(4294967295u > u_input.b), false), ~global1.d >= _wgslsmith_div_u32(_wgslsmith_mod_u32(abs(0u), global1.d), _wgslsmith_dot_vec3_u32(func_3(vec2<bool>(global1.e, global1.a), u_input.d.x, global1.e), vec3<u32>(30796u, u_input.b, u_input.b) | vec3<u32>(u_input.b, 43220u, 4294967295u))));
    let var_1 = ~vec3<u32>(global1.d, 13444u, _wgslsmith_div_u32(1580u, global1.d));
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(global1.d | _wgslsmith_clamp_u32(1u, ~var_1.x, global1.d), ~(~124811u), u_input.b), func_3(vec2<bool>(func_1(), false), abs(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 59552i), vec3<i32>(41136i, u_input.d.x, global1.c)), -u_input.c.x)), true));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(187f, global1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + global1.b)), global1.b, _wgslsmith_f_op_f32(1434f + _wgslsmith_f_op_f32(-global1.b))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(615f, 1967f, global1.b, global1.b))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global1.b, 278f, 1000f), vec4<f32>(373f, 468f, global1.b, global1.b), vec4<bool>(var_0.x, true, true, true))))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(max(var_3.zy, vec2<f32>(-1796f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -126f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(51564u, 0u, u_input.b, u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(12772u, 41627u, u_input.b, global1.d), vec4<u32>(var_2.x, global1.d, var_2.x, 19799u))), var_1.x) & abs(countOneBits(_wgslsmith_mult_u32(global1.d, 68204u))));
}

