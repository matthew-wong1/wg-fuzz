struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = i32(-1i) * -arg_3.b;
    var_0 = arg_0.b;
    var_0 = arg_3.b;
    var_0 = -(i32(-1i) * -2147483647i);
    var_0 = arg_3.b;
    return vec3<f32>(_wgslsmith_f_op_f32(-2188f * arg_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.a.x))), arg_3.a.x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) * _wgslsmith_f_op_f32(floor(arg_0.a.x)))))), arg_3.a.x);
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = abs(_wgslsmith_clamp_i32(arg_0 >> (max(u_input.a, u_input.a) % 32u), arg_0, -1i));
    var var_1 = !select(!vec2<bool>(all(vec4<bool>(false, false, false, false)), true), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), !all(vec4<bool>(false, true, false, false)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-953f, 1294f, 422f) * vec3<f32>(1148f, 296f, 1008f)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(-32449i, arg_0, -11604i, arg_0)), var_1.x | true), vec4<f32>(1f, 1f, 1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(min(-660f, -1358f))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1412f, -260f, -550f) + vec3<f32>(1274f, 1635f, 106f)), _wgslsmith_mult_i32(arg_0, arg_0), all(vec3<bool>(var_1.x, false, var_1.x)))))), 0i, var_1.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.a), -_wgslsmith_mult_i32(-max(arg_0, arg_0), -countOneBits(var_2.b)), any(!vec2<bool>(-715f < var_2.a.x, select(var_2.c, var_2.c, true))));
    var var_4 = ~(~(~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 18213u), vec2<u32>(u_input.a, 0u)))));
    return select(~u_input.a, select(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 19095u), 42812u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a), 0u), _wgslsmith_add_i32(var_2.b, 2147483647i) >= -var_2.b) >> (~u_input.a % 32u), _wgslsmith_sub_u32(~1u, u_input.a) > 14894u);
}

fn func_1() -> Struct_1 {
    var var_0 = 58918u;
    var_0 = func_2(~1937i);
    var_0 = u_input.a;
    let var_1 = ~(-(~(~(i32(-1i) * -1i))));
    let var_2 = 0i;
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-794f, -1000f, 512f) + vec3<f32>(-128f, -1000f, 1442f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(296f, 904f, -162f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(844f, 209f, 347f)))))), vec3<f32>(-1000f, 535f, -168f)), 31160i, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0.c;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(731f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(448f + var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(812f + 834f) * -370f) <= _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a), _wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.a, true)), var_0.b <= -2147483647i)))), var_0.b, var_0.c);
    let var_4 = 15096u;
    let var_5 = firstTrailingBit(-3203i);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

