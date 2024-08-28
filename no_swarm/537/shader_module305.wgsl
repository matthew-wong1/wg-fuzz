struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec3<bool>) -> vec3<i32> {
    var var_0 = arg_2.xy;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) * 652f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, arg_1) + 1492f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a, -273f, -1135f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(arg_1, arg_0.a, arg_1), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-381f, arg_0.a, arg_0.a) * vec3<f32>(arg_0.a, -452f, -959f))))))));
    var var_2 = _wgslsmith_clamp_u32(abs(~1u), ~firstTrailingBit(0u), ~(~(~4294967295u))) >> (firstTrailingBit(~_wgslsmith_clamp_u32(31164u, ~1044u, 0u)) % 32u);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(arg_1 - 2117f), arg_0.b);
    let var_4 = vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(floor(var_1.x)), -814f, var_3.a);
    return reverseBits(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b.a, 0i, u_input.a), min(vec3<i32>(15999i, -2147483647i, var_3.b.a), vec3<i32>(34465i, u_input.a, 65554i))))) & vec3<i32>(-1i, -_wgslsmith_mod_i32(var_3.b.a, -12921i), -1i);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_div_vec3_i32(-vec3<i32>(17634i, arg_0, 51110i), select(firstLeadingBit(func_3(Struct_4(-1000f, Struct_3(u_input.a, arg_2, true)), _wgslsmith_f_op_f32(abs(909f)), vec3<bool>(arg_2, arg_2, false))), firstLeadingBit(vec3<i32>(1i, ~58555i, -arg_0)), !(!(!arg_2))));
    var var_1 = _wgslsmith_sub_vec4_i32(reverseBits(~(vec4<i32>(u_input.a, 2147483647i, arg_1, -2147483647i) | vec4<i32>(50335i, 1i, arg_0, -12911i))) ^ vec4<i32>(countOneBits(2147483647i), 1i, arg_0, arg_1), ~vec4<i32>(arg_1, _wgslsmith_add_i32(~var_0.x, firstLeadingBit(0i)), -12077i, -(u_input.a << (605u % 32u))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1129f, -705f))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(785f, -620f)))));
    var var_3 = _wgslsmith_f_op_f32(-982f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f + var_2.x)))));
    var var_4 = all(vec4<bool>(any(select(vec4<bool>(arg_2, true, arg_2, false), !vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(arg_2, arg_2, arg_2, arg_2))), arg_2, false, false));
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1485f - _wgslsmith_f_op_f32(arg_1.a * arg_1.a)), 1000f));
    let var_1 = ~arg_0;
    let var_2 = vec2<i32>(3679i, -(~(~func_3(Struct_4(-1320f, Struct_3(14998i, true, true)), 1249f, vec3<bool>(true, true, true)).x)));
    let var_3 = all(select(!vec4<bool>(arg_1.a <= -1387f, true, any(vec4<bool>(true, false, false, false)), false), vec4<bool>(min(1i, var_1) == _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -43179i, 3373i, var_2.x), vec4<i32>(var_1, -1i, 1i, var_1)), true | (-7012i > u_input.a), false, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))));
    let var_4 = vec2<i32>(_wgslsmith_div_i32(-23069i, (_wgslsmith_sub_i32(-2147483647i, -2147483647i) & var_1) ^ 2147483647i), -max(countOneBits(106089i), 2147483647i));
    return var_2.x;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_5((-(~(-21743i)) | ~u_input.a) < func_4(func_2(arg_0, 2147483647i, true), Struct_2(_wgslsmith_f_op_f32(769f + -941f))), abs(~func_4(firstTrailingBit(arg_0), Struct_2(-148f))), -vec2<i32>(min(-20050i, u_input.a), 1i) >> (~(abs(vec2<u32>(1u, 1u)) | _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 0u), vec2<u32>(1u, arg_1))) % vec2<u32>(32u)), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(0i), abs(0i)), vec2<i32>(_wgslsmith_sub_i32(u_input.a, 1i), arg_0), min(vec2<i32>(-40049i, -45655i), vec2<i32>(15862i, arg_0)) & -vec2<i32>(-14504i, 2147483647i))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(-489f, 571f, !(var_0.a & var_0.a))));
    let var_2 = min(vec2<u32>(arg_1, 0u), ~firstTrailingBit(select(vec2<u32>(1u, arg_1), vec2<u32>(0u, arg_1) | vec2<u32>(4294967295u, 1u), !vec2<bool>(true, var_0.a))));
    var_0 = Struct_5(var_0.a, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, ~(-2147483647i)), -reverseBits(vec3<i32>(-18193i, u_input.a, var_0.c.x))), ~(-2147483647i)), ~var_0.d.a, var_0.d);
    var var_3 = Struct_5(true, ~abs(arg_0 << (var_2.x % 32u)) >> (arg_1 % 32u), vec2<i32>(~(-2147483647i), -arg_0), Struct_1(vec2<i32>(-32007i, ~var_0.b)));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1233f) * _wgslsmith_f_op_f32(trunc(1422f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-u_input.a, u_input.a, false);
    var var_1 = func_1(_wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(u_input.a, var_0) >> (~37760u % 32u)), _wgslsmith_mod_i32(var_0, _wgslsmith_sub_i32(0i, ~u_input.a))), ~_wgslsmith_add_u32(min(~2692u, ~5896u), 1u));
    let var_2 = _wgslsmith_mod_u32(~(~61648u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_3 = Struct_5(false, -countOneBits(u_input.a) & (func_4(79280i, Struct_2(var_1.a)) | min(var_0 & u_input.a, _wgslsmith_add_i32(33585i, u_input.a))), vec2<i32>(_wgslsmith_add_i32(2147483647i, -35487i) ^ u_input.a, reverseBits(u_input.a)) >> (~vec2<u32>(0u, ~var_2) % vec2<u32>(32u)), Struct_1(-(~func_3(Struct_4(-207f, Struct_3(-39694i, false, false)), var_1.a, vec3<bool>(true, true, true)).zz)));
    let var_4 = -15696i;
    var var_5 = !(!vec2<bool>((41299u ^ var_2) != 51226u, true));
    let x = u_input.a;
    s_output = StorageBuffer(~30387u, 1u, var_1.a, -vec4<i32>(max(0i, var_3.d.a.x), -48460i, 0i, min(~var_3.b, var_3.c.x ^ -1i)), -vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.d.a.x, -2147483647i), var_3.d.a), select(var_3.b << (var_2 % 32u), _wgslsmith_sub_i32(0i, 8259i), false), ~var_0));
}

