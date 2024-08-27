struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(arg_0.b, -firstTrailingBit(vec2<i32>(u_input.b.x, u_input.b.x)))), 10175i);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(17157u, 4294967295u), _wgslsmith_mod_vec2_u32(arg_1.yz, ~_wgslsmith_sub_vec2_u32(~arg_1.xx, abs(arg_1.yz))));
    var_2 = _wgslsmith_clamp_vec2_u32((_wgslsmith_add_vec2_u32(min(vec2<u32>(0u, var_2.x), arg_1.yz), select(vec2<u32>(u_input.a, 47191u), arg_1.xy, vec2<bool>(arg_0.a, arg_0.a))) << (_wgslsmith_mod_vec2_u32(select(vec2<u32>(25618u, 0u), arg_1.xy, vec2<bool>(var_1.a, true)), _wgslsmith_mod_vec2_u32(arg_1.yz, vec2<u32>(var_2.x, arg_1.x))) % vec2<u32>(32u))) & vec2<u32>(~u_input.a, var_2.x), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_1.x), arg_1.zx), arg_1.zz) | abs(arg_1.xx), firstTrailingBit(vec2<u32>(u_input.a, var_2.x))), min(arg_1.zy, arg_1.zz));
    var var_3 = Struct_3(vec4<bool>(var_1.a, var_1.a, var_1.a, any(select(!vec2<bool>(false, arg_0.a), select(vec2<bool>(true, true), vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, arg_0.a)), !var_1.a))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-776f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-142f))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f) - 1f) - _wgslsmith_f_op_f32(f32(-1f) * -393f))));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = Struct_1(~vec3<u32>(arg_0, ~u_input.a, arg_0), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -832f)), _wgslsmith_f_op_f32(-1037f + _wgslsmith_f_op_f32(1356f * _wgslsmith_f_op_f32(func_3(Struct_2(true, u_input.b.xz), vec3<u32>(0u, u_input.a, arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -946f), _wgslsmith_f_op_f32(select(-1000f, 1047f, false)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1039f - 1119f) + _wgslsmith_f_op_f32(302f - -322f)))));
    let var_1 = -789f;
    var var_2 = u_input.b;
    var_2 = -_wgslsmith_div_vec3_i32(select(u_input.b, select(u_input.b & u_input.b, vec3<i32>(41633i, var_2.x, u_input.b.x), vec3<bool>(true, true, true)), all(vec4<bool>(true, false, false, false))), u_input.b);
    var_2 = firstTrailingBit(max(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2.x, u_input.c, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(-49354i, 8178i, u_input.c, -2147483647i), vec4<i32>(var_2.x, var_2.x, u_input.c, -21295i))), -42161i, -1i), vec3<i32>(_wgslsmith_mod_i32(var_2.x, var_2.x), -2147483647i, -u_input.c) >> (_wgslsmith_mod_vec3_u32(var_0.a, select(vec3<u32>(arg_0, u_input.a, u_input.a), vec3<u32>(4294967295u, 33662u, u_input.a), true)) % vec3<u32>(32u))));
    return true;
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = Struct_3(select(vec4<bool>(-445f > arg_0.b.x, all(vec3<bool>(false, true, false)), func_2(_wgslsmith_add_u32(13631u, 37147u)), true), vec4<bool>(true, func_2(u_input.a), any(vec2<bool>(false, true)) & true, true), select(true, select(any(vec3<bool>(false, true, false)), any(vec2<bool>(true, false)), true), !all(vec4<bool>(false, true, false, false)))));
    var var_1 = Struct_2(var_0.a.x, u_input.b.zx ^ firstLeadingBit(min(countOneBits(u_input.b.xx), -vec2<i32>(24864i, 0i))));
    let var_2 = !(!vec2<bool>(true, func_2(~u_input.a)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1274f, _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x)))));
    var var_4 = Struct_2(false, vec2<i32>(~_wgslsmith_add_i32(countOneBits(var_1.b.x), i32(-1i) * -2147483647i), _wgslsmith_clamp_i32(select(-89374i, -14501i, !var_0.a.x), var_1.b.x, 2147483647i)));
    return any(vec4<bool>(var_0.a.x & true, true, all(select(!var_0.a, vec4<bool>(var_2.x, false, false, var_0.a.x), var_4.a | var_2.x)), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(true, func_1(Struct_1(vec3<u32>(4294967295u, u_input.a, 10173u), vec4<f32>(-364f, -1695f, -474f, -214f))), true), vec3<bool>(true | all(vec4<bool>(false, false, true, false)), true, u_input.a <= _wgslsmith_sub_u32(u_input.a, u_input.a)), true);
    let var_1 = ~(-2147483647i);
    let var_2 = !any(var_0.zz);
    var_0 = vec3<bool>(!var_2, var_2, any(select(select(!vec4<bool>(false, var_2, var_2, true), vec4<bool>(false, true, var_2, false), !var_0.x), vec4<bool>(u_input.c >= var_1, var_0.x, select(var_0.x, true, var_2), !var_2), vec4<bool>(select(var_2, var_0.x, var_2), true, func_1(Struct_1(vec3<u32>(54716u, u_input.a, 108664u), vec4<f32>(583f, -474f, 132f, 1250f))), true))));
    var_0 = !(!vec3<bool>(false, !(var_2 || var_2), true));
    let var_3 = !(!(!(!(!vec3<bool>(var_2, var_0.x, var_0.x)))));
    var var_4 = _wgslsmith_add_vec3_u32(firstLeadingBit(reverseBits(vec3<u32>(u_input.a, 8409u, u_input.a)) >> (vec3<u32>(36974u, u_input.a, u_input.a) % vec3<u32>(32u))) << (vec3<u32>(4294967295u, 25305u, _wgslsmith_sub_u32(u_input.a, u_input.a)) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, min(u_input.a, 0u), min(4294967295u, 4294967295u)), vec3<u32>(u_input.a, u_input.a, ~160u)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.c), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1742f, 768f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(443f, -1070f))) + vec2<f32>(-502f, 227f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-387f, 501f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(360f, -1784f))))), vec2<u32>(var_4.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(18818u, 36670u, u_input.a), vec3<u32>(24887u, 9187u, 0u))), _wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(~vec3<i32>(1i, var_1, var_1), u_input.b), u_input.b));
}

