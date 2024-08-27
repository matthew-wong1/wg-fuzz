struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-258f, arg_0.b))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -333f))), _wgslsmith_f_op_f32(-1328f + _wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(5824u, 0u), _wgslsmith_div_f32(-1933f, -239f)), 36493u, all(!vec3<bool>(arg_0.x, false, arg_0.x))))));
    var var_1 = abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 24965u, ~29678u), firstLeadingBit(~vec3<u32>(0u, 4294967295u, 3580u)), true), select(~select(vec3<u32>(1u, 4294967295u, 91424u), vec3<u32>(4294967295u, 4294967295u, 21893u), false), vec3<u32>(1u, 1u, 1u), any(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))));
    return Struct_1(reverseBits(~vec2<u32>(1u, 4294967295u)), var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(~_wgslsmith_add_vec2_u32(~vec2<u32>(0u, arg_1.a.x), vec2<u32>(arg_3.x, arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -966f))));
    let var_1 = var_0.a.a.x;
    var var_2 = arg_1.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, 384f, _wgslsmith_f_op_f32(ceil(986f)), -1403f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, -1384f, arg_1.b, 2342f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1282f, 1469f, -1000f, arg_0.b), vec4<f32>(-452f, -1000f, 1127f, arg_0.b))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1935f, -378f, _wgslsmith_f_op_f32(max(var_0.a.b, 815f)), var_0.a.b), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 716f, 1020f, -1978f) * vec4<f32>(arg_0.b, var_0.a.b, 706f, arg_1.b)))), vec4<bool>(false, any(vec3<bool>(false, true, true)), true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, var_0.a.b, var_0.a.b)))))));
    return Struct_2(func_2(select(vec4<bool>(any(vec4<bool>(false, false, true, true)), false, false, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false), false)));
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<bool>(!(-1i <= ((u_input.a & u_input.a) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, -13575i), vec3<i32>(-17531i, -1i, u_input.a)))), true, select(u_input.a >= max(max(0i, -586i), max(-1i, u_input.a)), true || (select(false, true, false) | true), any(vec2<bool>(true, true))));
    return func_4(Struct_1(~countOneBits(vec2<u32>(2796u, 66810u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1275f)))), func_2(vec4<bool>(false, !all(vec2<bool>(true, var_0.x)), true, true)), 976f, max(vec4<u32>(1u, 1u, 65516u, 1u), vec4<u32>(50396u, 1u, reverseBits(19543u), _wgslsmith_mod_u32(60601u, 4294967295u)) >> (_wgslsmith_clamp_vec4_u32(min(vec4<u32>(7805u, 57137u, 1u, 441u), vec4<u32>(25093u, 4294967295u, 50614u, 35895u)), reverseBits(vec4<u32>(1u, 0u, 19695u, 33431u)), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1556f, _wgslsmith_f_op_f32(1442f - arg_0.a.b), arg_1, _wgslsmith_div_f32(-165f, arg_0.a.b)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(907f, 191f, 1337f, arg_1), vec4<f32>(162f, arg_1, -374f, 565f)))))));
    let var_1 = var_0.zyx;
    var var_2 = _wgslsmith_sub_vec2_u32(max(arg_0.a.a, ~vec2<u32>(1u, arg_0.a.a.x)), vec2<u32>(4294967295u, 43695u));
    var_2 = arg_0.a.a;
    let var_3 = arg_0.a.a;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~_wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.a, 27723i), vec2<i32>(u_input.a, -55941i), vec2<bool>(false, true)) | _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(15198i, u_input.a)), ~vec2<i32>(u_input.a, -24100i) | vec2<i32>(u_input.a, u_input.a)));
    let var_1 = vec2<i32>(var_0.x, abs(u_input.a));
    var var_2 = firstLeadingBit(firstLeadingBit(_wgslsmith_sub_u32(~countOneBits(1u), _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(3076u, 1u)))));
    let var_3 = !vec4<bool>(true, false, true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))));
    var_2 = ~(~_wgslsmith_mult_u32(1u, 1u));
    var var_4 = Struct_2(func_5(func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(-1272f))) * func_4(func_2(var_3), Struct_1(vec2<u32>(16918u, 0u), 531f), 539f, vec4<u32>(4294967295u, 88378u, 1u, 68645u)).a.b), false | var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-336f * 284f) * func_4(var_4.a, Struct_1(var_4.a.a, var_4.a.b), -576f, vec4<u32>(4294967295u, var_4.a.a.x, 22139u, 14846u)).a.b), 467f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-518f + var_4.a.b), _wgslsmith_f_op_f32(-var_4.a.b), all(var_3.yz))), func_5(func_4(Struct_1(var_4.a.a, -823f), Struct_1(var_4.a.a, var_4.a.b), 1288f, vec4<u32>(var_4.a.a.x, var_4.a.a.x, var_4.a.a.x, var_4.a.a.x)), _wgslsmith_f_op_f32(sign(-1869f)), var_3.x).b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_4.a.b, -1775f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a.b, var_4.a.b))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a.b, 432f) + vec2<f32>(var_4.a.b, var_4.a.b))))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -843f), -248f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_4.a.b, var_4.a.b))))))), _wgslsmith_f_op_f32(f32(-1f) * -285f));
}

