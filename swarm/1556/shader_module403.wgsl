struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-440f, 634f)));
    var var_1 = vec4<u32>(u_input.e.x, ~(~0u) >> (u_input.a % 32u), u_input.c.x, u_input.b.x | u_input.e.x) ^ firstTrailingBit(min(~u_input.b, ~vec4<u32>(u_input.c.x, 4294967295u, u_input.e.x, 1u)));
    let var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(1438f * -116f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121f + 448f))))));
    var_1 = ~u_input.b;
    return var_1.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<u32> {
    var var_0 = 33764u | ~max(41622u, arg_2.x);
    var var_1 = arg_2.x;
    var var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.a), vec2<f32>(-3210f, -989f), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a)))) + vec2<f32>(-705f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1351f * arg_0.a.x))))));
    let var_4 = arg_0;
    return _wgslsmith_sub_vec3_u32(arg_2, _wgslsmith_clamp_vec3_u32(~arg_2 >> (u_input.e % vec3<u32>(32u)), arg_2, ~max(u_input.e, vec3<u32>(28247u, arg_2.x, u_input.a)))) ^ arg_2;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = func_4(arg_2, arg_2, vec3<u32>(arg_0.x, ~3137u, max(~func_3(-327f), 56275u)));
    let var_1 = arg_2;
    return vec2<f32>(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1028f * 875f) - _wgslsmith_f_op_f32(1119f - 1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -445f), 253f), 327f, false))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(abs(-240f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(u_input.b, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_0 + var_0)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))));
    let var_2 = abs(-select(vec3<i32>(i32(-1i) * -55671i, 1i, firstLeadingBit(u_input.d)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 2147483647i, u_input.d), vec3<i32>(1875i, u_input.d, 32431i)), vec3<bool>(true, true, true)));
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(round(-1731f))), var_0)), -1123f));
    var_1 = Struct_1(var_1.a);
    return Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -1104f))), vec2<f32>(_wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x + var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-785f * -646f) * var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_1();
    var var_2 = _wgslsmith_clamp_u32(abs(4294967295u), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(u_input.c.x, u_input.b.x), select(u_input.e.x, u_input.a, var_0)), 17655u), reverseBits(u_input.a));
    var var_3 = func_1();
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-332f, var_1.a.x) + vec2<f32>(1f, 1f)), var_1.a, false)), _wgslsmith_f_op_vec2_f32(sign(var_1.a)), vec2<bool>(true, var_0))));
    var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1322f), vec2<u32>(73346u, 46945u), _wgslsmith_f_op_f32(f32(-1f) * -931f));
}

