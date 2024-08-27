struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, 1163f, 1000f);

var<private> global1: i32;

var<private> global2: u32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = u_input.b.wy;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(928f - global0.x))), u_input.b.x);
    var var_2 = ~_wgslsmith_div_vec3_i32(abs(u_input.c), countOneBits(~u_input.c));
    var_1 = arg_0;
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a - -2021f), _wgslsmith_f_op_f32(582f - var_1.a))), _wgslsmith_f_op_f32(trunc(arg_0.a)), var_1.a) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 327f, -1490f), vec3<f32>(arg_0.a, global0.x, arg_0.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.a, 773f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + var_1.a) * global0.x);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<u32>) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_1, 486f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(1320f, u_input.b.x))))) + arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(trunc(-154f))));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_3(Struct_2(u_input.a, arg_1.x)), 1f, u_input.d, vec4<u32>(arg_0, u_input.b.x, 1u, u_input.b.x) | u_input.b))) + vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(583f + global0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(884f, -962f)), global0.x)))));
    global2 = ~max(arg_0, arg_0);
    let var_0 = ~vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, 18781i), 1i), ~(-48668i), max(46003i, 2147483647i) & min(u_input.d.x, 2147483647i), _wgslsmith_sub_i32(-1i, 5440i)) ^ -min(vec4<i32>(-18951i, u_input.c.x, 27136i, ~u_input.c.x), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 10131i, -18250i, -1i), vec4<i32>(0i, u_input.d.x, u_input.c.x, 29961i))));
    let var_1 = Struct_1(global0.x, ~min(_wgslsmith_dot_vec2_u32(u_input.b.wy, vec2<u32>(1u, 31687u)) << (min(arg_0, 21196u) % 32u), u_input.a.x));
    let var_2 = max(4294967295u, abs(countOneBits(u_input.b.x)));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, -1243f, global0.x))) + vec3<f32>(945f, -1738f, 1450f)) * vec3<f32>(-1281f, _wgslsmith_f_op_f32(func_1(u_input.a.x, vec3<bool>(true, false, true))), -985f)) * _wgslsmith_f_op_vec3_f32(func_2(Struct_3(Struct_2(u_input.b.wz, true)), global0.x, vec2<i32>(1i, countOneBits(14911i)), vec4<u32>(firstLeadingBit(u_input.a.x), 1u, _wgslsmith_sub_u32(4294967295u, 4294967295u), max(u_input.a.x, u_input.a.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1145f, _wgslsmith_f_op_f32(f32(-1f) * -1671f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -911f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1514f + global0.x))))));
    global1 = 22189i;
    var var_0 = Struct_1(-127f, _wgslsmith_div_u32(33798u, ~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x)) | u_input.a.x);
    let var_1 = true;
    var var_2 = u_input.c.xx;
    global1 = u_input.d.x;
    let var_3 = Struct_4(select(u_input.b.zw, select(vec2<u32>(u_input.b.x, var_0.b), vec2<u32>(16498u, u_input.a.x), select(var_1, true, true)), vec2<bool>(27939u >= _wgslsmith_div_u32(1u, u_input.a.x), var_1 & (false || var_1))), Struct_3(Struct_2(vec2<u32>(select(0u, var_0.b, false), firstLeadingBit(0u)), select(u_input.c.x < var_2.x, var_1 & var_1, !var_1))), var_0.a, _wgslsmith_add_u32(~abs(0u >> (var_0.b % 32u)), var_0.b));
    var var_4 = !vec2<bool>(0u == ~_wgslsmith_mod_u32(var_3.d, 16203u), var_3.b.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.b, 20028u, var_3.d, ~u_input.a.x ^ ~0u), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(5020u, 0u, 62170u, 11498u), u_input.b)), reverseBits(-u_input.c));
}

