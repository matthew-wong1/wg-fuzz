struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec3<f32> {
    var var_0 = firstTrailingBit(4294967295u);
    let var_1 = Struct_1(-_wgslsmith_add_i32(u_input.e, min(u_input.e, -2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-754f, 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x)), _wgslsmith_div_f32(-327f, -1954f))), -1000f)));
    let var_2 = ~abs(u_input.d & u_input.d);
    let var_3 = vec3<u32>(u_input.c.x, u_input.c.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~u_input.b >> (_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(var_2.x, 0u, 4294967295u, 0u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, var_2.x, var_2.x, 1u), vec4<u32>(1547u, var_2.x, u_input.d.x, u_input.b.x), vec4<u32>(4294967295u, 95124u, 84511u, u_input.c.x) & u_input.b)), 1u));
    var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 83667u), 1u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(floor(arg_0.b.yww)))) + vec3<f32>(-1377f, _wgslsmith_div_f32(1399f, _wgslsmith_div_f32(arg_0.b.x, 201f)), -1900f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec4<u32>, arg_3: i32) -> vec3<f32> {
    let var_0 = ~19677u;
    var var_1 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, true, false)), false, true, any(vec3<bool>(false, false, true))), true), vec4<bool>(_wgslsmith_div_i32(2147483647i, u_input.e) != abs(max(arg_3, arg_3)), arg_0 <= _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, u_input.e, -2147483647i, 1i), vec4<i32>(arg_0, -8275i, -1i, -5006i)), -vec4<i32>(u_input.e, -36846i, -1i, -16663i)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), any(vec2<bool>(true, true))), true);
    let var_2 = _wgslsmith_div_f32(177f, _wgslsmith_f_op_f32(f32(-1f) * -1183f));
    var var_3 = select(vec2<bool>(var_1.x & var_1.x, var_1.x), !(!var_1.yx), true && all(select(vec4<bool>(true, true, var_1.x, false), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, var_1.x, false, var_1.x)), all(vec3<bool>(var_1.x, false, false)))));
    let var_4 = !select(var_3.x && any(select(vec4<bool>(var_3.x, var_1.x, false, false), vec4<bool>(var_3.x, true, false, false), var_3.x)), select(true, var_1.x, all(!vec4<bool>(true, var_1.x, var_3.x, var_3.x))), true);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 1487f, 457f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, var_2, var_2)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, -1179f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(278f, var_2, 408f) + vec3<f32>(var_2, 280f, 1572f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2, _wgslsmith_f_op_f32(737f * var_2), _wgslsmith_f_op_f32(f32(-1f) * -281f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(var_2, -230f)), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(arg_3, vec4<f32>(var_2, var_2, var_2, var_2)), var_3.x)).x, var_2), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, var_2) - vec3<f32>(var_2, var_2, var_2))))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> vec3<f32> {
    let var_0 = Struct_1(u_input.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_1.b, arg_1.b, arg_2)) - arg_1.b))) + arg_1.b));
    let var_1 = Struct_1(var_0.a, var_0.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b.xwy) * vec3<f32>(arg_1.b.x, var_0.b.x, 165f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_f32(-1000f - var_0.b.x), var_0.b.x))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1061f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - -177f) - -721f))), 479f);
    var_2 = arg_1.b.zzw;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(2147483647i, vec4<f32>(arg_1.b.x, -1000f, 1114f, -842f)), arg_2))) - _wgslsmith_f_op_vec3_f32(func_3(arg_1.a, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_3.x, 1u, 0u, arg_3.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(74796u, 1u, 25392u, u_input.d.x), u_input.b, u_input.b), var_0.a >> (u_input.a % 32u)))), var_1.b.ywz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1202f, 634f, -872f, 388f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1263f, 1095f, -337f, -844f))))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xww))) + _wgslsmith_f_op_vec3_f32(func_1(abs(vec2<i32>(~u_input.e, -29201i)), Struct_1(0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(637f, 906f, -408f, var_0.x))))), true, u_input.b)));
    var var_2 = _wgslsmith_div_i32(u_input.e, u_input.e) << (_wgslsmith_add_u32(~8035u, reverseBits(_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(4294967295u, 4294967295u, 45518u, u_input.c.x)))) % 32u);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(666f, var_0.x, 430f, 183f) + vec4<f32>(1500f, 929f, var_0.x, var_1.x))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_1.x), -868f), vec4<f32>(var_1.x, -616f, _wgslsmith_f_op_f32(var_0.x + var_1.x), _wgslsmith_f_op_f32(trunc(var_1.x))))) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x * 432f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(748f - -401f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) * -886f))));
    let var_3 = _wgslsmith_f_op_vec3_f32(func_2(Struct_1(max(0i, firstLeadingBit(-8341i)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1233f, 642f)) * _wgslsmith_f_op_f32(-943f - var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-163f, var_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1331f + -454f))), var_0.x)), !(!(~88037u > ~u_input.b.x)))).yz;
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(max(~var_4 ^ vec4<u32>(var_4.x, u_input.a, 4294967295u, var_4.x), var_4), select(var_4, _wgslsmith_clamp_vec4_u32(~vec4<u32>(30141u, 30862u, 1u, u_input.b.x), var_4, u_input.b), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true))), vec4<bool>(true, true, true, true)), vec2<i32>(u_input.e, ~_wgslsmith_mult_i32(firstLeadingBit(u_input.e), -3683i)));
}

