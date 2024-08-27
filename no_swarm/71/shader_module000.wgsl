struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = Struct_1(u_input.d.x);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f))));
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    return -2147483647i;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_2(vec2<f32>(2096f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(arg_1))))), Struct_1(_wgslsmith_sub_u32(u_input.d.x, 21468u) << (~(~arg_1) % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1337f, var_0.a.x, var_0.a.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1401f, var_0.a.x, var_0.a.x) * vec3<f32>(-536f, var_0.a.x, var_0.a.x)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1459f, var_0.a.x, var_0.a.x), vec3<f32>(-556f, 1299f, var_0.a.x), vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 453f, var_0.a.x)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)))))));
    return Struct_3(Struct_2(var_1.xx, var_0.b), Struct_1(~1u), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(~18459u, min(arg_2.x, arg_1)), arg_1, abs(max(~78729u, 0u ^ arg_2.x))), Struct_2(_wgslsmith_f_op_vec2_f32(var_1.yz - var_0.a), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(24310u, var_0.b.a), vec2<u32>(18539u, 48024u), vec2<u32>(67981u, arg_2.x)), ~u_input.d.yz))), Struct_1(33761u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(601f + _wgslsmith_f_op_f32(f32(-1f) * -1236f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2043f + 918f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1810f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(325f + 644f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.d.x)) + 1f) * 587f)));
    var_0 = _wgslsmith_mult_i32(15209i, u_input.b.x);
    let var_2 = func_3(_wgslsmith_sub_i32(-max(-9730i, u_input.c.x) | u_input.b.x, _wgslsmith_clamp_i32(func_2(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), 0i, u_input.b.x)), max(~91015u, select(countOneBits(u_input.d.x), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_mult_u32(u_input.d.x, 4294967295u)), !select(true, false, true))), u_input.d);
    var_0 = u_input.c.x;
    var var_3 = Struct_1(~var_2.b.a);
    var_3 = Struct_1(~_wgslsmith_add_u32(var_2.e.a, ~var_3.a | min(14289u, u_input.d.x)));
    var_3 = func_3(_wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(0i, -20879i)), 11489u, ~(~(~u_input.d))).e;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

