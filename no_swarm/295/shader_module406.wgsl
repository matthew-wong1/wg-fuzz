struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.x), vec3<bool>(any(vec2<bool>(true, all(vec3<bool>(false, false, true)))), !any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true)), true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(f32(-1f) * -973f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-495f + 1602f)))), !(!var_0.b));
    var var_2 = max(~select(~max(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 20796u)), vec4<u32>(u_input.a << (39527u % 32u), _wgslsmith_add_u32(u_input.a, 38187u), 4294967295u, ~u_input.a), any(!var_0.b)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(u_input.a, u_input.a, 14095u, 77839u)), ~(vec4<u32>(u_input.a, 8177u, u_input.a, u_input.a) | vec4<u32>(14530u, u_input.a, u_input.a, 14894u))), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u)) | (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a)), ~vec4<u32>(23401u, u_input.a, u_input.a, u_input.a))));
    var_0 = var_1;
    let var_3 = vec2<i32>(-1i) * -firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, -7807i)));
    return firstLeadingBit(var_2.xz);
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), !(!vec3<bool>(arg_0.x, true, !arg_0.x)));
    var var_1 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), abs(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(64031i, 0i, 9010i), vec3<i32>(-2147483647i, -1i, -23579i), vec3<i32>(-36415i, -21964i, 2147483647i)), ~vec3<i32>(9315i, -78469i, 1i), !vec3<bool>(arg_0.x, arg_0.x, var_0.b.x))));
    let var_2 = ~(~(func_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(865f, -726f), vec2<f32>(699f, 1212f)))) & ((vec2<u32>(u_input.a, 72296u) ^ vec2<u32>(u_input.a, 0u)) | firstTrailingBit(vec2<u32>(u_input.a, u_input.a)))));
    var_0 = Struct_1(1308f, !(!select(vec3<bool>(true, true, var_0.b.x), vec3<bool>(false, true, arg_0.x), !vec3<bool>(arg_0.x, false, var_0.b.x))));
    let var_3 = u_input.a;
    return Struct_2(select(select(!(!vec3<bool>(false, arg_0.x, false)), vec3<bool>(true && arg_0.x, var_0.b.x, var_0.b.x), !vec3<bool>(arg_0.x, false, true)), var_0.b, true), var_2, !all(arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1570f, var_0.a, -1037f), vec3<f32>(var_0.a, 1188f, var_0.a))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = true;
    var var_1 = func_2(arg_0.b.xy);
    var var_2 = func_2(select(!func_2(vec2<bool>(true, var_0)).a.zy, vec2<bool>(var_0, arg_0.b.x), !func_2(arg_0.b.yz).a.yy));
    let var_3 = var_2.d;
    var var_4 = func_2(vec2<bool>((_wgslsmith_mod_u32(var_2.b.x, var_2.b.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(24897u, var_1.b.x, var_2.b.x), vec3<u32>(var_2.b.x, 1u, var_2.b.x))) > select(~2343u, 43924u, !var_1.a.x), any(select(!vec4<bool>(true, true, var_2.a.x, var_0), !vec4<bool>(false, true, var_0, false), true))));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.a | 109881u, 1u);
    var_0 = ~func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-489f + 712f)), vec3<bool>(true, true, all(vec2<bool>(true, true)))), ~(select(2147483647i, 22827i, true) | abs(1i)));
    var var_1 = Struct_2(vec3<bool>(!(!any(vec2<bool>(false, true))), all(!func_2(vec2<bool>(true, true)).a), true), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(4294967295u, 67333u), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a), vec2<bool>(true, false))) | vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), func_3(vec2<f32>(1000f, -2226f)).x), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, 19384u), u_input.a), select(74640u, 39215u, true))), false, func_2(vec2<bool>(true, false)).d);
    let var_2 = Struct_3(var_1.b, vec3<u32>(1147u ^ var_1.b.x, _wgslsmith_div_u32(func_2(vec2<bool>(var_1.c, var_1.a.x)).b.x, u_input.a), u_input.a | 4294967295u), _wgslsmith_add_vec2_i32(firstTrailingBit(-vec2<i32>(-55657i, -20230i)) ^ vec2<i32>(abs(2147483647i), countOneBits(29395i)), reverseBits(_wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1545i, 18121i), vec2<i32>(-11019i, 27064i), vec2<i32>(2147483647i, 1408i))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1231f)), !func_2(!var_1.a.xy).a));
    let var_3 = var_2;
    var var_4 = max(-vec3<i32>(~(-2147483647i), 0i, max(var_3.c.x, ~(-49104i))), abs(~_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 17791i, 12874i), vec3<i32>(var_3.c.x, 41442i, var_2.c.x))) | vec3<i32>(firstTrailingBit(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-41059i, var_2.c.x, var_3.c.x) >> (var_3.b % vec3<u32>(32u)), reverseBits(vec3<i32>(var_2.c.x, -4262i, 2147483647i))), var_2.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(82117u), var_4.x, countOneBits(~_wgslsmith_div_vec2_u32(~var_1.b, vec2<u32>(var_1.b.x, var_3.b.x) & vec2<u32>(var_1.b.x, 0u))));
}

