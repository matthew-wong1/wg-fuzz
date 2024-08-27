struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    return arg_1.x;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> vec4<u32> {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-745f - _wgslsmith_f_op_f32(f32(-1f) * -524f));
    var_0 = max(_wgslsmith_clamp_vec3_u32(arg_0.a, ~firstTrailingBit(~vec3<u32>(var_0.x, arg_0.a.x, 59254u)), vec3<u32>(_wgslsmith_sub_u32(~1u, u_input.a.x), ~var_0.x, select(_wgslsmith_mod_u32(arg_1, 21872u), ~1u, true))), ~reverseBits(abs(u_input.a)) | ~(~(vec3<u32>(var_0.x, 1u, u_input.a.x) << (arg_0.e.a.xww % vec3<u32>(32u)))));
    var var_2 = true;
    var_2 = !func_1(Struct_1(vec4<u32>(reverseBits(2109u), 1u, 44327u, 1u), u_input.b), vec2<bool>(false, true));
    return reverseBits(~vec4<u32>(abs(0u), 1u, arg_0.b.a.x, _wgslsmith_sub_u32(min(1u, 10558u), arg_1)));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(_wgslsmith_add_vec3_u32(~vec3<u32>(5474u, 3539u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), u_input.a)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), ~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), u_input.a)), Struct_1(vec4<u32>(~abs(u_input.a.x), ~_wgslsmith_div_u32(u_input.a.x, 3132u), ~1u, u_input.a.x), i32(-1i) * -(0i ^ u_input.b)), Struct_1(~(~(~vec4<u32>(4294967295u, 4294967295u, 1u, 25525u))), -41202i), vec2<u32>(~u_input.a.x & ~23775u, 30771u) >> ((~(~vec2<u32>(u_input.a.x, 48083u)) | u_input.a.zy) % vec2<u32>(32u)), Struct_1(_wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(1u, 1u, u_input.a.x, 0u))), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), min(vec4<u32>(u_input.a.x, 2860u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 1u, 24639u, u_input.a.x)))), ~(-1i ^ u_input.b) >> (1u % 32u)));
    var var_1 = Struct_3(vec3<bool>(true, true, 66930u >= max(~1u, 38294u << (var_0.d.x % 32u))));
    let var_2 = Struct_1(reverseBits(func_3(Struct_2(~vec3<u32>(u_input.a.x, 1u, u_input.a.x), var_0.c, var_0.b, var_0.a.xx, Struct_1(var_0.b.a, var_0.c.b)), max(var_0.b.a.x >> (1u % 32u), 4294967295u), 0u)), _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_div_vec2_i32(~vec2<i32>(var_0.e.b, -36948i), vec2<i32>(var_0.e.b, var_0.b.b))), vec2<i32>(~var_0.b.b, _wgslsmith_div_i32(abs(-2443i), var_0.e.b))));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(113f)), _wgslsmith_f_op_f32(f32(-1f) * -388f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + 626f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-483f + 485f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(258f, -105f, 710f, -1792f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1058f, -245f, 1066f, 2470f), vec4<f32>(743f, 671f, 812f, -495f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 822f, -933f, -654f) + vec4<f32>(1134f, -194f, -1423f, -457f)))))));
    var var_4 = 9346i;
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 187f) + _wgslsmith_f_op_f32(sign(1972f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -953f) + _wgslsmith_f_op_f32(max(-877f, -464f)))), vec2<bool>(true, !(u_input.b != u_input.b) && func_1(Struct_1(vec4<u32>(1u, 39291u, u_input.a.x, u_input.a.x), -1i), vec2<bool>(true, true))), true);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(224f, 1909f)))))));
    let var_2 = _wgslsmith_f_op_f32(func_2());
    var var_3 = Struct_1(_wgslsmith_sub_vec4_u32(func_3(Struct_2(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), Struct_1(vec4<u32>(20916u, u_input.a.x, 28883u, 0u), u_input.b), Struct_1(vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u), u_input.b), vec2<u32>(u_input.a.x, 1656u), Struct_1(vec4<u32>(u_input.a.x, 41058u, 27933u, u_input.a.x), u_input.b)), u_input.a.x, u_input.a.x) & vec4<u32>(15635u, 0u, u_input.a.x, min(u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, 0u, ~1u, _wgslsmith_clamp_u32(u_input.a.x & 4294967295u, ~1u, ~4294967295u))), 42099i);
    var var_4 = true;
    var var_5 = Struct_1(var_3.a, u_input.b << (~45783u % 32u));
    var var_6 = Struct_1(~var_5.a, firstLeadingBit(abs(u_input.b)));
    var_5 = Struct_1(_wgslsmith_add_vec4_u32(~var_3.a, abs(var_6.a)), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * var_1), _wgslsmith_f_op_f32(var_2 - var_2)))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_5.a.x | var_5.a.x, select(var_5.a.x, var_3.a.x, var_0.x)), ~(~vec3<u32>(20792u, 57878u, u_input.a.x))), _wgslsmith_f_op_f32(-236f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(1128f + -1253f))))));
}

