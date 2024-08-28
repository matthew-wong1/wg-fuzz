struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = ~vec4<u32>(3933u, ~(~u_input.b.x), ~1u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)) << (vec4<u32>(~u_input.b.x, ~(~(u_input.b.x & 0u)), u_input.b.x & u_input.a, _wgslsmith_add_u32(34357u, firstLeadingBit(_wgslsmith_clamp_u32(u_input.c, u_input.b.x, 1u)))) % vec4<u32>(32u));
    var var_1 = Struct_2(select(vec3<bool>(select(false, false, false) && true, select(true, true, true), false), vec3<bool>(true, false, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 24240i, 4172i), vec3<i32>(18614i, 24848i, 0i)) == ~2147483647i), false));
    var_1 = Struct_2(!var_1.a);
    var_1 = Struct_2(!select(vec3<bool>(true, true, all(var_1.a)), var_1.a, select(var_1.a, vec3<bool>(true, true, true), var_1.a)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1347f - 1259f) + _wgslsmith_f_op_f32(sign(arg_0)))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1015f)))))), var_2.a)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1348f)))) - -963f));
    var_1 = Struct_1(-1084f);
    var_1 = Struct_1(var_1.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a, var_1.a)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1751f, var_1.a)))))));
    return Struct_2(arg_0);
}

fn func_1() -> vec2<i32> {
    let var_0 = func_2(!(!vec3<bool>(true, all(vec4<bool>(false, false, false, false)), true)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(742f, 1906f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1358f)), 1066f) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(524f * -687f))), 1f, _wgslsmith_div_f32(-869f, _wgslsmith_f_op_f32(f32(-1f) * -714f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -945f)))));
    var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1.a))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(1f)), var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-519f, var_1.a.x)))));
    var var_2 = var_0;
    let var_3 = var_0;
    return vec2<i32>(~(_wgslsmith_add_i32(-16051i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -20763i, 1i), vec4<i32>(-14313i, 32676i, 0i, 1i))) ^ 2147483647i), (reverseBits(_wgslsmith_clamp_i32(-37335i, 1i, 64122i)) & min(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -9668i), vec2<i32>(-66504i, -18416i)), i32(-1i) * -7781i)) >> (4294967295u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(select(~func_1(), vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(-50970i, 48020i), vec2<i32>(-57503i, -37557i), vec2<i32>(-1i, -14610i)), any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-var_0.x, _wgslsmith_mod_i32(-_wgslsmith_mod_i32(var_0.x, var_0.x), -1i), -1i), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_f32(872f - _wgslsmith_f_op_f32(trunc(-173f))));
}

