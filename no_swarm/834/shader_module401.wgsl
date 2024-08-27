struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> bool {
    global0 = 48885u;
    global0 = u_input.b.x;
    global0 = u_input.c.x & u_input.e.x;
    var var_0 = u_input.e;
    let var_1 = Struct_1(select(vec4<bool>(!select(true, true, false), true, true, true), select(vec4<bool>(true, true, select(true, true, false), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true), select(true, true, all(vec4<bool>(false, true, false, true)))), vec4<bool>(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(ceil(-295f)) == -582f, true, false)));
    return (var_1.a.x || !var_1.a.x) && (all(select(var_1.a, var_1.a, false & var_1.a.x)) | any(select(!var_1.a, !vec4<bool>(var_1.a.x, false, false, var_1.a.x), vec4<bool>(var_1.a.x, false, var_1.a.x, false))));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(!(u_input.e.x >= u_input.c.x), true, !arg_1, func_3())), 1u, -_wgslsmith_mult_vec2_i32(abs(~vec2<i32>(8558i, -44037i)), u_input.d.zy));
    global0 = firstTrailingBit(20910u);
    var var_1 = Struct_3(vec3<bool>((i32(-1i) * -2147483647i) < -(~var_0.d.x), any(var_0.a.a), !(!arg_1 & (true || arg_1))));
    let var_2 = 556f;
    var_1 = arg_0;
    return var_0.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<u32> {
    global0 = 44142u;
    global0 = u_input.b.x;
    global0 = ~u_input.e.x;
    let var_0 = u_input.e.yz;
    let var_1 = ~(~max(firstLeadingBit(~u_input.b.x), 46060u));
    return u_input.e;
}

fn func_1() -> StorageBuffer {
    var var_0 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(func_4(_wgslsmith_f_op_f32(1016f - 1230f), func_2(Struct_3(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1186f, -530f, 1965f, -1125f))), _wgslsmith_sub_vec3_u32(u_input.e, u_input.c) << (~vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x) % vec3<u32>(32u))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.e.x, u_input.b.x, u_input.b.x)), u_input.e), _wgslsmith_div_u32(~0u, ~u_input.e.x)));
    var_0 = u_input.b.x;
    var_0 = _wgslsmith_mult_u32(~firstTrailingBit(u_input.b.x), 33427u);
    global0 = 1u;
    global0 = 93345u;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(918f - 396f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -621f)) - -604f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1044f, 574f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-871f, 1408f) * vec2<f32>(238f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-759f, -2417f) + vec2<f32>(-1624f, -948f)))))), -35414i, vec3<u32>(firstLeadingBit(49540u), ~(func_4(-399f, Struct_1(vec4<bool>(true, true, false, true)), vec4<f32>(-1000f, 1696f, 136f, -509f)).x & (49175u | u_input.e.x)), u_input.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1516f)) + -626f));
    global0 = u_input.c.x;
    let var_1 = ~(vec4<u32>(~(u_input.b.x >> (4294967295u % 32u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(4631u, u_input.b.x), _wgslsmith_div_u32(0u, u_input.c.x)), 103835u, _wgslsmith_div_u32(22220u, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.c.x))) | vec4<u32>(select(u_input.b.x, u_input.b.x, true), ~4294967295u | ~u_input.e.x, 0u, u_input.c.x));
    global0 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.c.x, ~(0u >> (u_input.b.x % 32u))), _wgslsmith_add_u32(countOneBits(0u), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(var_1.x, u_input.c.x), _wgslsmith_dot_vec2_u32(~var_1.xw, firstTrailingBit(vec2<u32>(u_input.b.x, 72561u))))));
    global0 = ~max(select(71073u, 4294967295u, true), 4294967295u);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)) - var_0))), _wgslsmith_f_op_f32(f32(-1f) * -164f));
    var var_3 = ~(vec2<i32>(_wgslsmith_sub_i32(~0i, _wgslsmith_sub_i32(u_input.d.x, 2147483647i)), firstTrailingBit(countOneBits(-2147483647i))) & (_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 1i), ~u_input.a.yz) ^ u_input.a.zy));
    var_3 = firstTrailingBit(select(select(~u_input.d.yx, vec2<i32>(2147483647i, 66088i) >> (_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(64494u, 42605u)) % vec2<u32>(32u)), select(true, true, all(vec3<bool>(false, false, true)))), countOneBits(_wgslsmith_sub_vec2_i32(u_input.d.xx, u_input.a.yw) ^ abs(vec2<i32>(u_input.d.x, u_input.d.x))), vec2<bool>(false, any(vec3<bool>(true, false, true)))));
    let x = u_input.a;
    s_output = func_1();
}

