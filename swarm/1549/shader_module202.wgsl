struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mod_i32(~1i, 1i);
    var_0 = -(~u_input.b) << (~select(1u, _wgslsmith_sub_u32(u_input.a, u_input.d.x) ^ u_input.d.x, true) % 32u);
    let var_1 = u_input.d.x;
    var_0 = _wgslsmith_mult_i32(u_input.c, _wgslsmith_mod_i32(-arg_2.a, 5827i));
    var_0 = arg_2.a;
    return _wgslsmith_f_op_f32(min(366f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)) - arg_1)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    var var_0 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(-arg_0.a));
    let var_1 = arg_3.wx;
    var_0 = arg_0.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1155f, arg_2))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -342f), true)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-arg_0.c.b), -418f);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-891f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - arg_0.c.b))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(511f)), _wgslsmith_f_op_f32(select(1397f, 1593f, true)))), _wgslsmith_f_op_f32(func_4(Struct_2(-2372f, vec2<u32>(u_input.d.x, 48041u), Struct_1(2147483647i, -1145f), vec3<bool>(false, false, true), Struct_1(u_input.b, -1043f)), vec2<bool>(true, true), _wgslsmith_f_op_f32(func_3(vec2<f32>(-861f, -1000f), 443f, Struct_1(u_input.c, 1021f))), vec4<i32>(u_input.c, 2592i, 49629i, u_input.c)))), -729f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -977f))))))));
    var var_1 = true;
    var var_2 = Struct_4(Struct_1(-1i, _wgslsmith_f_op_f32(round(1780f))));
    let var_3 = Struct_3(var_2.a.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(959f * var_2.a.b) * -188f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.a.b * -1044f)))), var_2.a.b, 984f, -2455f), var_2.a, 1i);
    var var_4 = var_3;
    return Struct_1(var_4.c.a, var_2.a.b);
}

fn func_1(arg_0: f32) -> vec3<f32> {
    let var_0 = Struct_4(func_2());
    var var_1 = ~min(_wgslsmith_add_u32(u_input.a, ~u_input.d.x), abs(reverseBits(u_input.d.x)));
    var var_2 = false;
    var_2 = all(select(!vec2<bool>(select(true, false, true), select(false, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec4<bool>(true, true, true, true))), false));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(arg_0 * var_0.a.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1300f, _wgslsmith_f_op_f32(floor(508f)), _wgslsmith_f_op_f32(var_0.a.b - arg_0), -1669f))), Struct_1(var_0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -1332f)), arg_0)), ~reverseBits(~(-31173i)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b.wzy)), var_3.b.zyy) * var_3.b.xzy);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> StorageBuffer {
    var var_0 = ~_wgslsmith_div_u32(u_input.d.x, 0u);
    var_0 = _wgslsmith_dot_vec2_u32(firstTrailingBit(~select(~vec2<u32>(4685u, u_input.d.x), _wgslsmith_mod_vec2_u32(u_input.d, u_input.d), true)), _wgslsmith_mult_vec2_u32(~(~(vec2<u32>(79039u, 56122u) >> (vec2<u32>(98945u, u_input.a) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(19145u, u_input.d.x)), u_input.d, max(vec2<u32>(42476u, 0u), vec2<u32>(u_input.a, u_input.a))) | vec2<u32>(1u, 0u)));
    let var_1 = 1934f;
    var_0 = u_input.d.x;
    let var_2 = u_input.d.x;
    return StorageBuffer(_wgslsmith_sub_vec2_i32(arg_0, _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(24237i, arg_1.x) | vec2<i32>(0i, arg_0.x)), vec2<i32>(-1i, arg_1.x) ^ _wgslsmith_div_vec2_i32(arg_0, arg_0))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 39624i, -45755i, arg_0.x), abs(vec4<i32>(u_input.c, arg_1.x, arg_1.x, -831i))), _wgslsmith_add_i32(~arg_0.x, abs(arg_1.x))), vec2<i32>(arg_0.x, u_input.c)), firstLeadingBit(-2147483647i), -27327i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(abs(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(1i, u_input.c, u_input.b)), firstLeadingBit(vec3<i32>(-42991i, 0i, u_input.b))), ~u_input.b)), vec3<i32>(~(~min(0i, u_input.b)), ~firstTrailingBit(i32(-1i) * -1i), _wgslsmith_mod_i32(firstLeadingBit(u_input.b), u_input.c >> (u_input.a % 32u)) << (4294967295u % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-141f, 1000f, 1201f)), _wgslsmith_f_op_vec3_f32(func_1(-111f)))))));
}

