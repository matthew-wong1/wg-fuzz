struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: u32) -> i32 {
    return ~select(-2147483647i, -2147483647i, true);
}

fn func_3() -> i32 {
    var var_0 = true;
    var var_1 = !(!select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), false), any(vec3<bool>(false, false, true))));
    var_0 = true;
    var var_2 = Struct_1(true, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.c, u_input.c), -32847i) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 31119u), vec2<u32>(u_input.b, 1u) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), select(vec2<i32>(u_input.c, 8485i), vec2<i32>(u_input.c, -2147483647i), vec2<bool>(false, var_1.x))))), _wgslsmith_sub_i32(firstLeadingBit(1i), _wgslsmith_dot_vec3_i32(~select(vec3<i32>(-1i, -6650i, u_input.c), vec3<i32>(u_input.c, 43570i, 24401i), false), vec3<i32>(-59713i, -744i, u_input.c) << (~vec3<u32>(u_input.b, 57991u, u_input.b) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2187f), _wgslsmith_div_f32(-563f, global0.x))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1067f, -817f) + vec2<f32>(global0.x, -464f)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -1000f), vec2<f32>(1127f, global0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(670f, 840f))) * vec2<f32>(-2251f, 266f))))));
    var_1 = vec2<bool>(var_1.x & false, var_1.x);
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~((vec3<i32>(-1i, var_2.b, u_input.c) | vec3<i32>(u_input.c, 27821i, var_2.c)) << (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), select(firstLeadingBit(firstLeadingBit(vec3<i32>(0i, 14430i, 19048i))), ~firstLeadingBit(vec3<i32>(0i, u_input.c, 21541i)), true & var_1.x)), vec3<i32>(-_wgslsmith_mult_i32(firstTrailingBit(0i), abs(u_input.c)), -34097i, 2147483647i));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = global0.x;
    var var_1 = ~_wgslsmith_sub_u32(u_input.b, 11694u) < (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.a, u_input.b), vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.a)) & ~8272u, 71557u) | 86927u);
    let var_2 = vec4<i32>(func_3(), arg_0, countOneBits(27969i), reverseBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c, u_input.c), 1i)));
    global1 = ~_wgslsmith_add_u32(11887u, u_input.b);
    global1 = u_input.b;
    return Struct_1(!any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false))), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(var_2 & var_2, countOneBits(var_2))), -15284i), _wgslsmith_add_i32(-24586i, var_2.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(729f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(-func_1(vec3<i32>(-2147483647i, u_input.c, u_input.c), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(584f, global0.x))), ~u_input.b) | (_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -2147483647i, u_input.c) << (vec4<u32>(4294967295u, 7443u, 4294967295u, 33869u) % vec4<u32>(32u)), vec4<i32>(2299i, -2138i, u_input.c, u_input.c) & vec4<i32>(1i, u_input.c, 5240i, -23618i)) | _wgslsmith_add_i32(-10778i, ~u_input.c)));
    var var_1 = min(0i ^ select(u_input.c, -2147483647i, var_0.a), ~u_input.c);
    var_1 = 0i;
    global1 = u_input.b;
    let var_2 = !any(vec2<bool>(true, var_0.a));
    var var_3 = func_2(abs(71350i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~(~u_input.a)), ~(~u_input.b & firstLeadingBit(u_input.b)), 0u), -var_0.b, var_0.d.x);
}

