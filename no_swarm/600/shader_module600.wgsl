struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    return u_input.a;
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(arg_0, vec3<bool>(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))), max(_wgslsmith_add_u32(u_input.a, 0u), 30098u) < max(~67195u, 30547u << (u_input.a % 32u)), ~(4294967295u >> (u_input.a % 32u)) <= firstTrailingBit(~arg_0)));
    var var_1 = Struct_1(var_0.a, select(var_0.b, vec3<bool>(!var_0.b.x, any(vec4<bool>(true, true, true, true)), false), select(!vec3<bool>(true, false, var_0.b.x), vec3<bool>(var_0.b.x, false, true), vec3<bool>(!var_0.b.x, true, all(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))))));
    let var_2 = Struct_1(~countOneBits(var_1.a), vec3<bool>(all(select(!vec4<bool>(false, var_0.b.x, var_1.b.x, var_1.b.x), select(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), vec4<bool>(false, true, var_0.b.x, var_0.b.x), vec4<bool>(true, false, true, var_0.b.x)), var_0.a >= 53210u)), all(vec2<bool>(true, all(vec4<bool>(true, var_0.b.x, false, true)))), !(!all(vec2<bool>(var_0.b.x, true)))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) + _wgslsmith_div_f32(-626f, -290f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-345f, 1468f)))) - _wgslsmith_f_op_f32(ceil(1151f)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(arg_1.x));
    var var_1 = 0i;
    var_1 = 2147483647i;
    var_1 = 2147483647i;
    let var_2 = _wgslsmith_div_i32(select(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-11821i, -6885i, 0i, -26332i), vec4<i32>(-1117i, -12244i, -6340i, 2147483647i)) << (u_input.a % 32u)), _wgslsmith_div_i32(-abs(-1i), _wgslsmith_sub_i32(-62855i, 26263i)), func_2(~vec2<u32>(arg_0.a, u_input.a), ~u_input.a) == 23092u), ~(~(-8527i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1508f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -2039f), !arg_0.b.x)) * -1610f)) + arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_sub_u32(~u_input.a, 45069u), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1011f, 546f, -838f, 337f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1156f, -242f, 1323f, 2304f), vec4<f32>(678f, -842f, 1280f, -631f), vec4<bool>(true, true, true, false)))))))));
    var var_1 = Struct_1(~u_input.a, vec3<bool>(!(!all(vec3<bool>(false, false, true))), false, true));
    var_1 = Struct_1(4294967295u, select(!var_1.b, select(var_1.b, var_1.b, vec3<bool>(true, true || var_1.b.x, true)), var_1.b.x));
    var_1 = Struct_1(_wgslsmith_mod_u32(~1u, countOneBits(var_1.a)), !select(!select(var_1.b, vec3<bool>(var_1.b.x, var_1.b.x, true), var_1.b), vec3<bool>(any(var_1.b), true, all(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x))), var_1.b.x));
    var var_2 = Struct_1(abs(_wgslsmith_add_u32(abs(u_input.a), _wgslsmith_div_u32(var_1.a, max(4294967295u, var_1.a)))), vec3<bool>(true, select(var_1.b.x, all(var_1.b), true), 499f > var_0));
    let var_3 = false | var_2.b.x;
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_2.a, min(3122u, 0u), ~2055u, _wgslsmith_div_u32(4294967295u, var_1.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(888f, var_0, var_0, -1142f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(676f, 1770f, -964f, var_0)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0), -960f, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))))));
}

