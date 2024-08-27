struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> f32 {
    var var_0 = 774f;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f))));
    var_0 = 387f;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-959f + arg_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1226f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * arg_1);
    let var_2 = select(!(!vec4<bool>(all(vec4<bool>(true, true, false, true)), true, all(vec3<bool>(true, false, false)), true)), select(!vec4<bool>(true, true, any(vec2<bool>(true, false)), false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, select(false, false, false), true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-arg_1.x)), var_1.x);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.c.x, vec3<f32>(284f, -557f, -1043f))), 1121f), _wgslsmith_f_op_f32(floor(-627f)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 4294967295u, 25785u), vec4<u32>(23697u, u_input.a, 1u, u_input.c.x)) < 33346u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f)))));
    var var_1 = -abs(select(~(-vec4<i32>(-2147483647i, -3599i, 0i, -24803i)), vec4<i32>(i32(-1i) * -2522i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 3233i, -20208i), vec3<i32>(0i, -15348i, -45549i)), abs(1i), 1i), true));
    let var_2 = -1000f;
    var var_3 = !(select(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), true, false) && all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var_3 = true;
    return Struct_1(_wgslsmith_div_vec2_i32(var_1.ww, ~_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(-261i, 0i)), vec2<i32>(17921i, var_1.x))), 33292i);
}

fn func_1() -> i32 {
    var var_0 = Struct_2(func_2());
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1095f, -725f), _wgslsmith_f_op_vec2_f32(vec2<f32>(478f, 2473f) * vec2<f32>(-180f, 142f)))))))));
    let var_2 = var_0.a;
    var_0 = Struct_2(Struct_1(vec2<i32>(var_0.a.a.x, firstLeadingBit(var_0.a.b)), countOneBits(~(36866i | var_0.a.b))));
    let var_3 = ~vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.a) >> (~(~(~vec4<u32>(0u, u_input.b, 29323u, 31055u) ^ vec4<u32>(u_input.b, 1u, 11428u, u_input.c.x))) % vec4<u32>(32u));
    return ~var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = true;
    let var_2 = Struct_1(vec2<i32>(47144i, 1i), _wgslsmith_add_i32(select(func_1(), select(firstTrailingBit(20455i), -29736i, var_1), any(vec3<bool>(false, false, true))), 1i));
    let var_3 = _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~min(vec3<u32>(u_input.c.x, 0u, 4294967295u), vec3<u32>(42081u, u_input.c.x, 31558u)), ~(~vec3<u32>(19232u, u_input.c.x, 4294967295u))), ~vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.c.x), 75991u, ~4294967295u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(-234f, -933f)), -1579f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-360f, -1000f), vec2<f32>(1049f, 1260f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-205f, -118f)), -1547f)));
    let var_5 = vec4<bool>(!var_1, true, true, true);
    var var_6 = Struct_2(func_2());
    var_0 = min(abs(var_3), u_input.b) <= max(13489u, 0u);
    var var_7 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer((~_wgslsmith_mult_u32(var_3, var_3) >> (u_input.c.x % 32u)) | _wgslsmith_add_u32(_wgslsmith_sub_u32(~var_3, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c)), select(28149u, var_3, true)));
}

