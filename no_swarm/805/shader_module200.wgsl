struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: i32) -> i32 {
    var var_0 = vec2<u32>(reverseBits(1u), 1u);
    let var_1 = abs(vec4<u32>(firstTrailingBit(var_0.x), ~firstLeadingBit(var_0.x), ~_wgslsmith_sub_u32(firstTrailingBit(4294967295u), reverseBits(9715u)), ~var_0.x));
    var var_2 = _wgslsmith_div_i32(countOneBits(~_wgslsmith_add_i32(u_input.a.x, arg_2)) & min(firstTrailingBit(~(-1i)), u_input.a.x), max(arg_2, arg_2));
    let var_3 = Struct_1(any(vec2<bool>(any(vec4<bool>(true, true, true, true)), false)), all(vec3<bool>(true, false, !all(vec4<bool>(false, false, true, false)))), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, 2147483647i, -67702i, arg_2), vec4<i32>(-1i, u_input.a.x, -20796i, 26351i)), _wgslsmith_clamp_i32(u_input.a.x, i32(-1i) * -1i, -1i))), 1i & reverseBits(_wgslsmith_dot_vec2_i32(select(u_input.a.yy, vec2<i32>(u_input.a.x, u_input.a.x), true), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2, 35797i), u_input.a.xx, u_input.a.zy))), 0i);
    var var_4 = 1i;
    return 1i;
}

fn func_2(arg_0: vec3<bool>) -> vec3<f32> {
    var var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u) << (vec2<u32>(~abs(70883u), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32(0u, 14118u), ~74125u)) % vec2<u32>(32u)), select(select(abs(vec2<u32>(7769u, 39614u)), vec2<u32>(1u, 1u), vec2<bool>(false, arg_0.x)) & _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 38704u), vec2<u32>(35612u, 1u)), select(vec2<u32>(4294967295u, 42090u), vec2<u32>(4294967295u, 4294967295u), arg_0.x)), vec2<u32>(124675u, 1u), arg_0.xz));
    let var_1 = Struct_1(false, true, -func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), vec2<f32>(_wgslsmith_f_op_f32(665f + -562f), _wgslsmith_f_op_f32(f32(-1f) * -258f)), ~u_input.a.x), firstLeadingBit(-24294i), max(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, -2147483647i), firstTrailingBit(vec2<i32>(u_input.a.x, 1i))), u_input.a.x) << (1u % 32u));
    var_0 = 0u;
    var var_2 = 399f;
    var var_3 = arg_0.zz;
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1039f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1997f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1286f) * _wgslsmith_f_op_f32(abs(-1147f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(973f, -1691f, 204f)))), vec3<f32>(_wgslsmith_f_op_f32(-729f * 1742f), -557f, _wgslsmith_f_op_f32(-761f + -430f)))))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1374f + _wgslsmith_f_op_f32(f32(-1f) * -539f)), -826f, -1340f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(413f, 1572f, -649f)) * _wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(true, true, false))))))));
    let var_1 = Struct_1(true, any(vec2<bool>(true, true)), firstLeadingBit(u_input.a.x) | ~2147483647i, u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, -41013i), -_wgslsmith_mult_i32(-2147483647i, u_input.a.x)), u_input.a.x));
    let var_2 = _wgslsmith_clamp_u32(~firstLeadingBit(1u), 69497u, ~abs(0u));
    var var_3 = ~u_input.a;
    var_3 = max(min(vec3<i32>(-(~(-1i)), -(var_1.c >> (var_2 % 32u)), var_3.x), abs(u_input.a)), countOneBits(u_input.a));
    return firstTrailingBit(_wgslsmith_div_i32(max(~_wgslsmith_div_i32(-56119i, -28792i), -2147483647i), -(i32(-1i) * -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i == _wgslsmith_div_i32(-1i, func_1() ^ -2147483647i);
    let var_1 = Struct_1(54796u >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 29683u, 56950u, 6374u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(15966u, 0u, 4294967295u, 15640u), vec4<u32>(6799u, 21257u, 24309u, 4294967295u), vec4<u32>(4294967295u, 54338u, 24356u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 51020u, 4294967295u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), all(vec2<bool>(true, false)), ~(i32(-1i) * -u_input.a.x), -3789i, abs(~1i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(497f, -2313f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-610f)), _wgslsmith_f_op_f32(1065f * 375f))))));
    let var_3 = u_input.a;
    var_0 = !(!var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(-var_1.e, ~_wgslsmith_dot_vec3_i32(vec3<i32>(54470i, u_input.a.x, 22719i), vec3<i32>(-1i, u_input.a.x, -1i))), var_2, vec3<f32>(-837f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1705f, var_2)))), _wgslsmith_f_op_f32(exp2(var_2))), var_2);
}

