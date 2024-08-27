struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<i32>) -> i32 {
    global0 = 1u;
    let var_0 = firstLeadingBit(arg_0.b.wyx);
    var var_1 = any(vec2<bool>(false, false));
    global0 = var_0.x;
    var_1 = -arg_3.x <= -reverseBits(1i);
    return arg_3.x | 1i;
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> u32 {
    global0 = max(~_wgslsmith_dot_vec3_u32(u_input.c, min(~vec3<u32>(arg_3.c, arg_0.x, u_input.c.x), ~vec3<u32>(arg_0.x, 1u, arg_0.x))), ~(~(~abs(arg_3.b.x))));
    var var_0 = Struct_2(Struct_1(~(arg_3.a.a & arg_3.a.a) & max(arg_3.a.e, vec2<i32>(u_input.d, 2147483647i)), _wgslsmith_f_op_f32(round(-1136f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1461f, 735f, arg_3.a.c.x)))), -723i, vec2<i32>(1i, ~u_input.d ^ (arg_3.a.e.x ^ arg_2))), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_3.b.zwy, ~vec3<u32>(arg_1, 4294967295u, 21731u)), arg_3.c, _wgslsmith_dot_vec4_u32((vec4<u32>(1u, u_input.a.x, 1051u, u_input.a.x) & vec4<u32>(arg_3.b.x, 37101u, arg_3.c, arg_1)) & arg_3.b, _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 4294967295u, 82521u, arg_3.c), select(vec4<u32>(10995u, 0u, u_input.a.x, 14341u), vec4<u32>(83140u, arg_3.c, arg_0.x, 4294967295u), true))), _wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, arg_1, 45068u), vec3<u32>(29141u, 67290u, arg_0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(75093u, 4294967295u, 14348u), u_input.c)))), arg_3.b.x);
    return 0u;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = reverseBits(-vec3<i32>(min(u_input.d, 2147483647i) >> (u_input.b.x % 32u), u_input.d | 79397i, _wgslsmith_dot_vec2_i32(vec2<i32>(-10883i, u_input.d), vec2<i32>(u_input.d, 51646i))));
    global0 = ~countOneBits(select(u_input.a.x, func_3(vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 4294967295u), ~35343u, func_2(Struct_2(Struct_1(var_1.yx, 1962f, vec3<f32>(-1206f, -815f, -297f), u_input.d, vec2<i32>(var_1.x, 0i)), u_input.b, u_input.c.x), Struct_2(Struct_1(vec2<i32>(var_1.x, var_1.x), 911f, vec3<f32>(-362f, 425f, 1331f), 1i, vec2<i32>(2147483647i, -6614i)), u_input.b, 1u), vec3<f32>(1492f, 1000f, -682f), vec4<i32>(-60164i, u_input.d, 1i, var_1.x)), Struct_2(Struct_1(vec2<i32>(48492i, -20897i), 1000f, vec3<f32>(525f, 568f, -331f), u_input.d, var_1.yy), u_input.b, 1u)), arg_0));
    global0 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-267f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -369f)))))));
    return Struct_1(firstLeadingBit(_wgslsmith_clamp_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, 8888i), var_1.zx), ~var_1.yy, -var_1.xy)), -1040f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -757f, _wgslsmith_f_op_f32(-282f * var_2.x)))), 61187i, var_1.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true);
    let var_1 = 814f;
    var var_2 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.a), u_input.c.x, 0u) ^ ~(13973u ^ u_input.b.x), ~(_wgslsmith_clamp_u32(13253u, 7981u, 33923u) >> (55577u % 32u))), reverseBits(u_input.c.x));
    var var_3 = var_0.c;
    var_2 = u_input.a.yy & vec2<u32>(_wgslsmith_add_u32(1u, var_2.x), 33462u);
    var var_4 = vec4<u32>(~u_input.b.x, ~firstTrailingBit(~1u), ~9138u, ~(~(~(u_input.b.x ^ u_input.a.x))));
    var var_5 = firstTrailingBit(abs(((vec4<i32>(-13160i, -39483i, u_input.d, u_input.d) >> (vec4<u32>(u_input.b.x, 1u, 87369u, var_4.x) % vec4<u32>(32u))) << ((vec4<u32>(var_2.x, 1u, 0u, u_input.c.x) >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))) << (~(u_input.b & u_input.b) % vec4<u32>(32u))));
    let var_6 = select(select(vec4<bool>(true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))), any(vec3<bool>(true, true, true)) | false, !select(true, false, false)), vec4<bool>((var_5.x | 2147483647i) >= (i32(-1i) * -2147483647i), true && all(vec3<bool>(false, false, false)), -u_input.d >= var_0.e.x, (1i >= u_input.d) || true), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(select(false, true, false), true, any(vec4<bool>(true, true, true, false)), false), !(var_0.c.x == var_3.x))), select(vec4<bool>(!any(vec4<bool>(false, false, true, false)), true, true, ~var_2.x > _wgslsmith_mod_u32(var_4.x, var_2.x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), all(vec3<bool>(false, false, false))), vec4<bool>(true || all(vec2<bool>(false, true)), any(vec2<bool>(false, false)), false | all(vec3<bool>(false, false, true)), true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-1i, abs(-1i)) >> (var_4.xw % vec2<u32>(32u)), u_input.b.x & 4294967295u, -642f, var_4.x | 1331u);
}

