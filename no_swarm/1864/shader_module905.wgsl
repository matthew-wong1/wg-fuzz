struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-941f, 678f) + vec2<f32>(arg_0.a.x, arg_0.a.x)))), reverseBits(vec2<i32>(arg_0.d.x, u_input.c.x)), vec2<bool>(1i > (i32(-1i) * -u_input.c.x), arg_0.c.x), arg_0.d, arg_1);
    let var_1 = Struct_2(vec2<f32>(arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -758f), var_0.a.x)), reverseBits(-(~arg_0.b)), select(vec2<bool>(any(!var_0.c), false), !arg_0.c, true), ~var_0.d, arg_1);
    return _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))));
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1692f)), _wgslsmith_f_op_f32(func_3(Struct_2(vec2<f32>(798f, -1364f), vec2<i32>(u_input.c.x, 0i), vec2<bool>(false, false), u_input.c, Struct_1(52394i, 128448u)), Struct_1(59158i, u_input.a))))));
    var var_1 = Struct_1(2147483647i, u_input.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(873f, _wgslsmith_div_f32(478f, 1448f)), vec2<f32>(_wgslsmith_f_op_f32(-137f + -1821f), _wgslsmith_f_op_f32(f32(-1f) * -221f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-771f, -1031f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(343f, -144f) + vec2<f32>(1428f, -1737f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(566f, 829f), vec2<f32>(822f, -1164f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-673f, -2720f) - vec2<f32>(-120f, -1285f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2634f, 468f) * vec2<f32>(1939f, 395f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(369f, 544f) * vec2<f32>(238f, 931f)))))));
    var_1 = Struct_1(_wgslsmith_div_i32(~2147483647i, abs(i32(-1i) * -var_1.a)), ~_wgslsmith_clamp_u32(abs(4294967295u), firstTrailingBit(663u), _wgslsmith_clamp_u32(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(12173u, 14384u, var_1.b, u_input.b), vec4<u32>(var_1.b, u_input.b, 69458u, 1u)), u_input.b)));
    var var_3 = var_2.x;
    return u_input.c.ywz;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = func_2();
    var var_1 = abs(u_input.c.zyx);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -798f);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(func_3(arg_1, Struct_1(u_input.c.x, _wgslsmith_clamp_u32(arg_1.e.b, u_input.a, arg_2.b))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.x)) + _wgslsmith_f_op_f32(func_3(arg_1, arg_1.e))))));
    var_1 = arg_1.d.yyw;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 15069u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(step(195f, -647f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-278f))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1400f, -209f))), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.yy, vec2<i32>(31263i, -2147483647i), vec2<i32>(1i, u_input.c.x)), u_input.c.xw, firstTrailingBit(u_input.c.xy)), vec2<bool>(u_input.c.x > 47805i, true), u_input.c, Struct_1(_wgslsmith_clamp_i32(0i, 11671i, u_input.c.x), _wgslsmith_mod_u32(u_input.b, u_input.a))), Struct_1(_wgslsmith_sub_i32(i32(-1i) * -36590i, select(u_input.c.x, u_input.c.x, false)), u_input.b))), select(~_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c, false), i32(-1i) * -20121i, u_input.c, u_input.b);
}

