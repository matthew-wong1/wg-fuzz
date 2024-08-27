struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = ~(-arg_1);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(1145f, _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-990f + -967f)), _wgslsmith_f_op_f32(f32(-1f) * -1329f)), _wgslsmith_f_op_vec3_f32(-arg_0.a.xxw))));
    var_0 = arg_2.x;
    var var_2 = ~(~u_input.a.x);
    var_0 = -arg_2.x;
    return ~vec4<i32>(max(2665i << (~4294967295u % 32u), ~(i32(-1i) * -11940i)), arg_2.x, arg_2.x, arg_2.x);
}

fn func_3() -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_f_op_f32(-895f * -268f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -(vec4<i32>(-1i) * -vec4<i32>(1i, 0i, 1i, 17365i)) | select(select(select(vec4<i32>(-27529i, 0i, -1i, 64346i), vec4<i32>(2147483647i, -1i, -29671i, -5480i), vec4<bool>(true, true, true, true)), firstTrailingBit(vec4<i32>(11611i, -1i, -1i, -21370i)), vec4<bool>(true, true, true, true)), vec4<i32>(~(-26691i), ~0i, abs(-7072i), _wgslsmith_sub_i32(-2147483647i, -9188i)), true), true || (_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(18259i, 56837i)), vec2<i32>(19997i, 28977i)) < 1i), Struct_1(vec2<i32>(~46185i, _wgslsmith_mod_i32(-1i, 1i)), 2147483647i));
    let var_1 = Struct_1(-_wgslsmith_add_vec2_i32(var_0.c.xz, vec2<i32>(-2147483647i, var_0.e.a.x)), ~_wgslsmith_mult_i32(-var_0.e.b, 1i));
    let var_2 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(~(~u_input.b.x), u_input.b.x), abs(u_input.a.x));
    let var_3 = (~(~(~0u)) | u_input.b.x) & var_2;
    var_0 = Struct_3(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, var_0.b)) - _wgslsmith_div_f32(-950f, 1914f))))), ~_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.x, _wgslsmith_add_i32(-34801i, var_1.b), 2147483647i, var_1.b), _wgslsmith_mult_vec4_i32(~var_0.c, vec4<i32>(-1i, 38997i, var_0.c.x, var_0.c.x))), var_0.d, Struct_1(var_0.c.zy, _wgslsmith_clamp_i32(-var_0.e.b, var_1.a.x, -var_1.a.x) >> (~abs(24154u) % 32u)));
    return true;
}

fn func_1(arg_0: vec2<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(sign(-1399f));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-669f, _wgslsmith_f_op_f32(step(753f, _wgslsmith_f_op_f32(var_0 * var_0))), true)))), arg_0.x, (~func_2(Struct_2(vec4<f32>(arg_0.x, var_0, 1364f, -261f), vec3<bool>(true, true, true), Struct_1(vec2<i32>(-39483i, -2147483647i), 1i), Struct_1(vec2<i32>(0i, -4117i), -3585i), false), 0i, vec3<i32>(0i, 22982i, 12650i)) ^ reverseBits(vec4<i32>(-21877i, -1i, -35195i, -1i))) << (select(~(vec4<u32>(u_input.b.x, 25790u, 16997u, u_input.a.x) | vec4<u32>(u_input.a.x, 62161u, 83364u, u_input.a.x)), countOneBits(vec4<u32>(u_input.a.x, 4294967295u, 51004u, 0u)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), true, Struct_1(~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i, -13404i)), func_2(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-638f, var_0, var_0, var_0) - vec4<f32>(var_0, arg_0.x, -1000f, var_0)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), Struct_1(vec2<i32>(-11381i, -2147483647i), 2147483647i), Struct_1(vec2<i32>(32969i, -3783i), 0i), true), 2147483647i, -(~vec3<i32>(-2147483647i, 2147483647i, 49178i))).x));
    var var_2 = ~var_1.c.wzy;
    var var_3 = vec2<bool>(!func_3(), all(vec3<bool>(!var_1.d, true == any(vec3<bool>(var_1.d, false, true)), true)));
    var_3 = vec2<bool>(all(select(select(!vec3<bool>(var_1.d, var_3.x, true), !vec3<bool>(true, var_3.x, false), true), select(vec3<bool>(var_3.x, var_3.x, false), !vec3<bool>(true, var_3.x, var_3.x), any(vec3<bool>(true, var_1.d, var_1.d))), select(select(vec3<bool>(false, var_3.x, var_1.d), vec3<bool>(true, false, var_1.d), vec3<bool>(true, var_3.x, false)), select(vec3<bool>(var_3.x, false, false), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(var_3.x, false, var_1.d)), select(vec3<bool>(var_1.d, false, true), vec3<bool>(false, var_3.x, true), vec3<bool>(true, var_1.d, var_1.d))))), true);
    return vec2<u32>(~37984u, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1425f * -1001f), -1652f)) - 1f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1915f, _wgslsmith_f_op_f32(ceil(-982f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1268f), -205f)))));
    let var_1 = Struct_1(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(33918i, -43153i), countOneBits(vec2<i32>(2147483647i, 0i)), select(vec2<i32>(61251i, 2147483647i), vec2<i32>(-1i, 11775i), vec2<bool>(false, true))) >> (func_1(vec2<f32>(var_0, -841f)) % vec2<u32>(32u))), -_wgslsmith_dot_vec4_i32(vec4<i32>(-44666i, -22410i, 1i, -2147483647i), vec4<i32>(~1i, 1i, _wgslsmith_mod_i32(2147483647i, -2147483647i), -47920i)));
    let var_2 = min(0u, select(0u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(5328u, u_input.a.x), 19502u), true) & u_input.a.x);
    let var_3 = Struct_3(255f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0)), var_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, -2994f)))) + var_0), vec4<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_1.b), vec2<i32>(var_1.b, -30307i)), ~func_2(Struct_2(vec4<f32>(var_0, -1337f, var_0, var_0), vec3<bool>(true, true, true), Struct_1(vec2<i32>(var_1.a.x, 5848i), -1824i), Struct_1(var_1.a, -2147483647i), false), -4868i, vec3<i32>(var_1.b, var_1.b, -2147483647i)).zy), var_1.b, _wgslsmith_mod_i32(11577i, _wgslsmith_mod_i32(-1i, var_1.a.x) >> (_wgslsmith_add_u32(34563u, 0u) % 32u)), abs(_wgslsmith_add_i32(var_1.a.x, -26962i))), true, var_1);
    var var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -448f, 377f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, -1438f, var_3.b))) + vec3<f32>(var_0, var_0, var_3.b)) * vec3<f32>(-547f, _wgslsmith_f_op_f32(var_3.b * var_3.a), 2511f))));
}

