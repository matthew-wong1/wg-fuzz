struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
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

var<private> global0: vec4<u32> = vec4<u32>(0u, 22289u, 1855u, 31271u);

var<private> global1: i32 = -8664i;

var<private> global2: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = ~vec2<u32>(~(~(0u ^ u_input.c)), _wgslsmith_mult_u32(u_input.a, min(global0.x, u_input.d.x)) ^ ~select(1u, 2931u, false));
    global0 = vec4<u32>(global0.x, firstTrailingBit(~(~var_0.x)), ~(~u_input.c ^ select(var_0.x, _wgslsmith_div_u32(var_0.x, u_input.a), 1i != u_input.b.x)), ~countOneBits(_wgslsmith_clamp_u32(38596u, 42078u, ~u_input.e.x)));
    global0 = vec4<u32>(u_input.d.x, global0.x, min(_wgslsmith_dot_vec3_u32(select(vec3<u32>(10366u, var_0.x, 44166u), vec3<u32>(1u, var_0.x, 1u), true), select(u_input.e.yxy, vec3<u32>(u_input.d.x, var_0.x, 0u), false)), ~global0.x) | abs(~var_0.x), global0.x >> (~abs(u_input.e.x) % 32u));
    var var_1 = 13761u;
    let var_2 = Struct_3(all(vec2<bool>(true, true)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(845f - arg_0.a)));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = countOneBits(u_input.b.ywx);
    return func_2(Struct_1(_wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_div_vec4_i32(-u_input.b, u_input.b));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1319f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(func_2(Struct_1(697f), vec4<i32>(arg_0, -1i, -1i, u_input.b.x)).a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(298f)) * _wgslsmith_f_op_f32(max(687f, -1000f))))));
    global1 = arg_0;
    global1 = _wgslsmith_add_i32(countOneBits(abs(reverseBits(u_input.b.x))) & -_wgslsmith_mod_i32(firstLeadingBit(u_input.b.x), -1i), 45461i);
    let var_1 = Struct_3(true);
    global0 = ~u_input.e >> (firstLeadingBit(~(abs(u_input.e) >> (_wgslsmith_clamp_vec4_u32(u_input.e, u_input.e, u_input.e) % vec4<u32>(32u)))) % vec4<u32>(32u));
    return 2147483647i;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = Struct_2(func_2(func_2(Struct_1(_wgslsmith_div_f32(398f, -2181f)), -vec4<i32>(var_0.d, 1i, -57224i, u_input.b.x)), u_input.b), func_2(func_2(Struct_1(955f), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, arg_1.d, var_0.d, var_0.d), vec4<i32>(12963i, arg_1.d, -1233i, u_input.b.x)) | vec4<i32>(0i, u_input.b.x, u_input.b.x, 1i)), u_input.b), u_input.b.xx, var_0.c.x, -1893f);
    var var_1 = ~arg_2;
    let var_2 = _wgslsmith_mod_u32(48974u, 30183u);
    var_1 = ~(~(~arg_2 | min(global0.x, u_input.c)));
    return Struct_1(_wgslsmith_f_op_f32(-var_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<u32>(1u | select(85007u, u_input.a, all(vec4<bool>(false, false, false, true))), _wgslsmith_mod_u32(global0.x, 74646u), ~(~min(29391u, global0.x)), firstLeadingBit(0u));
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-664f, -1323f, 213f, -537f), vec4<f32>(999f, 314f, -1158f, 676f), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-587f, 990f, 949f, 1440f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1514f, 1000f, -1301f, -541f)))))), Struct_2(func_1(Struct_3(-2147483647i >= u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(-456f + -539f), _wgslsmith_f_op_f32(round(-1378f)), _wgslsmith_f_op_f32(sign(1000f)))), func_1(Struct_3(any(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1603f, -970f, 1127f, 1351f) + vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.b.xz, u_input.b.xx, vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.xw & vec2<i32>(35208i, u_input.b.x), u_input.b.xw), -func_3(u_input.b.x), 1364f), 4294967295u, !select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), true));
    global1 = _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec4_i32(min(u_input.b | u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, 37125i, -1i)), u_input.b) << (_wgslsmith_mod_u32(1u, firstLeadingBit(0u)) % 32u), i32(-1i) * -(~0i));
    var var_1 = Struct_3(true | (!(global0.x >= 88932u) | (_wgslsmith_f_op_f32(step(var_0.a, var_0.a)) == var_0.a)));
    let var_2 = all(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), var_1.a), !select(vec2<bool>(true, false), vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, var_1.a)), false), vec2<bool>(var_1.a, !var_1.a), false));
    var var_3 = func_1(Struct_3(false), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(3331f, 1006f, 308f, -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-769f, var_0.a, 2110f, -468f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-192f, var_0.a, var_0.a, var_0.a), vec4<f32>(var_0.a, var_0.a, var_0.a, 520f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1074f, -1000f, 176f, 1000f)))))))));
    let var_4 = Struct_3(true);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, vec4<i32>(u_input.b.x, _wgslsmith_sub_i32(-38321i, ~u_input.b.x), ~u_input.b.x, ~func_3(33617i)) | u_input.b);
}

