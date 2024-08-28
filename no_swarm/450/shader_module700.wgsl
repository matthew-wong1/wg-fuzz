struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(-1i, -1i), 10129i, -15796i, vec4<f32>(-1000f, -1102f, -470f, 856f), 47499u), vec3<i32>(i32(-2147483648), 25605i, 29035i), 9903i, vec4<f32>(1000f, 1273f, 1000f, -1510f), Struct_1(vec2<i32>(2147483647i, 5884i), 2147483647i, 1i, vec4<f32>(-1284f, 608f, 432f, 1304f), 0u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = global0.e;
    let var_1 = 1i & abs(global0.b.x << (~1u % 32u));
    global0 = Struct_2(global0.e, max(global0.b & (global0.b | _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a.a.x, u_input.a, 11116i), global0.b, vec3<i32>(var_1, -1i, var_1))), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-25991i, var_0.a.x, -23905i), vec3<i32>(u_input.a, u_input.d.x, -7040i)), global0.b & global0.b, global0.b)), firstLeadingBit(var_0.a.x), global0.d, Struct_1(max(global0.e.a, var_0.a), _wgslsmith_div_i32(min(_wgslsmith_sub_i32(var_0.a.x, var_1), 1i), u_input.d.x), 2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.x, global0.d.x, -1000f, 1023f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(var_0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, global0.d.x, var_0.d.x, global0.e.d.x) + global0.d), var_1 <= var_0.c))), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(65781u, 4294967295u, u_input.e.x, var_0.e)), vec4<u32>(4294967295u, 45047u, 1u, _wgslsmith_div_u32(global0.e.e, global0.a.e)))));
    global0 = Struct_2(Struct_1(-global0.e.a ^ select(vec2<i32>(var_0.b, var_1) << (vec2<u32>(global0.e.e, u_input.e.x) % vec2<u32>(32u)), u_input.d, select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0))), u_input.a, _wgslsmith_dot_vec3_i32(global0.b, -(~vec3<i32>(1i, 51145i, var_0.a.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(var_0.d)), var_0.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-516f, 1323f, var_0.d.x, var_0.d.x)))), 62161u), ~global0.b, var_0.c, vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1092f)), _wgslsmith_f_op_f32(-var_0.d.x))), 199f, 127f), global0.e);
    return firstLeadingBit(_wgslsmith_add_i32(0i, var_0.a.x) | -_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.d.x, -22983i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-6759i, 16677i, -1i, 2147483647i), vec4<i32>(-52837i, global0.a.a.x, 12361i, u_input.b.x))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    global0 = Struct_2(global0.e, vec3<i32>(-func_3(!arg_2.x), min(arg_3.b, 0i), reverseBits((-1i | u_input.a) ^ -u_input.b.x)), ~2147483647i, _wgslsmith_f_op_vec4_f32(-arg_3.d), global0.e);
    global0 = Struct_2(global0.a, vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(firstTrailingBit(min(0i, u_input.b.x)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_1.x, u_input.d.x, u_input.d.x), _wgslsmith_mod_i32(-2147483647i, arg_1.x))), max(2147483647i, _wgslsmith_div_i32(-2147483647i, u_input.a) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.c, 7508u), u_input.e) % 32u))), 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-101f, arg_3.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -854f))), global0.e.d.x)), global0.e);
    let var_0 = _wgslsmith_f_op_vec4_f32(global0.d - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(752f, global0.a.d.x, global0.a.d.x, global0.a.d.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_3.d * global0.a.d)))))));
    global0 = Struct_2(arg_3, global0.b, -u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)), arg_3.d, vec4<bool>(!arg_2.x, any(arg_2), arg_2.x, arg_2.x)))), global0.e);
    let var_1 = arg_2.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(577f)));
}

fn func_1(arg_0: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1245f + _wgslsmith_f_op_f32(min(324f, global0.d.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.e.x, vec2<i32>(-16230i, 16003i), vec2<bool>(false, false), global0.e))))));
    var_0 = global0.e.d.x;
    global0 = Struct_2(global0.e, -global0.b, ~(-14898i), _wgslsmith_f_op_vec4_f32(exp2(global0.a.d)), global0.a);
    var var_1 = 2147483647i;
    var var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.e.e ^ 17611u, 1u, 0u, ~1u), select(select(vec4<u32>(global0.e.e, global0.e.e, 18006u, 0u), vec4<u32>(u_input.e.x, arg_0, 0u, 0u), vec4<bool>(true, true, false, true)), vec4<u32>(global0.e.e, 0u, 42141u, arg_0), vec4<bool>(true, true, true, true))) & ~0u;
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.e.d.x)), _wgslsmith_f_op_f32(global0.d.x * global0.d.x))))), global0.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1(0u));
    let var_1 = global0.e;
    global0 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(var_1.a, vec2<i32>(u_input.d.x, -2147483647i), vec2<i32>(-13185i, var_1.b))), vec2<i32>(~u_input.b.x, func_3(true))), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, 1i, var_1.b), vec3<i32>(max(var_1.c, u_input.d.x), -9234i | var_1.c, 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(global0.a.d, global0.a.d, vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(global0.a.d - global0.e.d)))), _wgslsmith_mod_u32(var_1.e, global0.e.e)), vec3<i32>(_wgslsmith_mult_i32(-u_input.b.x, var_1.a.x) >> (~reverseBits(u_input.e.x) % 32u), _wgslsmith_add_i32(-2147483647i, _wgslsmith_div_i32(~2147483647i, u_input.b.x)), global0.b.x), u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.d - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -1187f, var_1.d.x, -184f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(479f, var_0.x, -161f, 1000f)), vec4<bool>(true, true, true, true))))), global0.a);
    global0 = Struct_2(Struct_1(-global0.b.zz, reverseBits(var_1.b), var_1.b, var_1.d, 1u), global0.b, 0i, vec4<f32>(-112f, -242f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1048f))) + global0.d.x), var_1.d.x), Struct_1(var_1.a, var_1.b, -1i, var_1.d, _wgslsmith_div_u32(0u, 4294967295u)));
    var var_2 = Struct_2(Struct_1(~reverseBits(u_input.b), -2147483647i, _wgslsmith_sub_i32(var_1.b, u_input.a), var_1.d, 4294967295u), ~abs(max(_wgslsmith_sub_vec3_i32(vec3<i32>(-278i, global0.b.x, u_input.b.x), vec3<i32>(0i, 0i, 0i)), global0.b)), var_1.c, vec4<f32>(_wgslsmith_f_op_vec2_f32(func_1(var_1.e)).x, var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1487f, _wgslsmith_f_op_f32(select(1743f, var_0.x, false)), select(false, false, false))) + _wgslsmith_div_f32(-661f, _wgslsmith_f_op_f32(-global0.e.d.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1553f, 427f))))), Struct_1(u_input.d, 21242i, var_1.a.x, var_1.d, 0u));
    let var_3 = var_2.a;
    var var_4 = var_3.d.yzx;
    var var_5 = Struct_1(abs(firstLeadingBit(countOneBits(abs(vec2<i32>(-15651i, -19724i))))), reverseBits(1i << (u_input.c % 32u)), global0.c, _wgslsmith_f_op_vec4_f32(round(global0.d)), _wgslsmith_mod_u32(min(1u, 0u), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(685f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_4.x + var_4.x))), -1389f)), u_input.e.zx);
}

