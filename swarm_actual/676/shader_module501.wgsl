struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = Struct_1(0i);
    let var_1 = true;
    let var_2 = !select(!var_1, -3489i < ~var_0.a, any(select(vec4<bool>(false, false, var_1, var_1), vec4<bool>(var_1, false, var_1, var_1), select(var_1, true, var_1))));
    var var_3 = Struct_1(arg_0.x);
    let var_4 = true;
    return 0i;
}

fn func_2() -> vec3<bool> {
    return vec3<bool>(true, 23644i > _wgslsmith_add_i32(func_3(abs(vec2<i32>(-2147483647i, 7048i))), 64716i), all(select(vec2<bool>(true, any(vec4<bool>(false, true, true, false))), vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = vec2<f32>(-925f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1186f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2729f, -149f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(-var_0.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.x)))), 1323f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - var_0.x), 1998f)))));
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, 269f))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -262f)), vec2<f32>(142f, _wgslsmith_f_op_f32(var_1 + var_1))))));
    return max(arg_1.a, 1i);
}

fn func_1() -> vec3<u32> {
    var var_0 = vec3<i32>(countOneBits(1476i), func_4(func_2(), Struct_1(28917i)), ~(-4031i));
    var_0 = ~abs(~vec3<i32>(firstLeadingBit(35874i), _wgslsmith_mod_i32(var_0.x, var_0.x), var_0.x));
    var_0 = vec3<i32>(var_0.x, ~var_0.x, ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(select(-52424i, var_0.x, false), 0i), 37851i));
    let var_1 = Struct_1(~1i);
    var var_2 = vec4<bool>(-1610f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-446f, -1520f))) - _wgslsmith_f_op_f32(-708f - _wgslsmith_f_op_f32(trunc(490f)))), all(vec2<bool>(true, true)), true, false);
    return ~(~_wgslsmith_mult_vec3_u32(firstLeadingBit(select(vec3<u32>(55957u, 1u, 4294967295u), vec3<u32>(1u, u_input.b, 4294967295u), var_2.x)), vec3<u32>(52973u, reverseBits(1u), _wgslsmith_div_u32(80831u, 65101u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = !(!(!(~u_input.a <= ~1u)));
    var var_1 = Struct_1(1i);
    let var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, _wgslsmith_mod_u32(abs(17363u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 27096u), vec2<u32>(15408u, 6198u)))), vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(20271u, u_input.a, 4294967295u)), vec3<u32>(~4294967295u, 4294967295u, _wgslsmith_mod_u32(u_input.a, 0u))), u_input.a));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~vec3<u32>(firstTrailingBit(u_input.b), u_input.a, 1u), select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 16687u, 4294967295u), vec3<u32>(2419u, 49560u, var_2)), _wgslsmith_add_vec3_u32(func_1(), ~vec3<u32>(u_input.b, u_input.a, u_input.a)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1000f)))) - -1000f), reverseBits(-50782i));
}

