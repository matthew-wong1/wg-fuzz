struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    let var_0 = u_input.c;
    return u_input.b;
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = select(!select(vec2<bool>(all(vec3<bool>(true, true, false)), true), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), any(vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, true))), !select(vec2<bool>(true, all(vec2<bool>(false, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), true));
    var var_1 = !var_0.x;
    var var_2 = Struct_1(~select(select(u_input.b, ~u_input.b, var_0.x), vec3<u32>(arg_0.a.x, ~1u, 38103u), select(vec3<bool>(true, true, true), !vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x))), arg_0.b);
    let var_3 = var_2.b.x;
    let var_4 = !vec4<bool>((_wgslsmith_mod_i32(u_input.c, 25692i) < -1i) || any(select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, false, false), var_0.x)), any(vec3<bool>(arg_0.b.x >= arg_0.b.x, all(var_0), true)), true, -u_input.c <= _wgslsmith_mod_i32(u_input.c, select(u_input.a.x, -2147483647i, var_0.x)));
    return u_input.b;
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = func_4(Struct_1(func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, arg_0.b.x)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x)) + _wgslsmith_f_op_f32(-768f + _wgslsmith_f_op_f32(arg_0.b.x * 685f)))), 558f);
    var var_2 = arg_0;
    var_2 = Struct_1(vec3<u32>(~_wgslsmith_sub_u32(4294967295u, arg_0.a.x) >> (4294967295u % 32u), var_2.a.x, 1u), arg_0.b);
    var var_3 = vec2<bool>(true, any(select(vec4<bool>(any(vec2<bool>(false, true)), select(false, true, true), true, true), vec4<bool>(true, true, true, true), true)));
    return ~(~countOneBits(~var_2.a.zx) | ~(vec2<u32>(5851u, u_input.b.x) ^ vec2<u32>(var_0.x, 15429u)));
}

fn func_1(arg_0: Struct_1) -> bool {
    return arg_0.a.x >= _wgslsmith_dot_vec2_u32((_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b.x), arg_0.a.zz) >> (vec2<u32>(u_input.b.x, arg_0.a.x) % vec2<u32>(32u))) | min(arg_0.a.yz >> (vec2<u32>(arg_0.a.x, 1091u) % vec2<u32>(32u)), u_input.b.xy), func_2(Struct_1(vec3<u32>(4294967295u, u_input.b.x, 0u), vec2<f32>(399f, arg_0.b.x))) & ~select(vec2<u32>(arg_0.a.x, arg_0.a.x), vec2<u32>(31845u, 4490u), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-u_input.a.x, ~(_wgslsmith_mod_i32(u_input.a.x, abs(-42572i)) & ~0i));
    let var_1 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, ~9946u, ~4294967295u), vec3<u32>(6580u, 22158u, select(u_input.b.x, ~u_input.b.x, any(vec4<bool>(true, true, true, true))))), vec2<f32>(198f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(837f))))));
    var var_2 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(func_1(Struct_1(u_input.b, vec2<f32>(var_1.b.x, var_1.b.x))), false, true, any(vec2<bool>(true, true))), true), any(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, var_2.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, 1119f) + vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, -252f) - vec3<f32>(var_1.b.x, -909f, 763f)), var_2.yxz)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, -1105f, var_1.b.x) + vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x))))))));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -366f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_1.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -495f));
    let var_5 = Struct_1(abs(vec3<u32>(func_2(var_1).x | var_1.a.x, 49522u, var_1.a.x << (4294967295u % 32u))), var_3.zx);
    var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - var_5.b.x))), var_4.x) - vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), -1256f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.x, 193f) - _wgslsmith_f_op_f32(f32(-1f) * -888f))));
    var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(211f)), var_5.b.x, _wgslsmith_f_op_f32(1000f + -512f)) * vec3<f32>(_wgslsmith_f_op_f32(1000f - 1222f), _wgslsmith_f_op_f32(trunc(139f)), _wgslsmith_f_op_f32(exp2(var_1.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_5.b.x)), _wgslsmith_f_op_f32(-var_4.x), var_1.b.x), var_2.xwy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1564f)) * var_1.b.x) * _wgslsmith_f_op_f32(var_3.x * var_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -388f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.b.x * var_1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(var_1.b.x - var_1.b.x)))), vec2<i32>(-74027i, var_0.x) ^ (vec2<i32>(9398i, ~u_input.c) >> (var_5.a.yx % vec2<u32>(32u))), vec2<u32>(abs(firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, 1u))), (var_1.a.x & abs(var_1.a.x)) | _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_5.a.x, u_input.b.x, 4294967295u), vec4<u32>(17306u, 35368u, var_1.a.x, var_5.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, var_1.a.x), vec4<u32>(var_5.a.x, 0u, 23258u, 1u)))));
}

