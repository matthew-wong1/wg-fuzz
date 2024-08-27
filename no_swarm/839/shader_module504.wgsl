struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    let var_0 = u_input.d.x;
    let var_1 = Struct_2(Struct_1(max(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), ~38895i), _wgslsmith_clamp_i32(~(-2147483647i), reverseBits(1i), abs(u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -320f))), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), select(false, false, true)), vec2<bool>(true, select(true, true, true)), select(true, any(vec4<bool>(false, true, true, true)), true)), vec2<bool>(true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)))), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), true))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(717f, 614f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-380f - 1267f))), -682f), Struct_1((firstTrailingBit(-2147483647i) | _wgslsmith_add_i32(arg_0.x, 0i)) << (_wgslsmith_add_u32(reverseBits(u_input.d.x), var_0) % 32u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1605f, -194f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(877f, -1470f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-830f, -1597f)))))), Struct_1(u_input.c.x, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -936f)));
    var var_2 = var_1;
    var_2 = var_1;
    var_2 = var_1;
    return ~abs(4294967295u);
}

fn func_2() -> vec3<i32> {
    var var_0 = reverseBits(vec4<u32>(firstLeadingBit(u_input.d.x), ~23488u ^ u_input.d.x, func_3(_wgslsmith_add_vec4_i32(vec4<i32>(-5403i, u_input.c.x, -1i, u_input.c.x), vec4<i32>(-38224i, 2147483647i, u_input.c.x, u_input.c.x))) << (4294967295u % 32u), 34590u));
    var var_1 = !((false || all(select(vec2<bool>(false, false), vec2<bool>(false, false), false))) & select(!all(vec3<bool>(true, false, true)), true, select(false, true, u_input.d.x < 13096u)));
    var_1 = false;
    var_0 = vec4<u32>(0u, _wgslsmith_sub_u32(~(~4294967295u >> (u_input.d.x % 32u)), _wgslsmith_mod_u32(34056u, countOneBits(u_input.d.x)) | 45185u), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.d.x), _wgslsmith_mod_vec2_u32(u_input.d.yy, vec2<u32>(u_input.d.x, 2263u))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.d.x, var_0.x), ~vec3<u32>(66128u, 22588u, 49556u))), _wgslsmith_mod_u32(u_input.d.x, var_0.x));
    let var_2 = _wgslsmith_f_op_f32(round(167f));
    return u_input.c;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_div_vec3_i32(u_input.c, func_2());
    let var_1 = true;
    var var_2 = abs(38711u & _wgslsmith_dot_vec2_u32(~(~u_input.d.yx), vec2<u32>(0u, u_input.d.x) | u_input.d.zy));
    var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(select(~vec3<u32>(u_input.d.x, 1u, 6700u), u_input.d << (vec3<u32>(0u, 1u, u_input.d.x) % vec3<u32>(32u)), vec3<bool>(false, var_1, true)), vec3<u32>(u_input.d.x, ~u_input.d.x, u_input.d.x)), ~(firstTrailingBit(vec3<u32>(u_input.d.x, 59887u, 7645u)) << (u_input.d % vec3<u32>(32u)))), select(u_input.d.x, firstTrailingBit(~(~7553u)), true));
    let var_3 = Struct_1(var_0.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -508f));
    return _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b.x >> (1u % 32u), -40149i), u_input.c.x, -_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c.x, var_0.x, -1i, 1i)), reverseBits(vec4<i32>(u_input.b.x, 0i, var_3.a, var_0.x)))) == u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 43991u;
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -406f)) * 734f), vec3<f32>(-680f, _wgslsmith_f_op_f32(floor(1f)), -1260f));
}

