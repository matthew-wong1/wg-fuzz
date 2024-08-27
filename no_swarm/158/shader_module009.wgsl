struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_3.d.b)))), -1107f, _wgslsmith_f_op_f32(340f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -411f), 1592f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(671f, _wgslsmith_f_op_f32(exp2(arg_3.c.b)))))) + _wgslsmith_f_op_f32(select(arg_2.b, _wgslsmith_f_op_f32(exp2(1f)), false))));
    global0 = ~20041u;
    var var_1 = ~arg_1;
    let var_2 = -u_input.d.x <= firstTrailingBit(50311i);
    let var_3 = Struct_2(-_wgslsmith_add_vec2_i32(u_input.d.xy & (arg_3.a << (vec2<u32>(33092u, 5211u) % vec2<u32>(32u))), select(~vec2<i32>(8847i, -18185i), u_input.d.yx, vec2<bool>(true, var_2))), ~vec2<u32>(firstTrailingBit(arg_1), arg_0.a), Struct_1((52047u & _wgslsmith_clamp_u32(47738u, 1u, arg_1)) >> (arg_1 % 32u), -284f), Struct_1(4294967295u, arg_0.b));
    return _wgslsmith_sub_vec4_i32(min(vec4<i32>(1i, u_input.c, var_3.a.x, _wgslsmith_clamp_i32(-1i, firstLeadingBit(arg_3.a.x), -7173i)), min(vec4<i32>(41776i, 1i, 6368i, 1i), abs(vec4<i32>(var_3.a.x, var_3.a.x, 0i, -217i))) ^ reverseBits(vec4<i32>(-1i, 0i, arg_3.a.x, var_3.a.x) << (vec4<u32>(51387u, 34727u, 4294967295u, 4294967295u) % vec4<u32>(32u)))), ~_wgslsmith_div_vec4_i32(min(vec4<i32>(-6938i, u_input.d.x, 1i, -2147483647i), vec4<i32>(arg_3.a.x, u_input.d.x, var_3.a.x, -39135i)), vec4<i32>(-18592i, -4460i, -2147483647i, 0i)) | -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(2366i, 0i, var_3.a.x, var_3.a.x), vec4<i32>(u_input.d.x, 21943i, -28268i, -31497i), vec4<i32>(u_input.c, 2147483647i, arg_3.a.x, -1i))));
}

fn func_2() -> f32 {
    var var_0 = firstTrailingBit(vec4<i32>(abs(max(26543i, 1i)), -u_input.d.x, -u_input.c, ~(-13415i)) & ~func_3(Struct_1(u_input.a.x, 1662f), _wgslsmith_clamp_u32(u_input.b, 1u, u_input.b), Struct_1(4294967295u, -753f), Struct_2(vec2<i32>(16088i, 25717i), u_input.a.yx, Struct_1(u_input.b, -1755f), Struct_1(u_input.b, 803f))));
    var var_1 = Struct_2(vec2<i32>(abs(u_input.d.x ^ -2147483647i), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, 0i, u_input.d.x, 1i), vec4<i32>(0i, var_0.x, var_0.x, -1i) & vec4<i32>(u_input.d.x, -3033i, -16663i, -1i))) ^ -abs(max(vec2<i32>(u_input.d.x, -19306i), vec2<i32>(u_input.d.x, u_input.c))), u_input.a.yy, Struct_1(~0u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(337f, _wgslsmith_f_op_f32(f32(-1f) * -680f)))))), Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f))));
    var var_2 = u_input.d.zz;
    let var_3 = 0u == _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(var_1.b.x, var_1.c.a, var_1.d.a, var_1.b.x), vec4<u32>(1u, u_input.b, 23304u, var_1.c.a)), vec4<u32>(~var_1.c.a, countOneBits(0u), _wgslsmith_div_u32(u_input.a.x, 0u), 0u)), abs(4294967295u));
    var var_4 = var_1.d.b;
    return _wgslsmith_f_op_f32(step(var_1.c.b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.b * 1522f) + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.d.b)) + 1f)), 337f, _wgslsmith_f_op_f32(740f + var_1.d.b) >= _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(step(-852f, -1912f))))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(685f + 990f) + -2248f))))));
    var_0 = vec3<bool>(false, !(!(!(arg_2.x != 4294967295u))), !(!(u_input.c >= _wgslsmith_mult_i32(-1i, u_input.c))));
    global0 = u_input.a.x;
    return ~(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, u_input.b ^ u_input.a.x), ~min(u_input.a.x, 71307u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_u32(func_1(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, 8814i), vec4<i32>(u_input.d.x, u_input.c, -9868i, 0i), firstTrailingBit(vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, 1i))), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zy), u_input.a.x, u_input.a.x, ~u_input.b)) << ((_wgslsmith_div_u32(20594u, u_input.a.x) << (0u % 32u)) % 32u), ~_wgslsmith_add_u32(firstTrailingBit(~u_input.a.x), u_input.a.x));
    var var_0 = vec3<i32>(u_input.d.x, u_input.d.x, 47569i);
    let var_1 = Struct_1(countOneBits(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, u_input.b), vec3<u32>(4294967295u, 17036u, u_input.a.x)), u_input.a)), -2192f);
    global0 = var_1.a;
    var_0 = u_input.d;
    var var_2 = Struct_1(abs(firstTrailingBit(~(~0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1445f * var_1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-363f - var_1.b)))))));
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

