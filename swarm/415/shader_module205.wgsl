struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> f32 {
    let var_0 = reverseBits(u_input.a.yz) & ~(u_input.a.xz >> (u_input.a.zx % vec2<u32>(32u)));
    var var_1 = firstLeadingBit(firstLeadingBit(u_input.a.x));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1325f, -2152f)), -1179f, -1466f, -1847f);
    var_1 = 0u;
    var_1 = firstTrailingBit(~var_0.x);
    return var_2.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(arg_1.b.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f)) - -398f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x * 1f) - 980f), -1397f, -898f), arg_1.b.yz);
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, ~(u_input.a.x & _wgslsmith_sub_u32(1u, arg_3))), abs(vec3<u32>(u_input.a.x, ~38364u, 0u)));
    var_1 = _wgslsmith_clamp_u32(arg_3, arg_3, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(select(arg_3, arg_3, true), _wgslsmith_mult_u32(50741u, 0u), arg_3, 4294967295u), vec4<u32>(1u >> (u_input.b % 32u), u_input.a.x, ~18077u, ~arg_3))));
    var var_2 = arg_0;
    let var_3 = 1i;
    return -760f;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1461f - -1572f)) + _wgslsmith_f_op_f32(f32(-1f) * -1046f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1080f, _wgslsmith_f_op_f32(357f + -145f), -896f, -187f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1936f, -722f, 772f, 917f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1163f, -1000f, -1767f, 1474f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1069f, -1000f, -791f, -392f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-239f, -112f) * vec2<f32>(-1631f, 169f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(892f, -1000f))))) * vec2<f32>(_wgslsmith_f_op_f32(max(-770f, -1017f)), -457f))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -1207f) + var_0.b.x), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x * var_0.c.x), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(2253f - var_0.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -1024f, -997f, var_0.b.x) + vec4<f32>(var_0.b.x, 1840f, -303f, -900f)), vec2<f32>(1623f, -482f)), Struct_1(_wgslsmith_f_op_f32(trunc(2158f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 809f, 1838f, 1002f)), _wgslsmith_f_op_vec2_f32(select(var_0.c, var_0.c, vec2<bool>(false, false)))), Struct_1(-154f, var_0.b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(976f, -1344f)))), u_input.b)), 214f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.c))));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(var_0.c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b.yx, var_0.c, any(vec2<bool>(false, false)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-521f, var_0.b.x))))))), vec2<bool>(true, 34117u != u_input.c)));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(func_2()), 2655f))) * _wgslsmith_f_op_vec2_f32(select(var_0.b.zy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1371f, 1373f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1844f, 142f) - vec2<f32>(1461f, 130f))), true))) + var_0.b.zw);
    return 132f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-750f * 1660f), _wgslsmith_f_op_f32(sign(1000f))))))), vec4<f32>(-773f, _wgslsmith_f_op_f32(652f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(-1633f * _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1954f + 1186f)), _wgslsmith_f_op_f32(max(785f, -750f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-648f + 1030f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(687f)), -1310f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1027f, _wgslsmith_f_op_f32(max(909f, 746f))), vec2<f32>(_wgslsmith_f_op_f32(-1793f + 845f), _wgslsmith_f_op_f32(select(-1322f, -567f, false))), true)))));
    let var_2 = !(!var_0.x);
    var_0 = !select(select(!select(vec3<bool>(true, var_0.x, var_2), vec3<bool>(var_2, false, var_0.x), var_2), vec3<bool>(true, true, true), all(vec4<bool>(false, var_2, true, false))), select(select(vec3<bool>(true, true, true), !vec3<bool>(var_0.x, false, false), false & var_2), !vec3<bool>(var_0.x, false, false), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(var_0.x, true, false)))), select(!vec3<bool>(var_0.x, true, true), vec3<bool>(var_2 || true, var_1.b.x >= var_1.a, var_2), var_0.x));
    var var_3 = var_1;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(1758f * -460f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1266f, 810f, 591f, 353f)), vec4<f32>(var_3.c.x, _wgslsmith_f_op_f32(-var_1.c.x), var_1.b.x, _wgslsmith_f_op_f32(var_1.c.x - var_3.b.x)))), var_3.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.zy), var_1.c));
    var_3 = var_4;
    var_3 = var_1;
    var_0 = !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_2, var_0.x), vec3<bool>(false, true, true), vec3<bool>(var_2, false, false)), !var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(~firstTrailingBit(94319u))), _wgslsmith_add_i32(min(_wgslsmith_sub_i32(-6015i >> (u_input.c % 32u), -2147483647i), ~abs(-1871i)), _wgslsmith_dot_vec3_i32(vec3<i32>(712i, -2147483647i, 2147483647i), vec3<i32>(1i, 1i, 1i)) << (1u % 32u)), _wgslsmith_f_op_f32(abs(361f)), countOneBits(countOneBits(36161u)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-29313i, 1i, 33821i)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(-23555i, -2196i, 0i), vec3<i32>(10679i, -2147483647i, 2147483647i)) << (abs(vec3<u32>(u_input.a.x, 2484u, 1360u)) % vec3<u32>(32u))) >> (select(21120u, u_input.a.x, var_2) % 32u));
}

