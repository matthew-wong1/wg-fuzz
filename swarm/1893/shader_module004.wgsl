struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
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

var<private> global0: vec2<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_2) -> vec2<f32> {
    global0 = arg_2.b.c.yz;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(376f)) + global0.x)) + arg_2.b.c.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.c.yz)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1514f, arg_1.b.b), _wgslsmith_f_op_vec2_f32(func_3(arg_1.c, _wgslsmith_mult_vec4_i32(u_input.b >> (max(vec4<u32>(0u, 1u, 46270u, arg_2.x), vec4<u32>(arg_2.x, arg_2.x, 32382u, 46963u)) % vec4<u32>(32u)), -vec4<i32>(-29062i, -1i, u_input.b.x, -1i)), Struct_2(~(~arg_2.x), arg_1.b, arg_1.d.x, arg_1.b.a.yxw, -947f))), vec2<bool>(true, true)));
    let var_0 = arg_1.e;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.b - arg_1.e), var_0);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, arg_1.b.c.x, global0.x)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, arg_1.e, global0.x, var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1.e, 423f, -382f)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -876f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1284f + 535f)), 1080f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(405f, -1292f, var_0, -1410f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(2240f, global0.x, global0.x, arg_1.b.b), vec4<f32>(global0.x, 328f, 329f, 1000f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, arg_1.b.c.x, -1083f, -1096f))), false)))));
    var var_2 = vec4<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, all(vec4<bool>(true, false, arg_1.b.a.x, false))), arg_1.d)), !(!all(select(vec2<bool>(arg_1.c, true), vec2<bool>(true, true), true))), false);
    return ~arg_1.a;
}

fn func_1(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = max(arg_0.yxx, ~vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.wyz, arg_0.zzy), 1u, _wgslsmith_div_u32(arg_0.x, arg_0.x)) << (_wgslsmith_mult_vec3_u32(~countOneBits(arg_0.zyz), vec3<u32>(arg_0.x, 80045u, arg_0.x) | arg_0.wyz) % vec3<u32>(32u)));
    var var_1 = firstLeadingBit(~(arg_0.xxy ^ vec3<u32>(4294967295u, 39929u, 24851u)) | firstTrailingBit(vec3<u32>(35821u, func_2(false, Struct_2(var_0.x, Struct_1(vec4<bool>(true, false, false, false), -335f, vec3<f32>(312f, global0.x, global0.x), arg_0.x), true, vec3<bool>(true, true, true), global0.x), vec2<u32>(91642u, 37269u)), 0u)));
    var var_2 = Struct_1(vec4<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))), true, true, true), 1000f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, global0.x))), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x))), var_1.x & 4294967295u);
    let var_3 = vec4<bool>(var_2.a.x, select(all(vec2<bool>(false, true)), !(!var_2.a.x), false) | all(var_2.a), var_2.a.x || false, !var_2.a.x);
    let var_4 = max(~1i, 1i);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~(~(~vec4<u32>(26207u, 1u, 11456u, 5963u)))) | (~vec4<u32>(1u, 1u, 1u, 1u) >> (_wgslsmith_add_vec4_u32(min(~vec4<u32>(1u, 14723u, 83871u, 0u), func_1(vec4<u32>(12942u, 18430u, 0u, 4294967295u))), ~vec4<u32>(1u, 16241u, 4294967295u, 35837u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0.x));
}

