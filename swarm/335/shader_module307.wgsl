struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_mult_i32(max(1i, u_input.c), ~(-1i));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(790f, -702f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(416f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(3460f, -1044f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(359f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-996f, -710f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1638f)))), -1062f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-188f * 475f))))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-143f, _wgslsmith_f_op_f32(f32(-1f) * -1493f))))), 1000f, 364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(836f + -127f)))));
    var_1 = var_2.x;
    var_1 = _wgslsmith_div_f32(var_2.x, var_2.x);
    return -vec3<i32>(-abs(1i), abs(reverseBits(~0i)), abs(-_wgslsmith_div_i32(2147483647i, u_input.c)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(3158f, -2411f)), -548f)));
    let var_1 = 62024u;
    var var_2 = _wgslsmith_mod_vec3_i32(~(-func_3()), vec3<i32>(-1i, -8312i, -2147483647i));
    let var_3 = 346f;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_3)), 816f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, _wgslsmith_f_op_f32(abs(var_3)), var_0, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_0)))), var_1, _wgslsmith_f_op_f32(min(var_0, var_0)), 1u);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 1000f, 415f, -823f) - vec4<f32>(1523f, -656f, var_4.a, var_3)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1650f, 778f, -238f, var_3)))))))), abs(var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 + var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1870f, var_0))), false))), ~reverseBits(33066u));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_u32(arg_1.e, _wgslsmith_dot_vec3_u32(firstLeadingBit(~select(vec3<u32>(u_input.b, 18457u, 45468u), vec3<u32>(91280u, arg_1.e, 28702u), arg_2)), vec3<u32>(0u, 43607u, 1u & ~arg_1.c)));
    return select(vec4<bool>(!(!(true | arg_2)), any(!vec3<bool>(arg_2, arg_2, arg_2)) != true, all(vec4<bool>(true, arg_2, true, all(vec3<bool>(arg_2, arg_2, true)))), arg_2), select(vec4<bool>(any(!vec3<bool>(true, arg_2, arg_2)), arg_2, false, all(!vec4<bool>(false, arg_2, true, true))), !(!vec4<bool>(arg_2, arg_2, false, arg_2)), false), arg_2);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> vec2<bool> {
    var var_0 = !select(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1411f, arg_1, -1000f)), vec4<f32>(1000f, arg_1, -1624f, 963f)), func_2(~69348u), false, abs(vec3<i32>(-2147483647i, 0i, 2147483647i)) << (reverseBits(vec3<u32>(u_input.b, u_input.a, u_input.b)) % vec3<u32>(32u))), vec4<bool>(true, _wgslsmith_f_op_f32(-arg_1) != arg_1, all(arg_0), !arg_0.x), true);
    return vec2<bool>(false, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 307f;
    var var_1 = !(!select(vec2<bool>(true, u_input.c < u_input.c), vec2<bool>(select(true, true, true), false), vec2<bool>(any(vec4<bool>(true, true, true, false)), false)));
    let var_2 = ~(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.c), u_input.c << (reverseBits(u_input.a) % 32u), -_wgslsmith_add_i32(43937i, 1i), ~(-94365i)) & -vec4<i32>(33420i, firstTrailingBit(-2147483647i), u_input.c ^ u_input.c, -u_input.c));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(491f))), var_0), vec2<f32>(-125f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0))))), select(!select(vec2<bool>(var_1.x, var_1.x), !vec2<bool>(var_1.x, true), select(vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x), var_1.x)), func_1(select(!vec3<bool>(var_1.x, false, true), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, false, var_1.x), var_1.x), any(vec2<bool>(false, var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -2418f)), any(select(!vec2<bool>(var_1.x, false), select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.x), var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-1i, -26301i, -2147483647i, 14321i)), _wgslsmith_mod_vec4_i32(vec4<i32>(1532i, u_input.c, 2147483647i, u_input.c), vec4<i32>(var_2.x, var_2.x, -29934i, 1i))) ^ ~vec4<i32>(24254i, -22583i, u_input.c, u_input.c)));
}

