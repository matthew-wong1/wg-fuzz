struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = Struct_1(~(~_wgslsmith_add_u32(~4294967295u, ~4294967295u)), ~min(_wgslsmith_mod_i32(-31361i, _wgslsmith_div_i32(2147483647i, 56355i)), u_input.c));
    let var_1 = Struct_1(min(var_0.a, ~(var_0.a ^ 1u) & _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, 144035u, 38339u), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a, 1u, 4294967295u), vec3<u32>(var_0.a, 1u, var_0.a)))), min(firstTrailingBit(u_input.d.x), 13396i));
    var var_2 = !vec3<bool>(!any(vec2<bool>(true, false)) || true, arg_0.x != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(arg_0.x))), true);
    let var_3 = !select(vec3<bool>(all(vec3<bool>(var_2.x, var_2.x, var_2.x)), select(var_2.x, true, any(vec2<bool>(false, true))), all(!var_2.yz)), select(vec3<bool>(select(true, false, var_2.x), !var_2.x, !var_2.x), select(!vec3<bool>(true, var_2.x, var_2.x), !vec3<bool>(var_2.x, false, true), var_2.x), var_2.x & var_2.x), select(vec3<bool>(var_2.x, all(vec3<bool>(var_2.x, false, var_2.x)), true), !(!vec3<bool>(false, var_2.x, false)), var_2.x));
    let var_4 = var_3.yy;
    return reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(min(4294967295u, 0u), firstTrailingBit(var_0.a)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_1.a), vec2<u32>(var_1.a, 1u))));
}

fn func_2() -> vec3<bool> {
    let var_0 = 1u < _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 18551u, 23572u))), _wgslsmith_mod_u32(~25379u, ~7260u), ~(~1u)), vec3<u32>(1u, 1u, 1u));
    var var_1 = u_input.a;
    let var_2 = ~vec4<u32>(14379u, select(_wgslsmith_mult_u32(func_3(vec4<f32>(421f, -174f, 607f, 173f)), 0u), ~21011u, all(vec2<bool>(false, false))), abs(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(67370u, 443u, 42111u)), select(vec3<u32>(0u, 94994u, 4294967295u), vec3<u32>(0u, 50097u, 81052u), vec3<bool>(true, var_0, var_0)))), 1u);
    let var_3 = ~var_2.x;
    var_1 = vec3<i32>(firstLeadingBit(u_input.a.x >> (var_3 % 32u)), 1i, 24732i);
    return select(!vec3<bool>(var_0, true, var_0), vec3<bool>(false, any(vec2<bool>(!var_0, var_0)), select(true, _wgslsmith_sub_u32(var_3, var_2.x) <= 66299u, true)), !(!(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, false)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = select(!(!(!(!vec2<bool>(arg_1, arg_1)))), vec2<bool>(any(!vec4<bool>(true, false, true, arg_1)), any(!select(vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(arg_1, false, true, true), vec4<bool>(arg_1, true, false, true)))), any(func_2()));
    var var_1 = Struct_1(abs(arg_0.a), 50223i);
    var_1 = Struct_1(~var_1.a, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-11272i >> (var_1.a % 32u), -u_input.a.x, abs(0i)), u_input.a), _wgslsmith_mod_i32(countOneBits(arg_0.b) & 1i, ~var_1.b)));
    var_1 = arg_0;
    let var_2 = 3045i;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_mult_u32(39757u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(reverseBits(1760u), ~4294967295u), 0u)), _wgslsmith_sub_u32(min(~4294967295u, ~func_1(Struct_1(49898u, -25153i), false)), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), ~1u), 1u)));
    var var_1 = Struct_1(80292u, u_input.b ^ _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b, u_input.a.x), _wgslsmith_add_vec2_i32(~vec2<i32>(-21717i, u_input.b), reverseBits(vec2<i32>(u_input.b, 2147483647i)))));
    var_1 = Struct_1(~(~var_1.a >> (~1u % 32u)), 1i);
    var_1 = Struct_1(var_1.a, 45737i);
    let var_2 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(~(-64926i ^ var_1.b), countOneBits(max(-2147483647i, var_1.b)), firstTrailingBit(u_input.d.x ^ 0i), -var_1.b | ~2147483647i), ~vec4<i32>(18927i, -1i, -18825i, -u_input.a.x)));
    var_0 = 0u & _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 4294967295u), vec2<u32>(~7128u, 1u));
    var_0 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(reverseBits(~_wgslsmith_sub_u32(11302u, var_1.a)), select(var_1.a, ~var_1.a, false) & _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.a, var_1.a), vec3<u32>(var_1.a, var_1.a, 11019u))), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(~4294967295u, var_1.a)), ~vec2<u32>(~22343u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1.a, 1u), vec3<u32>(var_1.a, 25930u, var_1.a)) >> (vec3<u32>(41722u, var_1.a, 27993u) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a ^ var_1.a, abs(var_1.a), var_1.a << (var_1.a % 32u)), vec3<u32>(var_1.a, var_1.a, var_1.a) << (select(vec3<u32>(var_1.a, var_1.a, 4294967295u), vec3<u32>(var_1.a, var_1.a, var_1.a), false) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a, 1u, 25045u), vec3<u32>(var_1.a, 26869u, var_1.a))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-981f + -1652f), _wgslsmith_f_op_f32(step(-2201f, 1000f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(255f, -1526f), vec2<f32>(-1000f, -643f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(693f, 1474f))))))), var_2.x);
}

