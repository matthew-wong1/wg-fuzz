struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let var_1 = Struct_1(!vec2<bool>(var_0.a.x, var_0.a.x));
    let var_2 = firstTrailingBit(vec4<u32>(0u, ~(~4294967295u), ~abs(8936u), ~0u)) << (vec4<u32>(arg_0.x, _wgslsmith_mod_u32(arg_0.x, _wgslsmith_clamp_u32(~arg_0.x, u_input.b.x | 70152u, ~97673u)), 42663u | arg_0.x, max(_wgslsmith_dot_vec2_u32(arg_0.xx, vec2<u32>(arg_0.x, 1u)) ^ _wgslsmith_mod_u32(9941u, 10815u), 0u)) % vec4<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-284f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(855f)), _wgslsmith_f_op_f32(step(-1119f, -441f)), true))) + -1697f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f)))))) * _wgslsmith_f_op_f32(trunc(1f))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f) - var_3);
    return any(!select(select(vec4<bool>(var_0.a.x, true, true, false), !vec4<bool>(false, var_0.a.x, true, true), true), select(!vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_1.a.x, false), all(vec2<bool>(false, false))), select(vec4<bool>(var_1.a.x, true, var_0.a.x, var_0.a.x), !vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x), !vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x))));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_1(vec2<bool>(true && func_3(u_input.b.www), true));
    var_0 = Struct_1(vec2<bool>(false, func_3(u_input.b.zxw)));
    var var_1 = Struct_1(!var_0.a);
    let var_2 = firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -arg_0.x, _wgslsmith_dot_vec2_i32(abs(arg_0.wx), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 16840i), vec2<i32>(0i, arg_0.x)))), _wgslsmith_mod_i32(1i, 20215i), reverseBits(1i), -1i ^ min(arg_0.x, arg_0.x)));
    var_1 = Struct_1(!vec2<bool>(var_1.a.x, all(select(vec2<bool>(true, var_0.a.x), vec2<bool>(var_0.a.x, true), true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(311f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 556f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-203f * -527f), -1142f))));
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_1(!select(vec2<bool>(false, select(false, true, false)), vec2<bool>(true, true), true));
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(23336i, _wgslsmith_sub_i32(u_input.a, -u_input.a), -_wgslsmith_mod_i32(1i, u_input.a), _wgslsmith_mod_i32(u_input.a, u_input.a)))));
    var_0 = Struct_1(select(select(vec2<bool>(any(vec3<bool>(true, var_0.a.x, var_0.a.x)), !var_0.a.x), vec2<bool>(select(var_0.a.x, var_0.a.x, false), var_0.a.x), select(var_0.a, vec2<bool>(var_0.a.x, var_0.a.x), false)), vec2<bool>(all(select(vec3<bool>(true, var_0.a.x, false), vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x))), true), select(~0i, -36111i, any(vec3<bool>(true, true, true))) == u_input.a));
    return _wgslsmith_div_vec4_i32(max(_wgslsmith_sub_vec4_i32(vec4<i32>(12264i, u_input.a, 1i, u_input.a) | vec4<i32>(u_input.a, -50504i, 1i, -1i), ~select(vec4<i32>(u_input.a, u_input.a, 0i, -1i), vec4<i32>(-1i, 13792i, u_input.a, -30094i), var_0.a.x)), ~(~firstLeadingBit(vec4<i32>(u_input.a, -93652i, u_input.a, -2517i)))), -_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), -reverseBits(vec4<i32>(u_input.a, u_input.a, 2147483647i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!vec2<bool>(select(true, true, true), all(vec3<bool>(false, true, false))));
    var_0 = Struct_1(vec2<bool>(var_0.a.x, (var_0.a.x & true) || (u_input.b.x < ~u_input.b.x)));
    var var_1 = 388f;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -613f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(reverseBits(u_input.a), -9714i, abs(~u_input.a)) ^ vec3<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a) ^ ~u_input.a, (u_input.a ^ -1i) ^ firstTrailingBit(u_input.a), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a, 1i), _wgslsmith_mult_i32(0i, 2147483647i))), -countOneBits(vec3<i32>(u_input.a, u_input.a, 8190i) << (u_input.b.yyx % vec3<u32>(32u))), 1f, _wgslsmith_mod_vec4_i32(~abs(~vec4<i32>(-2147483647i, 2147483647i, u_input.a, u_input.a)), -firstLeadingBit(vec4<i32>(-1i, u_input.a, u_input.a, -1i)) | (vec4<i32>(-44425i, 1i, u_input.a, u_input.a) | func_1())), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(342f)) * 1227f) - -2111f), -1000f));
}

