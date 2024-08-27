struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = ~u_input.a << ((arg_0.a.a.x | (~1u ^ abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 1u, 1u), arg_0.c.a)))) % 32u);
    var_0 = u_input.c;
    var var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(arg_2.c.a, vec3<u32>(4294967295u, u_input.d.x, 1u)), ~0u);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-934f, -191f), vec2<f32>(-1023f, 787f), arg_2.d.x)) + vec2<f32>(-1581f, 477f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1473f)) + -1103f) - _wgslsmith_f_op_f32(-110f + -728f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -159f))))))));
    var_0 = u_input.a;
    return 383f;
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(-205f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-733f, 352f))))), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.d), ~7090u, Struct_1(vec3<u32>(u_input.d.x, u_input.d.x, 34514u)), vec2<bool>(true, true)), Struct_1(reverseBits(vec3<u32>(u_input.d.x, u_input.d.x, 104871u))), Struct_2(Struct_1(vec3<u32>(0u, u_input.d.x, 83682u)), 1u, Struct_1(u_input.d ^ vec3<u32>(u_input.d.x, u_input.d.x, 8652u)), vec2<bool>(true, true)))), 1000f);
    var var_1 = ~(vec3<u32>(u_input.d.x | u_input.d.x, firstTrailingBit(u_input.d.x), ~58804u) << (vec3<u32>(u_input.d.x, u_input.d.x, _wgslsmith_mult_u32(0u, u_input.d.x)) % vec3<u32>(32u))) ^ u_input.d;
    let var_2 = ~(~u_input.d.x);
    var_1 = ~u_input.d;
    var_1 = u_input.d;
    return Struct_2(Struct_1(abs(u_input.d ^ u_input.d) ^ abs(vec3<u32>(var_1.x, 4294967295u, u_input.d.x) & u_input.d)), u_input.d.x, Struct_1(u_input.d), select(vec2<bool>(false, all(vec3<bool>(true, false, false)) | false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = !select(!(!select(vec4<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x, arg_0.d.x), vec4<bool>(arg_0.d.x, arg_0.d.x, arg_2.d.x, true), vec4<bool>(arg_2.d.x, false, arg_0.d.x, arg_0.d.x))), vec4<bool>(true, true, arg_0.d.x, true), any(!(!vec2<bool>(true, arg_0.d.x))));
    let var_1 = true;
    let var_2 = 17331i;
    let var_3 = _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(~var_2, u_input.c, var_2, 1i), ~vec4<i32>(26574i, var_2, -1i, -21088i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0.a.a.x, arg_0.c.a.x, 4294967295u), ~vec4<u32>(u_input.d.x, arg_1.a.x, 81704u, 55158u)) % vec4<u32>(32u))));
    var var_4 = !(!select(-2147483647i <= ~var_2, var_1, !any(var_0.zww)));
    return func_2().c;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(-1i, u_input.a, 2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, firstTrailingBit(-2147483647i), -u_input.a, 1i), vec4<i32>(_wgslsmith_sub_i32(u_input.b, -42133i), u_input.b, u_input.a << (u_input.d.x % 32u), u_input.a)));
    let var_1 = func_4(func_2(), func_2().a, func_2());
    let var_2 = ~(~var_1.a.zx);
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.b, _wgslsmith_div_i32(countOneBits(u_input.b), _wgslsmith_clamp_i32(select(-2147483647i, u_input.b, false), -12790i, firstTrailingBit(28346i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-3478i, -54504i, 60120i)), vec3<i32>(2147483647i, u_input.c, 0i)), -12256i)), countOneBits(max(-countOneBits(vec4<i32>(u_input.b, var_0, u_input.a, u_input.a)), vec4<i32>(2147483647i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-3283i, u_input.b, var_0, -6238i), vec4<i32>(-2220i, 21410i, 4188i, -28160i)), u_input.c))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -576f))), 1209f, 287f, -841f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1143f, 721f)), -570f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1401f * -474f) + -1510f), 1349f, -941f), vec4<f32>(1f, 1f, 1f, 1f))));
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f)))), 1370f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-489f * -463f))), _wgslsmith_f_op_f32(f32(-1f) * -2935f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1388f - -1253f), -351f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -884f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(589f * 1568f), _wgslsmith_f_op_f32(1028f - -2018f))))));
    var var_1 = func_1();
    var var_2 = func_2();
    var var_3 = select(select(select(!(!vec4<bool>(var_2.d.x, var_2.d.x, true, var_2.d.x)), !select(vec4<bool>(var_2.d.x, false, false, var_2.d.x), vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x), var_2.d.x), any(!vec3<bool>(var_2.d.x, true, false))), vec4<bool>(var_2.d.x, true, !(!var_2.d.x), any(select(vec4<bool>(var_2.d.x, false, var_2.d.x, var_2.d.x), vec4<bool>(var_2.d.x, false, false, true), vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x)))), !select(select(vec4<bool>(true, var_2.d.x, true, true), vec4<bool>(var_2.d.x, var_2.d.x, true, true), var_2.d.x), vec4<bool>(var_2.d.x, true, false, false), all(vec2<bool>(var_2.d.x, var_2.d.x)))), !vec4<bool>(true, var_2.d.x, any(vec4<bool>(true, var_2.d.x, var_2.d.x, var_2.d.x)), var_2.d.x), vec4<bool>(all(vec3<bool>(true, var_2.d.x, any(var_2.d))), !(var_2.d.x & (0u <= var_1.a.x)), true & !(var_2.d.x & var_2.d.x), u_input.a <= firstLeadingBit(~0i)));
    var var_4 = ~(-10808i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(u_input.a, reverseBits(select(1i, -23341i, var_2.d.x))), -(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, -1i, u_input.c), vec4<i32>(u_input.c, u_input.b, u_input.b, -11061i)) ^ _wgslsmith_clamp_i32(-14932i, u_input.c, 1i)), ~(~2147483647i), ~(~_wgslsmith_div_i32(12760i, 5783i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2315f, 1f, all(var_3.yx) & true))), _wgslsmith_div_u32(u_input.d.x, ~37543u), abs(2147483647i));
}

