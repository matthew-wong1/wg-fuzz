struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(-177f, !all(vec3<bool>(true, u_input.c.x != 2147483647i, any(vec2<bool>(false, false)))));
    var var_1 = var_0;
    var_1 = var_0;
    global0 = 10131u;
    let var_2 = vec4<i32>(-41392i, _wgslsmith_div_i32(_wgslsmith_mod_i32(-u_input.c.x, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 26234i, 2147483647i), u_input.c))), u_input.c.x), firstLeadingBit(reverseBits(u_input.c.x)), 1i);
    return -158f;
}

fn func_2() -> bool {
    global0 = 30597u;
    global0 = u_input.a;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-472f, 502f, 874f, 1320f) - vec4<f32>(-1198f, 815f, -973f, -402f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-303f, 2178f, -681f, 983f)), false)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1640f, -638f, 436f, 200f)) * vec4<f32>(962f, 241f, -1000f, 751f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(647f + 140f), _wgslsmith_f_op_f32(max(750f, -1000f)), _wgslsmith_f_op_f32(func_3()), -1569f))) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-906f, 1478f)) + -1079f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(718f, 732f, true)) + -1796f))), _wgslsmith_f_op_f32(round(1556f)), 1584f, _wgslsmith_f_op_f32(420f * 247f)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1033f);
    let var_2 = !vec3<bool>(true, !any(vec4<bool>(false, true, false, false)), !(!select(true, false, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-793f))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = !func_2();
    var var_1 = u_input.c.x;
    var_1 = 1i;
    let var_2 = reverseBits(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(~arg_0, ~0u, 8555u, _wgslsmith_mult_u32(u_input.b.x, 4294967295u)), vec4<u32>(2777u, 4357u, firstLeadingBit(arg_0), u_input.d.x))));
    var var_3 = var_2;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1090f, -1123f, 1000f, 1000f), vec4<f32>(183f, -554f, -352f, 116f), vec4<bool>(false, true, false, false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 337f, 749f, -738f) - vec4<f32>(-953f, 2001f, -203f, -1641f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-370f, 1702f, 1000f, -809f), vec4<f32>(977f, -509f, -762f, -205f)))))), Struct_1(161f, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 63285u;
    var var_0 = func_1(u_input.d.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-func_1(0u).a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(max(261f, _wgslsmith_f_op_f32(select(var_1.x, -276f, true))))));
    let var_3 = vec3<i32>(-_wgslsmith_mult_i32(abs(u_input.c.x), _wgslsmith_add_i32(1i, u_input.c.x)) | u_input.c.x, -44885i, _wgslsmith_mult_i32(2147483647i, u_input.c.x));
    let var_4 = 28138u;
    var_0 = func_1(countOneBits(_wgslsmith_mult_u32(var_4, 15065u)));
    var_0 = Struct_2(vec4<f32>(var_0.a.x, var_2.x, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-186f, var_2.x))), -1139f), Struct_1(-400f, !var_0.b.b));
    var var_5 = !vec4<bool>(!var_0.b.b, var_0.b.b, var_0.b.b, all(select(select(vec4<bool>(true, var_0.b.b, true, false), vec4<bool>(true, true, var_0.b.b, false), vec4<bool>(true, var_0.b.b, var_0.b.b, var_0.b.b)), !vec4<bool>(false, var_0.b.b, var_0.b.b, false), select(vec4<bool>(var_0.b.b, var_0.b.b, false, true), vec4<bool>(var_0.b.b, var_0.b.b, var_0.b.b, false), var_0.b.b))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.x, -22296i), vec2<i32>(min(-2147483647i, 69303i), ~9977i), vec2<i32>(16930i, i32(-1i) * -1i))), vec4<i32>(var_3.x, u_input.c.x, var_3.x, 1i));
}

