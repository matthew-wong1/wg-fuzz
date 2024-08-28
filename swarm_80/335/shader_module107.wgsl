struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> bool {
    let var_0 = Struct_1(-5452i | (2147483647i ^ ~_wgslsmith_clamp_i32(u_input.e.x, u_input.c.x, u_input.b.x)), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-654f * -712f), _wgslsmith_f_op_f32(f32(-1f) * -397f))) - _wgslsmith_f_op_f32(step(654f, _wgslsmith_f_op_f32(f32(-1f) * -2088f)))));
    let var_1 = true && !all(vec3<bool>(true, true, all(vec2<bool>(false, true))));
    var var_2 = Struct_1(var_0.a, (~arg_1.x & 94905u) & min(80840u, _wgslsmith_div_u32(45446u, arg_1.x)), var_0.c);
    var_2 = var_0;
    var var_3 = var_0;
    return !(927f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.c)) - 1148f));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = vec4<bool>(!any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), true, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true)), vec2<bool>(any(vec2<bool>(false, true)), func_3(arg_1.a, vec4<u32>(105203u, arg_1.b, arg_1.b, arg_0.b))))), ((~4294967295u << (_wgslsmith_add_u32(1u, arg_1.b) % 32u)) >= 40358u) | true);
    var var_1 = !(!(!(!(!var_0.x))));
    return -33797i;
}

fn func_1() -> Struct_1 {
    var var_0 = -min(_wgslsmith_add_i32(-func_2(Struct_1(u_input.d.x, 1u, -1000f), Struct_1(0i, 54086u, -861f)), u_input.e.x | 2692i), firstLeadingBit(u_input.d.x));
    let var_1 = vec4<u32>(~126981u, ~u_input.a, _wgslsmith_sub_u32(_wgslsmith_add_u32(~67884u, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(12090u, 0u, 41325u, 4294967295u), max(vec4<u32>(1u, u_input.a, 2884u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)))), ~_wgslsmith_mod_u32(max(u_input.a, abs(u_input.a)), ~(~u_input.a)));
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1356f), -1266f, _wgslsmith_f_op_f32(606f * 165f), _wgslsmith_f_op_f32(round(1429f))), vec4<f32>(-1181f, _wgslsmith_div_f32(-1243f, -555f), _wgslsmith_f_op_f32(604f - 523f), _wgslsmith_f_op_f32(1464f - 1016f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(621f, -663f, -649f, 964f))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_3.x));
    return Struct_1(~2147483647i, var_1.x, -512f);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = abs(~(firstTrailingBit(vec3<u32>(33024u, 24952u, arg_0.b) ^ vec3<u32>(arg_0.b, arg_0.b, 4294967295u)) | countOneBits(vec3<u32>(4294967295u, arg_0.b, 4294967295u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-1331f * -260f), _wgslsmith_f_op_f32(arg_0.c * arg_0.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.c, arg_0.c), vec2<f32>(arg_0.c, 857f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -309f) * vec2<f32>(arg_0.c, arg_0.c)), all(vec4<bool>(true, false, false, false))))))));
    let var_2 = func_1();
    let var_3 = var_2;
    var var_4 = var_2;
    return Struct_1(_wgslsmith_mod_i32(2147483647i, arg_0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(44491u | u_input.a), _wgslsmith_mod_u32(var_2.b, max(var_4.b, arg_0.b)), 28357u, ~(~0u)), ~vec4<u32>(11104u, var_4.b, 63784u, 0u) & ~abs(vec4<u32>(var_2.b, 61013u, var_3.b, 1u))), 305f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c.x & u_input.b.x, u_input.a, -1711f);
    var_0 = Struct_1(abs(countOneBits(var_0.a)), ~(~reverseBits(13910u) | var_0.b), 1f);
    let var_1 = 27220u;
    var_0 = func_4(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.zwz, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(-u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(-7900i, -21723i, 0i, -16374i), u_input.b)), u_input.b, u_input.b));
}

