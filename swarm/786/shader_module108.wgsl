struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1120f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) + _wgslsmith_f_op_vec2_f32(abs(var_0.a))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.a + var_0.a), vec2<f32>(arg_1, 1707f))))), Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(floor(var_0.a))))), var_0, 12304i > ~arg_0.x);
    return ~u_input.a.x;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1641f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2356f, 1078f) * vec2<f32>(1099f, 198f))) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(682f, 1825f), vec2<f32>(-1354f, 566f))))), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true))));
    global0 = -913f;
    var var_2 = reverseBits(~_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, arg_3, 15815u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 10795u, 0u), vec3<u32>(0u, 1u, 49585u), vec3<u32>(4294967295u, 33044u, u_input.a.x)) % vec3<u32>(32u)), vec3<u32>(arg_3, ~arg_3, _wgslsmith_add_u32(arg_3, 11169u))));
    var_2 = ~vec3<u32>(firstTrailingBit(var_2.x), ~((u_input.a.x ^ 4294967295u) & reverseBits(0u)), _wgslsmith_dot_vec3_u32((vec3<u32>(var_2.x, var_2.x, 0u) << (vec3<u32>(61634u, arg_3, arg_3) % vec3<u32>(32u))) << (~vec3<u32>(var_2.x, var_2.x, u_input.a.x) % vec3<u32>(32u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 0u, var_2.x), vec3<u32>(4294967295u, 0u, 0u)))));
    return var_1.a;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(527f, _wgslsmith_f_op_f32(max(525f, 470f))) - vec2<f32>(-624f, -878f))), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-544f, -1671f)), _wgslsmith_f_op_vec2_f32(func_3(-28287i, arg_0.x, vec4<i32>(arg_0.x, arg_0.x, -2147483647i, arg_0.x), u_input.a.x)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1422f, -1512f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2397f, 808f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-901f, -1000f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-205f, -766f) - vec2<f32>(2240f, -1088f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1691f, -2008f) + vec2<f32>(-251f, 100f)))))), !(!(true == (16846u != u_input.a.x))));
    let var_1 = Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a.a)), var_0.a, !all(!select(vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(var_0.d, true, true), vec3<bool>(var_0.d, false, var_0.d))));
    let var_2 = ~(~vec3<u32>(u_input.a.x, firstLeadingBit(0u ^ u_input.a.x), u_input.a.x));
    var var_3 = vec4<bool>(var_1.d, var_0.d, var_2.x != 0u, false);
    let var_4 = var_1;
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1625f - _wgslsmith_f_op_f32(-2202f - -416f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-458f))))));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-953f * -1282f)))))));
    var var_0 = ~(~(~_wgslsmith_div_u32(func_1(vec2<i32>(-9594i, 1i), 565f, vec3<u32>(4294967295u, u_input.a.x, 0u), vec4<i32>(-1i, 2147483647i, -23641i, 15958i)), u_input.a.x << (u_input.a.x % 32u))));
    var var_1 = func_2(vec4<i32>(-30993i, 0i, ~(~1i), max(i32(-1i) * -2147483647i, 2147483647i)));
    var var_2 = ~max(-countOneBits(select(vec2<i32>(1i, 64503i), vec2<i32>(1i, -54029i), false)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-34915i, -29714i), select(vec2<i32>(1i, 94218i), vec2<i32>(2147483647i, 26089i), var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-var_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.a.x * 1144f))))))));
}

