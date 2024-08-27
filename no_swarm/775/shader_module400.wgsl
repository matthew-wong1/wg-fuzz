struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> f32 {
    var var_0 = all(vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1000f, -604f)))) >= 849f, arg_0.a, true, arg_0.a));
    var_0 = !all(select(!(!vec3<bool>(arg_0.a, false, false)), !vec3<bool>(arg_0.a, true, false), select(select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false), false), vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a))));
    var var_1 = Struct_1(u_input.b, select(!vec2<bool>(false, select(false, false, true)), !select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, false)), select(vec2<bool>(true, arg_0.a), vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, true))), vec2<bool>(true, true)));
    var var_2 = 0u;
    var_0 = -1145f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(570f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-666f, -925f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(999f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * 975f), _wgslsmith_f_op_f32(328f - 1230f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(243f))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(372f + -1267f), _wgslsmith_f_op_f32(func_3(Struct_3(false), u_input.a.x))), 1764f)));
    var_0 = vec2<f32>(-1723f, var_0.x);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - 617f));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_mod_vec3_u32(firstLeadingBit(select(~(~vec3<u32>(1u, 1u, 20659u)), vec3<u32>(1u, 1u, 1u), arg_1)), vec3<u32>(firstLeadingBit(4294967295u), ~countOneBits(1u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(105632u, 9469u), vec2<u32>(34238u, 1u), true), vec2<u32>(1u, 1u)), 1u)));
    var var_1 = 426f;
    var var_2 = func_2();
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), -1459f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(473f * var_2.a) * -546f)))));
    var_0 = vec3<u32>(~_wgslsmith_dot_vec2_u32(countOneBits(firstTrailingBit(vec2<u32>(var_0.x, 56829u))), ~select(vec2<u32>(15919u, 4294967295u), var_0.xx, vec2<bool>(true, arg_1))), 4294967295u, var_0.x);
    return arg_1 || !any(vec4<bool>(true, true, true, true));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_3(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_4(func_2(), all(vec2<bool>(true, true)), vec3<i32>(u_input.b, -2147483647i, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, u_input.b)))));
    var_0 = Struct_3(all(select(vec4<bool>(false, all(vec4<bool>(true, true, var_0.a, true)), false, all(vec4<bool>(var_0.a, true, false, var_0.a))), vec4<bool>(true, true, true, true), any(!vec2<bool>(var_0.a, true)))));
    var_0 = Struct_3(!func_4(Struct_2(426f), false, ~vec3<i32>(u_input.a.x, 17382i, u_input.a.x), ~vec3<i32>(-1i, u_input.b, -1i)) | any(vec4<bool>(all(vec2<bool>(true, false)), var_0.a, var_0.a, false)));
    let var_1 = Struct_1(abs(_wgslsmith_mult_i32(u_input.b, ~(~u_input.a.x))), vec2<bool>(true, true));
    let var_2 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~4294967295u, 1u, min(1u, 27861u)), vec4<u32>(~1u, 1u, max(4294967295u, 4294967295u), select(0u, 4294967295u, var_1.b.x))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_i32(u_input.b, -_wgslsmith_mult_i32(0i, -2147483647i)) ^ 43638i, vec2<bool>(true, true));
    let var_1 = func_1();
    var_0 = Struct_1(-34078i, !vec2<bool>(any(vec4<bool>(true, false, false, var_0.b.x)), false));
    var_0 = Struct_1(-var_0.a, !(!select(select(var_0.b, vec2<bool>(var_0.b.x, var_0.b.x), var_0.b), select(var_0.b, vec2<bool>(false, var_0.b.x), var_0.b.x), !var_0.b)));
    let var_2 = Struct_3(all(select(var_0.b, vec2<bool>(true, func_4(var_1, true, vec3<i32>(var_0.a, 63055i, u_input.b), vec3<i32>(1i, var_0.a, var_0.a))), !any(vec4<bool>(true, true, var_0.b.x, var_0.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -464f));
}

