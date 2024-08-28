struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-669f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(select(310f, -1000f, false)), arg_0.b)))))));
    let var_1 = vec4<u32>(~u_input.b.x, u_input.b.x, ~1u, select(u_input.b.x, abs(u_input.b.x), true));
    let var_2 = 115572u;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(min(-485f, arg_0.b)), _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0.c.a, var_0.x)), _wgslsmith_f_op_f32(abs(arg_0.b)))))));
    var var_3 = Struct_4(~(~(~var_1.x)));
    return u_input.b.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-460f, -931f, -776f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2174f, -334f, 1341f, -1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(244f))), 1485f, 292f, _wgslsmith_f_op_f32(-220f + 910f))), max(~(~func_3(Struct_2(true, 1996f, Struct_1(431f), vec3<i32>(0i, -22684i, u_input.c.x), false))), min(_wgslsmith_div_u32(28548u, u_input.b.x & u_input.b.x), countOneBits(4294967295u) ^ firstTrailingBit(u_input.b.x))), -2374f, vec3<u32>(u_input.b.x, reverseBits(reverseBits(4294967295u)) << (~(~0u) % 32u), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x) >> (_wgslsmith_add_u32(1u, u_input.b.x) % 32u))), Struct_2(any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), all(vec4<bool>(true, true, false, false)))), -827f, Struct_1(_wgslsmith_f_op_f32(floor(802f))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_mod_i32(11288i, u_input.c.x), 2147483647i), vec3<i32>(-12453i, 23090i, -u_input.c.x)), true));
    return -1132f;
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = !(true | !(!all(vec3<bool>(true, true, false))));
    let var_1 = Struct_3(vec4<f32>(1021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(922f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-818f)), _wgslsmith_f_op_f32(-522f * 1567f))) + _wgslsmith_f_op_f32(f32(-1f) * -1303f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -906f))))), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -1203f))), vec3<u32>(u_input.b.x, 27163u, 0u ^ ~(~arg_0)), Struct_2(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-270f, _wgslsmith_f_op_f32(min(2092f, -1708f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + -1000f)), countOneBits(vec3<i32>(-16104i, u_input.a.x, ~(-1i))), var_0));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-773f, 1086f)))) * 578f));
    let var_3 = var_1.e;
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, _wgslsmith_f_op_f32(floor(var_1.a.x))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.a.yy))), var_1.a.zw, var_3.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.e.c.a)), -886f)))));
    return vec3<bool>(!(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-582f * var_1.a.x), -134f)) < _wgslsmith_f_op_f32(trunc(var_4.x))), true, any(!(!vec2<bool>(var_1.e.e, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(false, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false), true), false)));
    var_0 = !(!vec2<bool>(!any(vec2<bool>(false, var_0.x)), any(func_1(0u))));
    var_0 = select(select(select(vec2<bool>(all(vec2<bool>(true, true)), var_0.x | false), !vec2<bool>(var_0.x, false), vec2<bool>(func_1(u_input.b.x).x, true)), vec2<bool>(var_0.x, any(vec4<bool>(false, false, true, true))), vec2<bool>(var_0.x, true)), !select(vec2<bool>(true, true), select(select(vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x), var_0.x), vec2<bool>(true, var_0.x), all(vec2<bool>(true, true))), !vec2<bool>(false, var_0.x)), !(~u_input.b.x <= u_input.b.x));
    var_0 = !(!vec2<bool>(!(!var_0.x), var_0.x));
    var_0 = select(select(select(!func_1(60364u).zx, select(vec2<bool>(var_0.x, var_0.x), func_1(u_input.b.x).xx, all(vec2<bool>(var_0.x, false))), all(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, false), false))), vec2<bool>(-243f < _wgslsmith_f_op_f32(sign(-1257f)), var_0.x), !select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), !vec2<bool>(var_0.x, var_0.x))), func_1(_wgslsmith_mult_u32(u_input.b.x, ~4294967295u)).yy, var_0.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(1518f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -957f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(max(~abs(u_input.a.zzw), u_input.a.wyz), ~(-vec3<i32>(2147483647i, -2147483647i, u_input.a.x))));
}

