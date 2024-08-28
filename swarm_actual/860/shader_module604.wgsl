struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_3(Struct_1(12600i, global0.b), _wgslsmith_add_i32(-1697i, _wgslsmith_sub_i32(abs(u_input.b), -2147483647i & u_input.b)) | u_input.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(778f, -1000f, 215f, -603f)))))));
    let var_1 = Struct_1(12343i, vec4<bool>(var_0.a.b.x || true, select(true, true, !var_0.a.b.x), any(global0.b.yy), false));
    var var_2 = ~vec2<u32>(_wgslsmith_div_u32(firstLeadingBit(0u), ~_wgslsmith_add_u32(13012u, 0u)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 0u, 36043u, 1u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 90702u, 29835u), u_input.a), _wgslsmith_sub_vec4_u32(~u_input.a, ~u_input.a)));
    var_2 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 1u), ~_wgslsmith_sub_vec2_u32(u_input.a.xw, u_input.a.wy)), vec2<u32>(49003u, ~var_2.x) << ((firstTrailingBit(u_input.a.wz) ^ vec2<u32>(1u, 1u)) % vec2<u32>(32u)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + 801f)), _wgslsmith_f_op_f32(floor(var_0.c.x)))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(f32(-1f) * -1587f), _wgslsmith_f_op_f32(-var_0.c.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-527f, var_0.c.x, -1748f, var_0.c.x) * _wgslsmith_f_op_vec4_f32(-var_0.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-149f, 386f, var_0.c.x, var_3.a.x), vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -1511f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_0.c.x, 823f, var_3.a.x))), vec4<f32>(_wgslsmith_f_op_f32(var_3.a.x + var_3.a.x), _wgslsmith_f_op_f32(-858f + var_3.a.x), var_3.a.x, var_3.a.x))) - vec4<f32>(-1000f, -134f, 657f, var_0.c.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: bool) -> Struct_5 {
    return Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1150f, -1319f, -654f, -799f))) * vec4<f32>(1f, 1f, 1f, 1f))))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1232f)) * -917f))));
}

fn func_1() -> Struct_3 {
    global0 = Struct_1(15646i, vec4<bool>(true, false, global0.b.x, global0.b.x));
    let var_0 = func_2(vec3<bool>(true, true, true), global0.b.zzw, u_input.a.x <= 3211u);
    let var_1 = true;
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_0.a.xyz);
    return Struct_3(Struct_1(u_input.b, vec4<bool>(true, all(global0.b.yy), any(vec3<bool>(var_2, true, true)) & true, var_1)), u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)))) + _wgslsmith_f_op_vec4_f32(-var_0.a)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    global0 = arg_0.a;
    global0 = func_1().a;
    var var_0 = -1i;
    let var_1 = func_1().a.a;
    global0 = func_1().a;
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1552f * 129f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(206f, -560f))), _wgslsmith_f_op_f32(-101f + _wgslsmith_f_op_f32(trunc(-116f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1818f + 229f) * -439f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(704f)), _wgslsmith_f_op_f32(sign(-104f)), _wgslsmith_f_op_f32(-1709f - _wgslsmith_f_op_f32(ceil(302f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(482f * 868f))))), 1i);
    let var_0 = -vec2<i32>(-abs(u_input.b), _wgslsmith_div_i32(2147483647i, (global0.a >> (1u % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, -53741i, 79483i), vec3<i32>(u_input.b, 0i, 1i))));
    let var_1 = Struct_1(~_wgslsmith_sub_i32(func_4(func_1(), vec4<f32>(-374f, 1068f, -303f, -585f), var_0.x).a, u_input.b), global0.b);
    global0 = var_1;
    var var_2 = !select(vec3<bool>(false, var_1.b.x, all(!vec4<bool>(false, true, var_1.b.x, true))), select(vec3<bool>(var_1.b.x, all(vec4<bool>(global0.b.x, false, global0.b.x, true)), var_1.b.x), vec3<bool>(true, true, true), true), all(var_1.b.wxx));
    var var_3 = _wgslsmith_div_u32(u_input.a.x << (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 30270u, 1u) | vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a.x, 0u), u_input.a.wwz) >> (~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))) >> (73159u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(u_input.a) & (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (~u_input.a % vec4<u32>(32u)))), 0u, u_input.a);
}

