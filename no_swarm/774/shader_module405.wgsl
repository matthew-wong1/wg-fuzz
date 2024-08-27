struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(f32(-1f) * -548f))))));
    let var_1 = Struct_1(1u, select(select(vec3<bool>(false, true, select(false, false, false)), vec3<bool>(true, true, all(vec4<bool>(true, true, true, false))), true), vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true))), true), all(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
    var var_2 = true;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-949f * -1436f), _wgslsmith_div_f32(-1297f, -2977f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1149f), _wgslsmith_f_op_f32(1406f + 1598f)))))));
    var var_3 = Struct_2(var_1, var_1);
    return _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.e.x, 0u), u_input.e), u_input.e), _wgslsmith_div_u32(~0u, var_3.a.a), ~var_1.a, _wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.e.x, var_3.a.a, var_1.a, var_1.a), ~vec4<u32>(var_1.a, 27536u, 0u, 1u)), ~vec4<u32>(var_3.a.a, u_input.e.x, u_input.e.x, 4294967295u))), vec4<u32>(abs(0u), reverseBits(22458u), _wgslsmith_mult_u32(62022u >> (_wgslsmith_clamp_u32(52719u, 0u, 4294967295u) % 32u), ~_wgslsmith_mult_u32(var_3.a.a, var_1.a)), var_3.b.a));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(14422u, vec3<bool>(true, true, true), (~0u == _wgslsmith_clamp_u32(83181u, 1u, 1u)) | true), Struct_1(~u_input.e.x, !vec3<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(false, true, false)), select(false, false, false)), !any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))));
    var var_1 = Struct_4(~vec2<i32>(-u_input.d.x, ~(-u_input.c.x)), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, var_0.a.a, var_0.b.a, var_0.b.a), vec4<u32>(u_input.e.x, 1u, var_0.b.a, 11551u), vec4<u32>(u_input.e.x, u_input.e.x, var_0.b.a, 35970u)))), firstTrailingBit(27659i), Struct_2(var_0.a, var_0.a));
    let var_2 = Struct_4(~firstLeadingBit(_wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(u_input.a.x, -1i)) | -vec2<i32>(14580i, var_1.c)), firstLeadingBit(func_3()), i32(-1i) * -12405i, var_0);
    let var_3 = Struct_4(vec2<i32>(-abs(_wgslsmith_div_i32(1i, var_1.c)), 4479i), vec4<u32>(1u, 1u, _wgslsmith_div_u32(~abs(var_2.b.x), reverseBits(_wgslsmith_sub_u32(4120u, 0u))), var_0.b.a), ~var_2.a.x, Struct_2(var_0.b, var_0.a));
    var_1 = Struct_4(-_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, var_3.a.x), vec2<i32>(var_3.a.x, 2147483647i) | var_2.a), var_1.a, ~countOneBits(vec2<i32>(2147483647i, var_3.a.x))), _wgslsmith_div_vec4_u32(abs(~(~vec4<u32>(57088u, 4294967295u, var_3.d.a.a, var_2.b.x))), var_2.b), -2147483647i, Struct_2(var_0.b, Struct_1(var_3.b.x, !select(vec3<bool>(var_3.d.a.b.x, var_3.d.b.c, var_2.d.a.b.x), var_2.d.a.b, false), false || !var_1.d.b.c)));
    return var_2.d.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>) -> vec4<u32> {
    let var_0 = Struct_2(func_2(), Struct_1(u_input.e.x, func_2().b, !arg_1.x));
    var var_1 = arg_0.x;
    var var_2 = Struct_4(countOneBits(~abs(vec2<i32>(u_input.c.x, u_input.c.x) << (u_input.e % vec2<u32>(32u)))), ~(~(~(vec4<u32>(var_0.a.a, var_0.a.a, u_input.e.x, u_input.e.x) & vec4<u32>(0u, 4294967295u, u_input.e.x, u_input.e.x)))), u_input.d.x, var_0);
    let var_3 = -u_input.a.yyw;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xx));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(~(~vec4<u32>(1u, u_input.e.x, u_input.e.x, 5926u))), _wgslsmith_sub_vec4_u32(func_1(vec3<f32>(817f, -1585f, -1755f), vec3<bool>(false, false, true)) | (vec4<u32>(u_input.e.x, u_input.e.x, 0u, 56600u) | vec4<u32>(0u, u_input.e.x, u_input.e.x, u_input.e.x)), abs(vec4<u32>(43726u, 4294967295u, u_input.e.x, 1u)))), func_3());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(809f, -1341f), _wgslsmith_div_f32(1092f, -736f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(211f - -782f), _wgslsmith_f_op_f32(f32(-1f) * -279f))))), var_1, _wgslsmith_mod_u32(~(~4294967295u), ~select(u_input.e.x, 23875u, false)) << (71105u % 32u));
}

