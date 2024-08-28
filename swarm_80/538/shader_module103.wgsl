struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> i32 {
    let var_0 = Struct_1(-11576i, -2180f);
    let var_1 = select(arg_0.xw, vec2<bool>(true | !arg_0.x, (~14693u != u_input.a) && true), !vec2<bool>(!(arg_0.x == true), !arg_1));
    let var_2 = 113698i == (var_0.a >> (~(~0u >> (abs(1u) % 32u)) % 32u));
    var var_3 = _wgslsmith_mult_u32(u_input.a, u_input.a >> (u_input.a % 32u));
    var_3 = countOneBits(~19545u & _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, ~u_input.a), ~0u | (1u ^ u_input.a)));
    return -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.a, -1i)), vec2<i32>(firstLeadingBit(24222i), var_0.a)) & _wgslsmith_div_i32(var_0.a, var_0.a);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.b, arg_2.b)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-395f * var_0.x) * var_0.x)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) + arg_2.b) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b))))));
    var var_2 = any(vec2<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(654f)))));
    var var_3 = Struct_3(Struct_2(u_input.a, arg_2, Struct_1(_wgslsmith_clamp_i32(arg_2.a, ~arg_2.a, arg_2.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + -1225f), _wgslsmith_f_op_f32(arg_2.b - -1280f), arg_0))), arg_0, vec2<f32>(1847f, arg_2.b)));
    return !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(137f + 939f))) == arg_2.b);
}

fn func_2() -> vec4<i32> {
    var var_0 = !(!vec3<bool>(true, func_3(false, 0u, Struct_1(19741i, -708f)) && true, func_3(true, u_input.a >> (4294967295u % 32u), Struct_1(2147483647i, 1000f))));
    var_0 = !vec3<bool>(!var_0.x, all(vec4<bool>(true, any(var_0.yz), var_0.x, false)), select(true, false != (var_0.x || var_0.x), var_0.x));
    var var_1 = ~u_input.a;
    let var_2 = Struct_1(-min(countOneBits(0i), ~1i), -1220f);
    var var_3 = firstLeadingBit(~(~abs(-vec4<i32>(-31673i, var_2.a, var_2.a, var_2.a))));
    return _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 13096i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, -1i, ~var_3.x), _wgslsmith_mult_i32(-31538i ^ var_2.a, -15449i)), var_3.x), max(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, var_2.a, var_3.x, var_3.x), vec4<i32>(0i, 1i, 2147483647i, -11099i))), vec4<i32>(_wgslsmith_div_i32(var_3.x, var_3.x), firstTrailingBit(var_3.x), var_3.x, 2147483647i)) << (~(~(vec4<u32>(25143u, 11288u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec3<i32>(-34919i, -3687i, -min(select(-2147483647i, ~69301i, var_0), _wgslsmith_mod_i32(-26992i, _wgslsmith_sub_i32(-4269i, 0i))));
    let var_2 = u_input.a;
    var var_3 = firstLeadingBit(~vec4<i32>(-44253i, _wgslsmith_sub_i32(~(-12739i), 2147483647i), i32(-1i) * -14328i, func_1(vec4<bool>(true, var_0, true, true), var_0 & var_0)));
    var_3 = reverseBits(vec4<i32>(~abs(0i), var_3.x, 12975i, -var_3.x)) | vec4<i32>(max(-var_1.x, _wgslsmith_mod_i32(17381i, ~16048i)), _wgslsmith_div_i32(-16527i, var_3.x), 1i, var_1.x);
    var_3 = _wgslsmith_clamp_vec4_i32(func_2(), select(~(-vec4<i32>(var_1.x, var_3.x, var_3.x, 2147483647i)) | vec4<i32>(var_3.x, 2147483647i, 25324i, 0i), -_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(1i, var_1.x, -15424i, 2147483647i)), vec4<i32>(-2147483647i, -27426i, 0i, 58957i)), vec4<bool>(var_0, var_0, !func_3(true, 4294967295u, Struct_1(var_3.x, -1432f)), !var_0)), select(~(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, var_3.x, var_1.x, -248i), vec4<i32>(var_3.x, 0i, 1i, -1i)) & ~vec4<i32>(1667i, 10503i, var_1.x, var_3.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, ~2147483647i, var_3.x, -156i), -firstTrailingBit(vec4<i32>(var_3.x, -26825i, var_1.x, var_3.x))), all(!select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, false, var_0), var_0))));
    var_3 = -(~(-vec4<i32>(var_3.x, _wgslsmith_div_i32(1i, -27425i), _wgslsmith_mod_i32(0i, var_3.x), -var_3.x)));
    var_3 = vec4<i32>(1i << (reverseBits(~var_2) % 32u), _wgslsmith_add_i32(abs(_wgslsmith_add_i32(2147483647i, -2044i)), -countOneBits(var_1.x)) ^ ~func_2().x, var_1.x, firstLeadingBit(func_2().x));
    var var_4 = vec2<bool>(false & (!(true & var_0) | var_0), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(371f)))))), max(4294967295u, 1u));
}

