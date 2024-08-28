struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 38951u, 72483u, 27131u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec3<bool>) -> u32 {
    var var_0 = abs(vec4<u32>(~(~4294967295u), arg_0.d, ~(arg_2.b | 0u), min(arg_0.a >> (1u % 32u), ~arg_2.a.a))) | ~select(abs(vec4<u32>(47143u, arg_0.d, arg_2.d.a, 4294967295u) << (vec4<u32>(arg_0.d, 4294967295u, arg_0.d, 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_2.a.d, global0.x, global0.x, arg_0.a)), ~vec4<u32>(arg_0.d, global0.x, 30307u, global0.x)), any(vec3<bool>(false, arg_3.x, false)));
    var var_1 = _wgslsmith_dot_vec3_u32(global0.zyy, global0.wyw >> (vec3<u32>(41937u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.x, 71123u), abs(arg_0.a)), var_0.x) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~(min(vec4<i32>(50021i, arg_2.d.b, -1i, arg_0.c), vec4<i32>(0i, 35229i, -1i, -1i)) >> (reverseBits(vec4<u32>(42539u, var_0.x, 4294967295u, var_0.x)) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(-2147483647i, arg_0.c ^ -1i, arg_2.a.c, i32(-1i) * -44308i)), select(~vec4<i32>(arg_2.a.b, -19402i, 0i, arg_2.d.b), select(abs(vec4<i32>(-11620i, u_input.c, 16826i, u_input.a.x)), ~vec4<i32>(u_input.c, -1i, arg_0.b, arg_0.b), !vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x)), vec4<bool>(arg_2.c.x <= arg_1.x, any(vec3<bool>(true, true, true)), all(arg_3.yz), true))), firstTrailingBit(vec4<i32>(u_input.b.x, arg_0.c, _wgslsmith_mod_i32(firstTrailingBit(arg_2.d.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 13607i, -10896i), u_input.a)), firstTrailingBit(~2147483647i))));
    var_0 = select(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(43426u, var_0.x), ~12831u, _wgslsmith_mult_u32(51695u, arg_0.a), ~global0.x), _wgslsmith_add_vec4_u32(min(vec4<u32>(arg_2.a.d, global0.x, arg_2.a.a, arg_2.b), vec4<u32>(8824u, var_0.x, arg_0.a, 10411u)), _wgslsmith_add_vec4_u32(vec4<u32>(37493u, arg_0.d, 12743u, arg_2.a.a), vec4<u32>(arg_0.d, 1u, 100834u, global0.x)))) | vec4<u32>(countOneBits(26323u), global0.x, firstLeadingBit(arg_2.a.d), global0.x), max(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(global0.x, 9948u, arg_0.d, 4294967295u)), vec4<u32>(20669u, firstTrailingBit(5569u), ~global0.x, 4294967295u)), ~vec4<u32>(4294967295u, var_0.x, 5006u, firstLeadingBit(1u))), select(select(select(!vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x), select(vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), vec4<bool>(true, arg_3.x, true, arg_3.x), arg_3.x), true), !select(vec4<bool>(arg_3.x, true, arg_3.x, true), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), vec4<bool>(arg_3.x, true, false, arg_3.x)), !(!vec4<bool>(false, false, false, arg_3.x))), vec4<bool>(true | all(vec4<bool>(false, false, false, false)), !select(true, arg_3.x, true), !arg_3.x, arg_3.x), !arg_3.x));
    var var_3 = u_input.b.x;
    return global0.x;
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-802f + -506f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1780f, 1279f))))), -201f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-825f - -1043f)))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -656f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1306f - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -915f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), 1460f, -218f);
    var var_1 = max(vec4<u32>(func_3(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 0u), global0.ww), u_input.c, ~(-489i), ~1u), var_0.xxy, Struct_3(Struct_1(global0.x, 1929i, u_input.b.x, global0.x), 0u, _wgslsmith_f_op_vec2_f32(-var_0.wz), Struct_1(global0.x, -1i, u_input.a.x, global0.x)), vec3<bool>(true, true, any(vec4<bool>(arg_0.x, false, arg_0.x, false)))), _wgslsmith_add_u32(global0.x, ~global0.x) ^ (global0.x | abs(10847u)), global0.x, ~(~14232u)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, 1u, global0.x), vec4<u32>(global0.x, 4294967295u, global0.x, global0.x)), ~vec4<u32>(4294967295u, global0.x, 31762u, global0.x)) | global0.x, _wgslsmith_mult_u32(firstLeadingBit(abs(18338u)), ~abs(global0.x)), ~12536u, global0.x));
    var_1 = abs(~select(~vec4<u32>(0u, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, global0.x, global0.x, var_1.x) << (vec4<u32>(var_1.x, var_1.x, global0.x, global0.x) % vec4<u32>(32u)), !vec4<bool>(arg_0.x, false, true, arg_0.x)) >> ((countOneBits(reverseBits(vec4<u32>(27773u, 45050u, 20638u, 0u))) | reverseBits(~vec4<u32>(global0.x, global0.x, var_1.x, global0.x))) % vec4<u32>(32u)));
    global0 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(reverseBits(~41885u), global0.x, 50892u, 1u)), vec4<u32>(var_1.x, 3726u, _wgslsmith_add_u32(50742u, var_1.x), _wgslsmith_dot_vec3_u32(min(var_1.xxx, global0.yyx << (vec3<u32>(global0.x, 4294967295u, global0.x) % vec3<u32>(32u))), var_1.wzy)));
    return firstTrailingBit(vec4<u32>(9697u, global0.x, var_1.x, _wgslsmith_div_u32(~countOneBits(global0.x), ~0u)));
}

fn func_1(arg_0: Struct_4) -> f32 {
    let var_0 = vec4<u32>(global0.x, ~(~(~(~global0.x))), global0.x, global0.x);
    global0 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(select(_wgslsmith_add_u32(30963u, global0.x), ~global0.x, false), global0.x, 0u, 44031u), ~(~var_0)), var_0 ^ ~func_2(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)));
    var var_1 = vec2<bool>(any(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), false);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2201f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1631f), 1275f))));
    global0 = var_0;
    return -402f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))))));
    var_0 = -870f;
    global0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, func_2(vec3<bool>(true, false, false)).x, global0.x, 1u), ~reverseBits(vec4<u32>(global0.x, 0u, 16649u, 43067u)), select(vec4<u32>(global0.x, global0.x, global0.x, 30429u) & vec4<u32>(global0.x, global0.x, 0u, global0.x), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 0u, 0u, global0.x)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false))) & firstLeadingBit(vec4<u32>(~(~global0.x), 1u, firstLeadingBit(4294967295u), 4294967295u));
    var var_1 = -_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(16852i), 2147483647i, -14322i), ~vec3<i32>(~2147483647i, min(u_input.a.x, u_input.c), 42624i));
    global0 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_add_u32(global0.x, 51914u), global0.x, global0.x), max(vec4<u32>(1u, 0u, global0.x, 26054u), ~vec4<u32>(1u, global0.x, global0.x, global0.x))));
    global0 = ~firstLeadingBit(vec4<u32>(0u, ~global0.x >> (_wgslsmith_mult_u32(global0.x, global0.x) % 32u), ~countOneBits(global0.x), global0.x));
    var var_2 = true;
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 1i), u_input.c), vec3<i32>(-13046i, -u_input.b.x, -34164i));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(34510u), ~reverseBits(17797u));
}

