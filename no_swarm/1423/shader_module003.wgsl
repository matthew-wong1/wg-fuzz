struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: i32) -> vec2<i32> {
    global0 = -336f;
    global0 = arg_1;
    var var_0 = arg_0;
    var var_1 = u_input.a.x;
    var_1 = 59025i;
    return -vec2<i32>(u_input.a.x & (9026i | u_input.a.x), abs(~38686i) >> (max(_wgslsmith_dot_vec3_u32(vec3<u32>(59456u, arg_0, 11485u), vec3<u32>(u_input.b, 32890u, arg_0)), ~arg_0) % 32u));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = -u_input.a;
    var var_1 = Struct_1(_wgslsmith_div_vec2_i32(u_input.a.xy, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(abs(var_0.yx), reverseBits(vec2<i32>(u_input.a.x, -2147483647i))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 37833i) | vec2<i32>(u_input.a.x, -5195i), reverseBits(var_0.yx)))), _wgslsmith_f_op_f32(-251f * _wgslsmith_f_op_f32(round(1233f))), 0i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-136f + -565f), -1047f, 1462f), vec3<f32>(-1065f, -901f, _wgslsmith_f_op_f32(f32(-1f) * -1252f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-448f, 309f, false)))), -561f, -1054f))));
    var_0 = countOneBits(reverseBits(-(firstLeadingBit(u_input.a) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(-54952i, -13416i, var_1.a.x), vec3<i32>(27249i, var_1.c, var_1.a.x)))));
    var var_2 = Struct_2(~u_input.a, Struct_1(select(max(func_3(4294967295u, -703f, u_input.a.x), min(vec2<i32>(1i, 36626i), var_1.a)), var_1.a, true), 929f, u_input.a.x, var_1.d), vec4<u32>(~(~u_input.c), abs(firstTrailingBit(~u_input.b)), u_input.c, abs(countOneBits(u_input.d))));
    let var_3 = var_2.b;
    return Struct_2(vec3<i32>(_wgslsmith_mult_i32(33118i, var_1.a.x & var_2.b.a.x), select(-18065i, 22691i, 2147483647i <= u_input.a.x), -(u_input.a.x ^ -50296i)) | vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(33235i, var_3.c, var_0.x)), _wgslsmith_add_vec3_i32(var_2.a, u_input.a)), var_3.c, -1i), Struct_1(~vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(var_0.x, -2147483647i)), var_3.b, min(_wgslsmith_add_i32(var_1.c, 0i) << (~var_2.c.x % 32u), -95761i), vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(var_1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)), _wgslsmith_f_op_f32(floor(var_3.d.x)))), ~var_2.c ^ ~vec4<u32>(~4294967295u, u_input.c >> (var_2.c.x % 32u), 1u & u_input.d, 4294967295u ^ u_input.d));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = func_2(arg_1.x);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d.x + arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 1000f) - func_2(true).b.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(223f, _wgslsmith_f_op_f32(func_1(vec4<f32>(790f, 1609f, 1202f, 479f), vec4<bool>(false, true, false, true))))) * -288f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -120f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 1u), u_input.c | 4294967295u), ~1u), countOneBits(max(12138i | func_2(true).a.x, ~26677i)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(218f, _wgslsmith_div_f32(-1034f, -2363f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1373f, -145f)), -1000f)))), 38807i, firstTrailingBit(u_input.a));
}

