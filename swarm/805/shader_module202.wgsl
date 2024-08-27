struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec4<f32> {
    var var_0 = arg_2;
    var_0 = arg_1;
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.e), _wgslsmith_f_op_vec4_f32(arg_1.e * var_0.e), var_0.d)))))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = vec3<i32>(abs(~u_input.b), _wgslsmith_dot_vec2_i32(min(vec2<i32>(-1i, -981i) & _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -36647i), vec2<i32>(19424i, -51295i)), -(vec2<i32>(u_input.b, -36559i) ^ vec2<i32>(u_input.b, -11223i))), vec2<i32>(-u_input.b, min(-2147483647i, -u_input.b))), u_input.b);
    let var_1 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.x, arg_0.x), arg_0.x)));
    var var_2 = Struct_2(Struct_1(~(-1i ^ ~u_input.b), ~((vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 88503u, 5218u)) & firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1059f, _wgslsmith_div_f32(363f, 921f), true))), _wgslsmith_div_f32(-586f, -1403f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1363f)) + _wgslsmith_f_op_f32(abs(-234f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mult_u32(0u, u_input.a), Struct_1(u_input.b, vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), -1000f, arg_0.x, vec4<f32>(1077f, -942f, 1161f, 857f)), Struct_1(2147483647i, vec4<u32>(52474u, u_input.a, 22792u, 1u), 338f, true, vec4<f32>(-903f, 698f, -506f, 2274f)), vec3<i32>(u_input.b, 2147483647i, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-249f, 1476f, 390f, 520f) + vec4<f32>(227f, 381f, 668f, 962f))))), ~_wgslsmith_sub_vec3_u32(select(vec3<u32>(0u, 1u, 59055u), vec3<u32>(u_input.a, u_input.a, 0u), var_1.x), ~vec3<u32>(u_input.a, u_input.a, 42274u)), Struct_1(~(-(u_input.b ^ -6615i)), ~(~countOneBits(vec4<u32>(4294967295u, 1u, 1u, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1451f, -1169f)), _wgslsmith_f_op_f32(1575f + 1000f)) * -114f), any(vec4<bool>(var_0.x == -67472i, var_1.x, !var_1.x, true)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(558f, 112f)), _wgslsmith_f_op_f32(f32(-1f) * -301f), _wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_vec4_f32(func_3(1u, Struct_1(-1i, vec4<u32>(72891u, u_input.a, u_input.a, u_input.a), 577f, var_1.x, vec4<f32>(1159f, -1339f, -776f, 107f)), Struct_1(var_0.x, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), 642f, true, vec4<f32>(-1316f, 1728f, 412f, 119f)), vec3<i32>(61330i, var_0.x, -5527i))).x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-758f, 1000f, 1114f, -710f) * vec4<f32>(144f, 492f, 1410f, 236f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1583f)), -749f)), max(var_0.x, -2147483647i));
    return Struct_2(var_2.c, var_2.b, Struct_1(-_wgslsmith_add_i32(-6454i, -1909i), vec4<u32>(~_wgslsmith_mult_u32(var_2.c.b.x, u_input.a), 0u, max(_wgslsmith_dot_vec3_u32(var_2.b, var_2.a.b.zxw), 90885u), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-948f * 1117f) + var_2.d), any(var_1), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(690f + 1304f))), var_2.a.e.x, _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.c.e.x))))), var_2.a.e.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.c.a, u_input.b, var_0.x), vec3<i32>(-57229i, -1i, u_input.b))), u_input.b));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_2(vec2<bool>(any(vec3<bool>(true, true, true)), 664f < _wgslsmith_div_f32(457f, arg_0)));
    var var_1 = 1u | countOneBits(_wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(u_input.a, u_input.a, var_0.c.b.x)), firstTrailingBit(var_0.a.b.wzy), vec3<bool>(var_0.c.d, true, var_0.a.d)), var_0.b));
    var_1 = var_0.b.x;
    var var_2 = ~(-(~select(vec3<i32>(var_0.a.a, -2147483647i, u_input.b), vec3<i32>(var_0.a.a, 38717i, 37062i), vec3<bool>(true, var_0.c.d, var_0.c.d)))) ^ abs(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.a, 2147483647i, u_input.b), vec3<i32>(-75547i, 5585i, var_0.a.a), vec3<i32>(var_0.a.a, u_input.b, 1i)) >> (vec3<u32>(1u, 20294u, ~20096u) % vec3<u32>(32u)));
    var var_3 = var_0.a;
    return func_2(vec2<bool>(all(vec2<bool>(false, var_0.a.d)) && all(select(vec2<bool>(var_0.c.d, var_0.a.d), vec2<bool>(var_0.c.d, var_3.d), true)), !(!(24689i <= var_3.a)))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(366f), ~vec3<u32>(reverseBits(~u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(76379u, 8422u, 4294967295u, u_input.a), vec4<u32>(u_input.a, 23519u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 4294967295u, u_input.a, 18022u) % vec4<u32>(32u))), firstTrailingBit(u_input.a >> (u_input.a % 32u))), func_1(-1273f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1470f)), 197f)) - _wgslsmith_f_op_vec4_f32(func_3(countOneBits(abs(u_input.a)), Struct_1(-22515i << (u_input.a % 32u), firstLeadingBit(vec4<u32>(0u, 9006u, u_input.a, u_input.a)), _wgslsmith_f_op_f32(abs(433f)), false, vec4<f32>(-415f, -800f, -1000f, 619f)), Struct_1(-u_input.b, ~vec4<u32>(0u, 52692u, 4294967295u, u_input.a), _wgslsmith_f_op_f32(463f * 1000f), true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-647f, -123f, -1000f, -2044f)))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1935i, u_input.b, 1i), vec3<i32>(u_input.b, -79545i, 0i)), vec3<i32>(-2147483647i, -45818i, u_input.b) & vec3<i32>(23317i, u_input.b, 35928i)))).x), ~u_input.b);
    let var_1 = var_0.a.e.zz;
    var_0 = func_2(select(select(select(select(vec2<bool>(var_0.a.d, true), vec2<bool>(var_0.c.d, var_0.c.d), var_0.a.d), vec2<bool>(false, var_0.a.d), true), select(select(vec2<bool>(false, var_0.c.d), vec2<bool>(false, var_0.a.d), var_0.c.d), vec2<bool>(var_0.c.d, true), var_0.a.d), vec2<bool>(false, true)), vec2<bool>(true, var_0.c.d), var_0.c.d));
    let var_2 = func_2(select(!vec2<bool>(any(vec2<bool>(true, var_0.c.d)), true), vec2<bool>(~4308u < ~var_0.b.x, any(vec2<bool>(var_0.a.d, var_0.c.d))), var_0.c.d));
    let var_3 = var_0.a.c;
    let var_4 = func_2(vec2<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), all(vec3<bool>(var_2.c.d, true, false)) | all(vec2<bool>(true, true))));
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(~0u ^ var_0.c.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2.c.e, _wgslsmith_f_op_vec4_f32(abs(var_4.c.e)), !vec4<bool>(true, true, var_2.a.d, var_2.a.d)))));
}

