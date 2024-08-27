struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    let var_0 = -_wgslsmith_sub_i32(~(~(u_input.d.x | u_input.c.x)), reverseBits(-18435i));
    global0 = vec3<bool>(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1783f, -137f)))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-144f, -197f)), _wgslsmith_f_op_f32(select(1210f, -1000f, false))))), global0.x);
    var var_1 = global0.x || false;
    let var_2 = u_input.b;
    let var_3 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(u_input.d.zx | select(u_input.c.xx, vec2<i32>(u_input.d.x, 2147483647i), global0.zx), max(firstLeadingBit(u_input.c.xy), u_input.d.zz)), -1100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(670f, 1000f)))), var_0, vec4<bool>(true, select(var_0 != 2147483647i, all(vec3<bool>(global0.x, true, false)), false), !global0.x | all(vec4<bool>(true, global0.x, true, false)), select(!global0.x, all(vec4<bool>(global0.x, global0.x, false, false)), global0.x))), Struct_1(vec2<i32>(-u_input.a, reverseBits(1i)) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1095f), -1441f, reverseBits(1i) & var_0, vec4<bool>(true, true, true, true)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, -614f))))))));
}

fn func_2() -> Struct_2 {
    let var_0 = ~u_input.c.x;
    var var_1 = Struct_1(vec2<i32>(max(2147483647i, var_0), select(_wgslsmith_dot_vec2_i32(~u_input.c.xx, vec2<i32>(1i, 2147483647i) & u_input.c.zz), _wgslsmith_add_i32(var_0, -u_input.d.x), _wgslsmith_mod_u32(29551u, 4294967295u) != (4294967295u << (u_input.b % 32u)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1515f), 1011f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-772f, -1092f)) - -456f)), 701f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(431f, 1103f)) - 1576f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f - -743f))), var_0, vec4<bool>(global0.x, global0.x, global0.x, !all(vec3<bool>(global0.x, global0.x, global0.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - 814f) * -612f), _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_1.c) - vec2<f32>(var_1.b, var_1.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b, var_1.c), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, var_1.b), vec2<f32>(var_1.c, var_1.b)), !global0.yz)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(125f, 802f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1601f, var_1.b), vec2<f32>(var_1.b, var_1.b))))))));
    var_1 = Struct_1(_wgslsmith_div_vec2_i32(~u_input.c.zz, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(~u_input.c.xz, u_input.c.xy & vec2<i32>(u_input.d.x, var_1.a.x)), vec2<i32>(_wgslsmith_mod_i32(var_0, 0i), var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -126f), 1000f, ~(~((u_input.a & 0i) >> (u_input.b % 32u))), !vec4<bool>(all(select(vec2<bool>(false, var_1.e.x), global0.xy, var_1.e.x)), !all(vec4<bool>(var_1.e.x, global0.x, true, global0.x)), !(var_0 >= -2147483647i), all(vec3<bool>(global0.x, false, var_1.e.x))));
    let var_3 = false;
    return Struct_2(Struct_1(u_input.d.xx | select(var_1.a, u_input.d.zy, global0.x), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), reverseBits(-25279i), !(!var_1.e)), Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c.xy, countOneBits(u_input.d.zy)), vec2<i32>(var_1.d, var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(517f, -485f, global0.x))))), var_1.b, 2147483647i, !select(select(vec4<bool>(global0.x, var_3, global0.x, false), vec4<bool>(global0.x, global0.x, true, true), var_1.e), select(var_1.e, vec4<bool>(false, var_3, var_1.e.x, global0.x), var_1.e.x), vec4<bool>(false, global0.x, var_3, true))));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    var var_0 = func_2();
    var_0 = Struct_2(func_2().b, var_0.a);
    let var_1 = any(!var_0.b.e.zww);
    global0 = vec3<bool>(!(~_wgslsmith_div_u32(173108u, u_input.b) > _wgslsmith_dot_vec3_u32(vec3<u32>(31717u, 1u, arg_0.x), firstTrailingBit(vec3<u32>(0u, 0u, u_input.b)))), true, false);
    let var_2 = Struct_2(func_2().b, Struct_1(min(~abs(vec2<i32>(3611i, -5159i)), firstLeadingBit(firstTrailingBit(u_input.c.xy))), -149f, _wgslsmith_f_op_f32(var_0.a.c * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.b * 843f)))), -10729i, vec4<bool>(true, true, true, true)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!select(select(!vec3<bool>(false, true, global0.x), vec3<bool>(true, false, global0.x), !vec3<bool>(true, global0.x, false)), vec3<bool>(true, false, func_1(vec3<u32>(1u, 16930u, u_input.b))), false));
    global0 = vec3<bool>(global0.x, !any(global0.xz), false);
    global0 = vec3<bool>(true, global0.x, false);
    global0 = func_2().a.e.zxx;
    global0 = !vec3<bool>(true, !global0.x, true);
    let var_0 = Struct_1(vec2<i32>(-reverseBits(-38224i), -(~(i32(-1i) * -2147483647i))), -1092f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(774f))), -countOneBits(-u_input.c.x), vec4<bool>(!any(select(vec2<bool>(global0.x, false), global0.xy, vec2<bool>(global0.x, true))), any(vec3<bool>(global0.x, global0.x, any(vec4<bool>(global0.x, global0.x, true, true)))), any(vec4<bool>(true, false, global0.x, true)), global0.x));
    var var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(1000f)), u_input.d, vec4<f32>(-1000f, -545f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-601f)), var_1.a.c)));
}

