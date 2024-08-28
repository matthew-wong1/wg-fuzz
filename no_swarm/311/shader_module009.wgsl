struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_div_i32(select((_wgslsmith_dot_vec2_i32(vec2<i32>(-21471i, -23161i), vec2<i32>(0i, 0i)) >> (u_input.c % 32u)) | _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(-1i, 8478i)), _wgslsmith_div_i32(_wgslsmith_mod_i32(~(-13213i), ~18237i), 2147483647i), (4294967295u >> ((u_input.a ^ u_input.a) % 32u)) < u_input.a), 2147483647i);
    var var_1 = !(!select(!vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), vec2<bool>(true & arg_1, false)));
    let var_2 = Struct_1(~u_input.b.yz, firstLeadingBit(select(-vec4<i32>(18005i, 0i, 2147483647i, -7903i), vec4<i32>(6251i, 21368i, -31474i, -17753i) << (u_input.b % vec4<u32>(32u)), !select(vec4<bool>(arg_1, true, false, var_1.x), vec4<bool>(arg_1, false, true, var_1.x), false))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(2147483647i, -3265i, -24957i, -2147483647i)), vec4<i32>(-4228i, -1i, 0i, -23703i) >> (u_input.b % vec4<u32>(32u))), reverseBits(countOneBits(vec4<i32>(-1715i, 74265i, -42032i, 14278i)))) << (vec4<u32>(countOneBits(~u_input.c), 23278u, ~arg_2 | min(13240u, 0u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b.x, arg_2, u_input.a))) % vec4<u32>(32u)), -2147483647i);
    var_1 = select(vec2<bool>(any(!vec3<bool>(false, arg_1, false)) && var_1.x, true), !(!(!select(vec2<bool>(arg_1, false), vec2<bool>(true, true), arg_1))), select(vec2<bool>(arg_1, ~var_2.c.x < var_2.b.x), select(select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true)), select(vec2<bool>(var_1.x, false), vec2<bool>(true, false), vec2<bool>(arg_1, false)), var_1.x), select(vec2<bool>(false, arg_1), vec2<bool>(var_1.x, var_1.x), true), arg_1), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(var_1.x, true), vec2<bool>(var_1.x | true, true))));
    var_1 = vec2<bool>(true, true);
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1052f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -493f);
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_1 = !(1u < _wgslsmith_dot_vec2_u32(~arg_2.a, ~vec2<u32>(arg_2.a.x, 1u)));
    let var_2 = vec2<u32>(~(~arg_0), 4294967295u);
    var_1 = false || (select(true, true, _wgslsmith_sub_u32(arg_0, var_2.x) == (arg_2.a.x >> (0u % 32u))) & true);
    let var_3 = _wgslsmith_f_op_f32(-arg_1.x);
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-862f, -1195f), _wgslsmith_f_op_f32(arg_1.x - var_3)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = 4294967295u;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(func_4(~_wgslsmith_mod_u32(max(4294967295u, 21491u), 17280u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(597f, arg_1.x, -1419f, arg_1.x) * _wgslsmith_f_op_vec4_f32(-arg_1)) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(round(arg_1.zx)), true, 4294967295u))), Struct_1(abs(abs(u_input.b.xw)), reverseBits(abs(vec4<i32>(var_1.d, arg_0.c.x, 1i, -25349i))), vec4<i32>(_wgslsmith_sub_i32(var_1.c.x, 0i), ~(-2147483647i), firstLeadingBit(-1i), i32(-1i) * -1i), -45731i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.wxx)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1558f, -1305f) + _wgslsmith_f_op_vec3_f32(-arg_1.zwz)))))));
    var var_3 = arg_0;
    let var_4 = Struct_1(arg_0.a, -_wgslsmith_clamp_vec4_i32(arg_0.c, vec4<i32>(arg_0.c.x, -12170i, var_3.d, arg_0.b.x) & vec4<i32>(var_3.b.x, -2147483647i, var_1.b.x, arg_0.c.x), _wgslsmith_add_vec4_i32(arg_0.b, -var_1.b)), arg_0.b, abs(_wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(10496i, 2147483647i, 0i, arg_0.c.x) >> (~u_input.b % vec4<u32>(32u)))));
    return var_4;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<f32>) -> u32 {
    var var_0 = arg_0.d;
    var var_1 = func_2(arg_0, _wgslsmith_f_op_vec4_f32(exp2(arg_2)));
    var_1 = arg_0;
    var_0 = -(~var_1.b.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) * vec2<f32>(-665f, arg_2.x)))) * arg_2.wx) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-294f, 146f), vec2<f32>(367f, arg_2.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.x, arg_2.x))), vec2<bool>(true, true))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-1059f)), -561f))));
    return ~var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec2<bool>(all(vec2<bool>(true, true)), false)));
    var_0 = !vec2<bool>((u_input.b.x >> (max(8449u, u_input.b.x) % 32u)) < select(func_1(Struct_1(u_input.b.yy, vec4<i32>(-12569i, 2147483647i, 2147483647i, 0i), vec4<i32>(-1i, 2147483647i, -5070i, -6584i), 0i), vec3<u32>(u_input.c, u_input.b.x, u_input.a), vec4<f32>(731f, -338f, 335f, -2230f)), min(1u, u_input.a), true), !(!(u_input.c >= u_input.b.x)));
    var var_1 = 97581u;
    var var_2 = !vec2<bool>(var_0.x, select(true, true, true));
    var var_3 = Struct_1(select(~(~_wgslsmith_mult_vec2_u32(u_input.b.wx, u_input.b.zx)), u_input.b.yw, all(!select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), var_2.x))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(14199i, 0i, 0i, 2147483647i), true) << (u_input.b % vec4<u32>(32u)), ~vec4<i32>(1i, 1i, 1i, 1i), ~(-vec4<i32>(-30970i, 64552i, -1i, 2147483647i))), select(vec4<i32>(-1i) * -(~vec4<i32>(37998i, -2147483647i, -19885i, 0i)), abs(abs(vec4<i32>(40119i, 1i, 2147483647i, -1i))), vec4<bool>(true, false, any(!vec2<bool>(false, var_2.x)), var_2.x)), _wgslsmith_add_i32(1i | firstTrailingBit(33043i), _wgslsmith_div_i32(firstLeadingBit(22592i), 47197i)));
    var_0 = select(!select(!(!vec2<bool>(var_2.x, var_2.x)), vec2<bool>(!var_2.x, var_3.a.x >= 0u), true), select(vec2<bool>(var_2.x, all(select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_2.x, false, var_0.x, false), vec4<bool>(true, true, var_0.x, true)))), vec2<bool>(true, false), !(!(!vec2<bool>(var_0.x, var_0.x)))), true | !var_0.x);
    var_2 = vec2<bool>(false, !(!all(vec4<bool>(var_0.x, var_2.x, true, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(862f, -vec4<i32>(~33685i, var_3.b.x, -7752i, 1i));
}

