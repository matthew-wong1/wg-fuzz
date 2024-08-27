struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2197f, 1000f), vec2<f32>(2111f, 1115f))) * vec2<f32>(405f, 787f)))));
    let var_1 = vec4<bool>(var_0.x == _wgslsmith_f_op_f32(-var_0.x), !arg_0, -718f > var_0.x, true);
    var var_2 = Struct_2(u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, 304f))), -694f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, 1339f)), _wgslsmith_f_op_f32(select(-819f, var_0.x, var_1.x)), var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))));
    let var_3 = Struct_2(u_input.b, vec4<f32>(_wgslsmith_f_op_f32(select(-919f, var_0.x, _wgslsmith_clamp_i32(u_input.c.x, 2147483647i, u_input.c.x) == (u_input.e & u_input.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-854f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(320f * var_2.b.x)) - _wgslsmith_div_f32(-1496f, _wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))))));
    let var_4 = ~_wgslsmith_sub_i32(-44685i, 1i);
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.b.x + -1635f), 194f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1423f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.x + 151f), 1040f), _wgslsmith_f_op_f32(round(var_3.b.x)), 1067f)));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) || !any(vec3<bool>(true, true, true))));
    let var_1 = -min(vec2<i32>(-abs(1i), _wgslsmith_add_i32(-37854i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 0i, 2147483647i), vec3<i32>(u_input.e, u_input.d.x, u_input.d.x)))), vec2<i32>(~u_input.e, -firstLeadingBit(-22094i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(func_3(false));
    let var_3 = Struct_1(true && (var_1.x == (-2147483647i >> ((u_input.b | 52275u) % 32u))), ~u_input.b, vec3<bool>(true, -1251f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + 1000f), (countOneBits(65285u) > u_input.b) & (var_1.x > ~u_input.d.x)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(803f + -1105f), var_0.x, var_2.x, -323f))));
    return -var_1.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: i32) -> vec4<i32> {
    var var_0 = vec3<bool>(arg_0.x >= _wgslsmith_sub_u32(60700u & arg_0.x, 33933u), arg_1.x, any(arg_1.yww));
    let var_1 = vec3<i32>(~_wgslsmith_mult_i32(-(i32(-1i) * -2154i), u_input.c.x), -min(func_2(), ~abs(264i)), firstLeadingBit(_wgslsmith_mod_i32(495i, -34752i)) ^ u_input.c.x);
    var var_2 = true;
    let var_3 = Struct_2(reverseBits(1u), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(false)).x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(407f - 1382f)), 2486f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1454f)) * _wgslsmith_f_op_f32(900f - 1282f)) - _wgslsmith_f_op_f32(f32(-1f) * -2757f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1822f))))));
    var var_4 = var_3.a;
    return -vec4<i32>(_wgslsmith_sub_i32(~arg_2, -(~u_input.d.x)), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2), vec2<i32>(-1i, -1i)) >> (_wgslsmith_sub_u32(min(4402u, 1303u), abs(u_input.b)) % 32u), firstTrailingBit(arg_2), countOneBits(~1i));
}

fn func_4(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 24207u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 8699u, u_input.b), vec4<u32>(22125u, 0u, u_input.a.x, 0u)) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), vec4<u32>(u_input.b, 65258u, u_input.b, 19617u))), ~vec4<u32>(abs(u_input.a.x), ~0u, 43236u, ~u_input.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(277f, -583f, -1000f, 532f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-169f, 930f, 1151f, -1115f)))))))));
    let var_1 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(1u), 1u, _wgslsmith_div_u32(u_input.b, u_input.a.x)), ~vec3<u32>(4294967295u, 84839u, 8566u)), vec4<bool>(true, true, (u_input.a.x << (4294967295u % 32u)) > (1u ^ u_input.a.x), any(vec3<bool>(true, true, true))), ~(u_input.c.x ^ 2147483647i)));
    var_0 = func_4(-abs(-max(vec4<i32>(-1i, 67177i, 33031i, u_input.e), vec4<i32>(u_input.c.x, 14415i, 33623i, u_input.e))));
    var_0 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(u_input.a), abs(vec2<u32>(var_0.a, 4294967295u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, 0u), vec2<u32>(66648u, var_0.a))), ~(~vec2<u32>(1u, 8389u))) >> (_wgslsmith_mod_u32(var_0.a, ~1u) % 32u), vec4<f32>(_wgslsmith_f_op_f32(step(1f, 764f)), -1410f, -398f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x)))))));
    var var_1 = select(1i, countOneBits(reverseBits(-19719i)), !(~firstTrailingBit(var_0.a) == max(~u_input.b, abs(48655u))));
    var_0 = Struct_2(select(_wgslsmith_add_u32(~_wgslsmith_div_u32(0u, var_0.a), 3328u), _wgslsmith_mod_u32(26245u, ~_wgslsmith_div_u32(var_0.a, 1u)), !any(vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.b, vec4<f32>(var_0.b.x, -237f, -2020f, var_0.b.x), vec4<bool>(true, false, false, false))) - _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(-1529f, 698f, 735f, var_0.b.x))))));
    var var_2 = reverseBits(u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(~(~vec3<u32>(0u, var_0.a, 1u))), vec3<u32>(abs(u_input.a.x) & func_4(vec4<i32>(u_input.d.x, u_input.c.x, u_input.d.x, 830i)).a, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, var_0.a, u_input.b)), ~(~u_input.a.x))), -(_wgslsmith_mult_vec2_i32(u_input.d, _wgslsmith_mult_vec2_i32(vec2<i32>(-6596i, -1i), vec2<i32>(u_input.d.x, u_input.c.x))) << (vec2<u32>(1u, var_0.a >> (var_0.a % 32u)) % vec2<u32>(32u))), vec3<u32>(var_0.a, reverseBits(~u_input.b), ~0u >> (_wgslsmith_div_u32(1u, u_input.b) % 32u)), abs(vec3<u32>(_wgslsmith_div_u32(43337u, 1u), 23562u, u_input.b) & ~vec3<u32>(4294967295u, 0u, var_0.a)), func_1(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(47639u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.b, 0u, u_input.a.x))), select(vec4<bool>(all(vec3<bool>(false, false, true)), true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), u_input.c.x).x);
}

