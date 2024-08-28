struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1560f, 1660f, 662f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-954f, -881f, 1000f))), vec3<bool>(false, false, false))))), vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1309f, -891f, -165f) * vec3<f32>(1524f, -1262f, -554f)))))))));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3());
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-461f - var_0.x), _wgslsmith_f_op_f32(var_0.x + -747f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1616f * -1000f))))), var_0.x);
    let var_2 = ~firstLeadingBit(u_input.a.x);
    let var_3 = Struct_1(_wgslsmith_mult_u32(u_input.a.x, ~(~var_2)), u_input.a.x, !select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)))));
    let var_4 = -(-u_input.b << (abs(var_2) % 32u));
    return var_3.c;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> f32 {
    let var_0 = Struct_1(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1, arg_1, 51720u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, arg_1), vec4<u32>(86077u, 4294967295u, u_input.a.x, arg_1)))), ~(~(~4294967295u)), select(!(!func_2(846f)), vec3<bool>(false, select(false, arg_1 < 1u, true), all(vec3<bool>(false, false, true))), true));
    var var_1 = _wgslsmith_sub_vec4_i32(-arg_0, -arg_0);
    var var_2 = select(!vec3<bool>(var_0.c.x, var_0.c.x, any(vec4<bool>(true, true, true, true))), vec3<bool>(var_0.c.x, var_0.c.x, true), var_0.c);
    var var_3 = Struct_1(var_0.b, ~(~1u >> ((1u << (arg_1 % 32u)) % 32u)), var_0.c);
    var_1 = vec4<i32>(1i | _wgslsmith_sub_i32(arg_2, arg_0.x), _wgslsmith_add_i32(-(~min(var_1.x, u_input.b)), arg_0.x), u_input.b, ~(i32(-1i) * -(~(-30756i))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1302f))))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1221f, -1020f, true))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1251f, _wgslsmith_f_op_f32(f32(-1f) * -1432f), -5898i != _wgslsmith_add_i32(67292i, u_input.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(142f + 218f), _wgslsmith_f_op_f32(func_1(vec4<i32>(2147483647i, u_input.b, 2010i, u_input.b), u_input.a.x, u_input.b))))));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-476f - 1243f) * -208f), -780f))), 1f);
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.yx, vec2<u32>(124544u, 4294967295u)), u_input.a.yy ^ vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.xz), reverseBits(_wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.a.xz), vec2<u32>(u_input.a.x, u_input.a.x)))), u_input.a.x ^ 0u, select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), select(func_2(_wgslsmith_f_op_f32(1477f - var_0)), vec3<bool>(true, true, true), func_2(_wgslsmith_div_f32(var_0, 1920f))), true));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0, var_0))));
    var var_2 = var_1;
    var_2 = Struct_1(0u, 50812u, var_2.c);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0)))) * _wgslsmith_f_op_f32(trunc(-223f)));
    global0 = 157f;
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_sub_i32(3623i, 42541i) >> (~(var_2.a ^ 1u) % 32u)), vec4<i32>(-1i) * -vec4<i32>(6398i, select(u_input.b, 25407i, var_1.c.x), _wgslsmith_clamp_i32(-17571i, -26537i, -1i), u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_div_f32(var_0, -114f)))) * vec3<f32>(-222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.b, 17826i, u_input.b, -11173i), 0u, 0i))), _wgslsmith_f_op_f32(func_1(min(vec4<i32>(u_input.b, -74277i, u_input.b, u_input.b), vec4<i32>(u_input.b, 12338i, u_input.b, 0i)), abs(var_1.a), abs(-11823i))))));
}

