struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = 3496u > u_input.b;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1788f, -241f, 210f, 978f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-531f, 717f, 245f, 1000f))) - vec4<f32>(_wgslsmith_f_op_f32(round(346f)), _wgslsmith_f_op_f32(f32(-1f) * -317f), -320f, _wgslsmith_f_op_f32(f32(-1f) * -1063f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(117f, -366f, -1000f, -895f), vec4<f32>(-1000f, 496f, 311f, 1137f), vec4<bool>(false, false, true, true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1135f, -1000f, 262f, 205f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2072f, -590f, -1688f, 1000f) - vec4<f32>(164f, 1000f, -1103f, -151f))))));
    var_0 = any(vec2<bool>(true, true));
    var var_2 = vec4<u32>(4294967295u, select(max(u_input.b, firstLeadingBit(47437u)) & ~u_input.b, abs(16325u), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), min(u_input.b, ~u_input.b), _wgslsmith_mod_u32(~36374u, 4294967295u));
    var var_3 = Struct_3(select(!vec2<bool>(false, all(vec2<bool>(true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), true), vec2<i32>(-357i, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, arg_0, u_input.a), select(vec3<i32>(25761i, u_input.a, arg_0), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0, 47344i, arg_0), vec3<i32>(arg_0, 52686i, arg_0)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)))), _wgslsmith_clamp_vec3_i32(-_wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.a, 1i, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, arg_0, arg_0), vec3<i32>(-1i, u_input.a, 0i))), countOneBits(vec3<i32>(-56053i, -2147483647i, _wgslsmith_mult_i32(arg_0, u_input.a))), _wgslsmith_mod_vec3_i32(vec3<i32>(abs(-3054i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(u_input.a, arg_0, u_input.a)), ~1i), ~firstTrailingBit(vec3<i32>(0i, 58608i, u_input.a)))));
    return var_3.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = arg_0.b.x;
    let var_1 = true;
    var var_2 = Struct_1(all(vec4<bool>(!var_1, false && func_3(-607i), !any(vec2<bool>(false, true)), true)), _wgslsmith_dot_vec2_i32(vec2<i32>(4225i, 45041i), ~firstLeadingBit(arg_1.xw)));
    let var_3 = select(!(!(!vec2<bool>(var_2.a, var_1))), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, var_2.a), vec2<bool>(true, true), vec2<bool>(var_2.a, false)), vec2<bool>(var_2.a, var_1)), vec2<bool>(func_3(arg_1.x), all(select(vec4<bool>(var_2.a, var_2.a, false, false), vec4<bool>(true, var_2.a, true, var_1), var_2.a))), 1i != reverseBits(_wgslsmith_add_i32(34719i, var_2.b))), !vec2<bool>(false, !(1508f > arg_0.b.x)));
    let var_4 = u_input.a;
    return 243f;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x, all(vec2<bool>(true, true)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(min(-1639f, arg_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(func_2(Struct_2(-vec4<i32>(0i, u_input.a, 1i, arg_1.b), _wgslsmith_f_op_vec2_f32(min(arg_0, vec2<f32>(arg_0.x, -242f))), min(abs(-1i), -u_input.a)), _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_1.b, 30769i, 1i, 5186i), firstLeadingBit(vec4<i32>(12055i, u_input.a, arg_1.b, u_input.a))), Struct_2(vec4<i32>(1i, arg_1.b & arg_1.b, firstLeadingBit(u_input.a), ~2147483647i), _wgslsmith_f_op_vec2_f32(-arg_0), countOneBits(~u_input.a)))));
    var var_1 = arg_1.a | all(select(vec3<bool>(var_0.x <= 1350f, true, !arg_1.a), vec3<bool>(arg_1.a, true, arg_1.a), select(vec3<bool>(false, arg_1.a, false), !vec3<bool>(false, false, arg_1.a), arg_1.a)));
    var var_2 = vec2<u32>(1u, u_input.b);
    var_1 = true;
    let var_3 = Struct_3(select(!vec2<bool>(!arg_1.a, var_2.x != 71010u), select(vec2<bool>(true, true), !vec2<bool>(arg_1.a, true), vec2<bool>(false, arg_1.a)), arg_1.a), vec2<i32>(35957i, -2147483647i ^ u_input.a), vec3<i32>(abs(~u_input.a), ~0i, -2147483647i) >> (reverseBits(vec3<u32>(~u_input.b, ~28067u, 1u)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-311f, arg_0.x))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-var_0.x))), 1835f)))));
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f), -1000f)));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = Struct_3(vec2<bool>(false, true), vec2<i32>(~countOneBits(u_input.a), -(i32(-1i) * -58548i)) ^ ~vec2<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, -2147483647i)), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, abs(18590i)), vec3<i32>(-6618i, u_input.a, ~(-50247i)), abs(vec3<i32>(-16966i, 40015i, u_input.a)))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(-185f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(518f, _wgslsmith_f_op_f32(-var_0)) - -1000f), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(func_4(vec2<f32>(1315f, _wgslsmith_f_op_f32(486f + _wgslsmith_f_op_f32(func_2(Struct_2(vec4<i32>(0i, -30687i, 0i, 1i), vec2<f32>(var_0, 1000f), 17141i), vec4<i32>(var_2.c.x, var_2.c.x, u_input.a, u_input.a), Struct_2(vec4<i32>(var_2.c.x, u_input.a, 1i, var_2.c.x), vec2<f32>(618f, var_0), var_2.c.x))))), Struct_1(var_2.a.x, ~_wgslsmith_mult_i32(-27164i, var_2.b.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<i32>(u_input.a, 4231i, 15727i, 0i), vec2<f32>(var_0, var_0), var_2.b.x), min(vec4<i32>(-32912i, -20856i, -39812i, 1i), vec4<i32>(-49863i, 1i, 1i, var_2.b.x)), Struct_2(vec4<i32>(-42960i, -40541i, -29019i, -1i), vec2<f32>(var_0, -513f), -2147483647i))), -498f)))));
    return vec4<f32>(-105f, _wgslsmith_f_op_f32(-916f - _wgslsmith_f_op_f32(-1518f * _wgslsmith_f_op_f32(ceil(-1448f)))), -3460f, _wgslsmith_f_op_f32(-307f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1317f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i << (u_input.b % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) + vec4<f32>(-1656f, 2836f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -610f))), _wgslsmith_f_op_f32(round(577f))));
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(350f, 1529f, 221f, 1086f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1262f, 1092f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(441f, var_1.x, var_1.x, var_1.x)))))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(var_1.x, 814f)))), var_1.x, _wgslsmith_f_op_vec4_f32(func_1()).x, var_1.x);
    let var_2 = ~vec2<u32>(u_input.b ^ firstLeadingBit(61237u), reverseBits(_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 0u, 22731u), vec4<u32>(1u, 0u, 4294967295u, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xyx, 16542i | u_input.a);
}

