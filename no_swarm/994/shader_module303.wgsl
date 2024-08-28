struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var_0 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(-14316i, u_input.c), abs(var_1.e.xz)), vec4<bool>(var_0.b.x, !(!arg_0.b.x) | true, !(!var_1.b.x), var_1.b.x), ~4294967295u ^ firstLeadingBit(_wgslsmith_sub_u32(1u, 38163u >> (u_input.d % 32u))), -367f, _wgslsmith_add_vec4_i32(arg_0.e, ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, var_1.a.x, -30551i, arg_0.a.x), var_0.e)) & vec4<i32>(~(arg_0.e.x & arg_0.a.x), 11780i, arg_0.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, arg_0.e.x, -2147483647i) | vec3<i32>(-527i, arg_0.a.x, var_1.a.x), var_0.e.wyx)));
    var_0 = Struct_1(-max(vec2<i32>(_wgslsmith_mult_i32(-30862i, 1i), -u_input.c), max(vec2<i32>(0i, 20573i), arg_0.e.yy)), var_1.b, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-910f + var_0.d) - _wgslsmith_f_op_f32(-1000f + arg_0.d)) - 814f)), var_0.e);
    var var_2 = abs(-(~vec4<i32>(arg_0.e.x, u_input.e & u_input.e, max(arg_0.e.x, 7344i), _wgslsmith_dot_vec2_i32(vec2<i32>(9169i, arg_0.a.x), vec2<i32>(arg_0.a.x, var_1.e.x)))));
    return ~vec3<u32>(reverseBits(~3079u), 0u, 72814u);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = select(~(~(~abs(vec3<u32>(arg_2.c, arg_0.c, arg_3)))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), func_3(arg_2)), arg_0.b.wxw);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 815f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(exp2(arg_0.d)))));
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2289f, -2865f)) * _wgslsmith_f_op_f32(arg_0.d * arg_0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f * _wgslsmith_f_op_f32(1450f + _wgslsmith_f_op_f32(-arg_2.d))))));
    var var_2 = arg_2;
    var var_3 = arg_2;
    return var_3.d;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(443f, _wgslsmith_f_op_f32(f32(-1f) * -516f), 1586f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<i32>(-9441i, 2147483647i), arg_0.b, arg_0.c, 1501f, arg_0.e), arg_0.b.yxy, Struct_1(arg_0.e.xx, vec4<bool>(true, arg_0.b.x, false, false), u_input.d, -2371f, vec4<i32>(-2147483647i, arg_0.e.x, arg_0.e.x, -40983i)), u_input.a))))))));
    var var_1 = firstLeadingBit(firstTrailingBit(-(~vec2<i32>(0i, arg_0.e.x))) << (max(vec2<u32>(1u, ~0u), _wgslsmith_div_vec2_u32(vec2<u32>(54470u, 6841u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_0.c), vec2<u32>(u_input.a, u_input.b)))) % vec2<u32>(32u)));
    return arg_0.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = (74954u != u_input.a) & arg_1.b.x;
    var_0 = !arg_1.b.x;
    var_0 = arg_1.c <= 4294967295u;
    var var_1 = arg_1;
    var_0 = var_1.b.x;
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(arg_0.b, !arg_0.b, any(arg_0.b.yz));
    let var_1 = -417f;
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.b, ~(~u_input.b ^ ~33264u)), _wgslsmith_add_vec2_u32(vec2<u32>(~20285u ^ arg_0.c, 64561u), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.c, 0u), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, 1678u), ~vec2<u32>(arg_0.c, u_input.a)))));
    let var_3 = ~_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x >> (_wgslsmith_mult_u32(41250u, 54969u) % 32u), arg_0.c), abs(vec2<u32>(1u, max(34512u, u_input.a))));
    var_2 = ~var_3;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(1016f, Struct_1(vec2<i32>(u_input.c ^ u_input.e, i32(-1i) * -2147483647i), func_1(Struct_1(vec2<i32>(-2147483647i, 2147483647i), vec4<bool>(true, false, false, true), u_input.a, -367f, vec4<i32>(23207i, u_input.e, u_input.e, u_input.e))), 0u, _wgslsmith_f_op_f32(select(-1000f, -266f, true)), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.e, u_input.c, u_input.e, u_input.e)), firstTrailingBit(vec4<i32>(17678i, u_input.e, u_input.e, 2147483647i))))));
    var var_1 = _wgslsmith_f_op_f32(trunc(var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.d, 4294967295u)), vec2<u32>(1u, ~67592u), !var_0.b.wy), ~(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, u_input.d), vec2<u32>(69318u, u_input.a)), var_0.c, u_input.d, u_input.b) | vec4<u32>(countOneBits(var_0.c), u_input.a, u_input.b, var_0.c)), 11286u);
}

