struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    var var_0 = Struct_2(any(vec3<bool>(true, u_input.a.x <= max(1u, u_input.a.x), false)), Struct_1(4294967295u));
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(_wgslsmith_add_i32(2147483647i, 0i), min(-1i, u_input.b.x))), vec2<i32>(-1886i, 7191i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i) | vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_i32(~0i, ~15548i, countOneBits(u_input.b.x))), -countOneBits(_wgslsmith_sub_vec2_i32(u_input.b, u_input.b)), u_input.b));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1539f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1418f, -192f)))))));
    let var_3 = Struct_2(true, Struct_1(_wgslsmith_mod_u32(var_0.b.a, _wgslsmith_dot_vec3_u32(u_input.a.xxz, vec3<u32>(var_0.b.a, u_input.a.x, u_input.a.x))) << (var_0.b.a % 32u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(1068f, 687f)), _wgslsmith_div_f32(-990f, 757f), _wgslsmith_f_op_f32(f32(-1f) * -1054f), _wgslsmith_div_f32(-1000f, -373f)), vec4<f32>(_wgslsmith_f_op_f32(1188f + 1578f), _wgslsmith_f_op_f32(sign(1598f)), _wgslsmith_f_op_f32(sign(-1195f)), -1134f)))))));
    return any(!vec4<bool>(!select(true, var_3.a, var_3.a), !(-305f > var_4.x), false, !any(vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: bool) -> bool {
    let var_0 = -1166f;
    let var_1 = firstLeadingBit(2147483647i);
    let var_2 = _wgslsmith_dot_vec2_u32(arg_2, vec2<u32>((~u_input.a.x << (_wgslsmith_mod_u32(arg_2.x, u_input.a.x) % 32u)) << (_wgslsmith_add_u32(0u, abs(1u)) % 32u), _wgslsmith_add_u32(arg_2.x, select(arg_0.a, 0u, true))));
    var var_3 = Struct_1(var_2);
    var var_4 = true;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: vec3<i32>) -> i32 {
    var var_0 = func_4(arg_0.b, Struct_2(!arg_0.a, Struct_1(u_input.a.x)), u_input.a.xx, select(arg_2 != arg_3.x, func_3(), true));
    return _wgslsmith_mod_i32(u_input.b.x, arg_3.x);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = any(select(vec2<bool>(false, false & (9401u >= u_input.a.x)), vec2<bool>((arg_0.a < 4294967295u) | (13976i > u_input.b.x), all(vec2<bool>(true, true))), vec2<bool>(true, true)));
    var var_1 = !vec3<bool>(any(vec3<bool>(true, true, true)), true | (countOneBits(69785u) > countOneBits(arg_0.a)), any(vec2<bool>(false, true)));
    var var_2 = min(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, -1i), u_input.b), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(max(u_input.b.x, u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), func_2(Struct_2(var_1.x, arg_0), u_input.a.x & 1u, u_input.b.x, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -1i, u_input.b.x), vec3<i32>(-2147483647i, -2958i, 2147483647i)))), 0i));
    var_2 = u_input.b | (countOneBits(vec2<i32>(u_input.b.x, var_2.x) & _wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(var_2.x, 44341i), u_input.b)) >> (vec2<u32>(30112u, u_input.a.x) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-543f - -572f))), 480f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1427f, 1000f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-636f, -1126f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1408f, 1212f), vec2<f32>(1000f, -626f)))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(538f * _wgslsmith_f_op_f32(round(var_3.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_3.x)), var_3.x)) + -673f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 61632i;
    var var_1 = _wgslsmith_sub_u32(~_wgslsmith_mult_u32(~firstLeadingBit(59541u), (41969u >> (u_input.a.x % 32u)) | 6919u), 0u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1707f), _wgslsmith_f_op_f32(f32(-1f) * -1502f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(494f * -266f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.a.x)))))));
    let var_3 = -u_input.b.x;
    let var_4 = u_input.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_div_u32(var_4.x, 1u)), _wgslsmith_add_i32(var_3 ^ var_3, var_3), max(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i) << (u_input.a.xz % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_3, var_3), vec2<i32>(-1i, u_input.b.x))) << (var_4 % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_i32(~vec2<i32>(var_3, var_3), min(vec2<i32>(u_input.b.x, var_3), u_input.b))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(299f)))));
}

