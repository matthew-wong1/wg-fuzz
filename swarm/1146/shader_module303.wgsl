struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: Struct_4,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    var var_0 = arg_0.e;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, -1000f, -396f, 1059f) + vec4<f32>(arg_0.e.x, 1137f, var_0.x, -638f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(453f, var_0.x, 759f, arg_0.e.x), vec4<f32>(var_0.x, -1093f, -970f, var_0.x)) + vec4<f32>(arg_0.e.x, var_0.x, arg_0.b, arg_0.b))) * vec4<f32>(_wgslsmith_f_op_f32(var_0.x * -592f), _wgslsmith_f_op_f32(arg_0.b + var_0.x), -1290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.e.x)) - var_0.x))));
    var var_2 = select(arg_0.d.c.wy, arg_0.d.c.zy, !vec2<bool>(arg_0.d.d, true));
    let var_3 = ~arg_0.c.a;
    let var_4 = ~abs(max(firstTrailingBit(~vec4<u32>(33792u, 51549u, 0u, var_3.x)), vec4<u32>(~arg_0.c.a.x, arg_0.c.a.x, 0u, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d))));
    return !arg_0.d.c;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_4(Struct_1(u_input.d, _wgslsmith_clamp_i32(34235i, arg_0.a.x, firstLeadingBit(min(arg_0.a.x, u_input.b)))), arg_1, vec4<bool>(max(u_input.a, select(arg_0.a.x, 73366i, true)) >= ~_wgslsmith_mult_i32(arg_1, arg_0.a.x), false && all(func_3(Struct_5(Struct_2(false), arg_2.x, Struct_1(vec3<u32>(30914u, 18565u, u_input.c), 1i), Struct_4(Struct_1(u_input.d, arg_0.a.x), 0i, vec4<bool>(false, false, true, false), true, arg_0.a.xz), arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(303f)) - arg_2.x) == _wgslsmith_f_op_f32(ceil(arg_2.x)), true), !(!all(vec3<bool>(true, true, true))), max(~_wgslsmith_mult_vec2_i32(-arg_0.a.zy, vec2<i32>(arg_1, -2147483647i)), -arg_0.a.zx));
    return Struct_2(any(var_0.c.yx));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = vec4<i32>(9156i, -(~(i32(-1i) * -46390i) << (select(u_input.d.x, 24177u, true) % 32u)), ~(~u_input.a), arg_0);
    return func_2(Struct_3(var_0.wxw), ~arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1047f, 149f) + vec2<f32>(1792f, 1036f)), vec2<f32>(-596f, -1112f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(true, any(vec4<bool>(false, false, false, true)) || any(vec4<bool>(true, false, true, false))));
    var var_1 = Struct_2(any(vec2<bool>(all(vec3<bool>(var_0, var_0, true)), var_0)));
    var_1 = Struct_2(true);
    var_1 = func_1(-4318i);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(942f, 918f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-431f, -1910f) - vec2<f32>(-251f, 785f)))));
    let var_3 = false | (0u < _wgslsmith_mod_u32(u_input.c << (~7445u % 32u), u_input.c));
    var var_4 = Struct_5(func_2(Struct_3(vec3<i32>(u_input.a, ~(-7541i), 2147483647i)), ~(~56587i), vec2<f32>(-539f, _wgslsmith_f_op_f32(step(var_2.x, -631f)))), -420f, Struct_1(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(58081u, 0u, 4294967295u)) >> (~u_input.d % vec3<u32>(32u)), u_input.d | select(vec3<u32>(u_input.c, 1u, u_input.d.x), vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<bool>(false, var_1.a, var_0))), u_input.a), Struct_4(Struct_1(u_input.d, abs(0i)), i32(-1i) * -3709i, !select(select(vec4<bool>(var_0, var_3, false, var_0), vec4<bool>(false, true, false, false), var_0), vec4<bool>(false, var_0, var_0, var_0), true), max(_wgslsmith_add_u32(0u, 34980u), 1u) < reverseBits(u_input.c), min(vec2<i32>(-u_input.a, -2147483647i), vec2<i32>(u_input.b ^ 37088i, countOneBits(-1i)))), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x - var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.a.x, _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(u_input.a), var_4.d.e.x & -1i, 1i, _wgslsmith_sub_i32(4448i, var_4.d.a.b)), ~(-vec4<i32>(var_4.d.b, var_4.d.b, var_4.d.a.b, 2147483647i))), _wgslsmith_add_vec4_i32(~(-vec4<i32>(63842i, -4853i, -10259i, var_4.c.b)), select(-vec4<i32>(var_4.c.b, 2147483647i, 0i, 0i), max(vec4<i32>(var_4.d.b, var_4.c.b, 1i, u_input.b), vec4<i32>(u_input.a, 0i, u_input.a, var_4.d.a.b)), true))));
}

