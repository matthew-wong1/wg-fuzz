struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), true), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true))), vec4<bool>(true, false, false, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true))));
    var var_1 = max(~_wgslsmith_add_u32(0u, ~4294967295u), ~66825u);
    var var_2 = ~(~61822u >> (1u % 32u));
    return var_0.x;
}

fn func_2() -> i32 {
    let var_0 = vec4<bool>(true, select(!(func_3() || true), false, !(any(vec3<bool>(true, true, true)) || true)), all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)))), true);
    let var_1 = abs(~abs(~(~vec2<u32>(0u, 41904u))));
    var var_2 = Struct_1(~(~2181u), vec3<u32>(9531u ^ firstTrailingBit(var_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.x, firstLeadingBit(16453u), 1u), vec3<u32>(~var_1.x, var_1.x, _wgslsmith_sub_u32(39456u, var_1.x))), reverseBits(var_1.x << (var_1.x % 32u))));
    var var_3 = Struct_1(var_2.a ^ select(37263u, ~(~1u), !select(false, false, false)), var_2.b);
    var var_4 = Struct_1(var_1.x, vec3<u32>(24882u, reverseBits(~(var_2.a | var_2.a)), 11726u));
    return abs(1i);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = !vec2<bool>(any(select(arg_0.yy, arg_0.yy, arg_0.yw)), select(!(false != arg_0.x), arg_0.x, all(!arg_0.yyy)));
    let var_1 = func_2();
    var var_2 = Struct_2(_wgslsmith_mult_vec2_u32(~vec2<u32>(abs(41192u), 21690u), vec2<u32>(~_wgslsmith_clamp_u32(4294967295u, 69420u, 0u), max(1u, _wgslsmith_add_u32(4294967295u, 0u)))), vec2<u32>(~21910u, ~abs(_wgslsmith_clamp_u32(41262u, 22434u, 9243u))), ~_wgslsmith_mod_u32(~_wgslsmith_mult_u32(51755u, 0u), 71204u));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~((u_input.a & u_input.a) ^ -13760i) | (u_input.a ^ abs(65122i)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-133f - -643f) - _wgslsmith_f_op_f32(1325f * -535f)), 945f)) + _wgslsmith_f_op_f32(-662f - _wgslsmith_f_op_f32(-266f * _wgslsmith_f_op_f32(f32(-1f) * -234f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1065f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1974f - -1572f) - _wgslsmith_f_op_f32(floor(-819f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-258f, 377f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -780f) - _wgslsmith_div_f32(-390f, 1000f)))), _wgslsmith_div_f32(-1547f, _wgslsmith_f_op_f32(func_1(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true)))));
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~1u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1507u), vec2<u32>(4294967295u, 4294967295u))), 0u), ~vec4<u32>(1u, 1u, 1u, 1u)), ~reverseBits(vec3<u32>(abs(0u), 13783u, _wgslsmith_mult_u32(1u, 0u))));
    var var_3 = Struct_1(~select(51156u, ~0u >> (_wgslsmith_add_u32(var_2.b.x, 1u) % 32u), true), ~var_2.b);
    var var_4 = Struct_1(min(var_3.b.x << (var_3.a % 32u), abs(18744u)), select(~abs(vec3<u32>(60913u, 4294967295u, 16990u) >> (var_3.b % vec3<u32>(32u))), firstLeadingBit(abs(vec3<u32>(var_2.b.x, 37107u, 4294967295u))), true));
    var_4 = Struct_1(countOneBits(_wgslsmith_sub_u32(~var_3.b.x, ~37462u) | _wgslsmith_sub_u32(54085u, var_2.a)), ~_wgslsmith_mult_vec3_u32(~var_2.b, var_4.b));
    let var_5 = true;
    var var_6 = Struct_1(var_4.a, _wgslsmith_clamp_vec3_u32(~var_2.b, var_2.b, var_2.b));
    let var_7 = Struct_2(_wgslsmith_div_vec2_u32(~(var_2.b.zy >> (vec2<u32>(var_2.a, 1u) % vec2<u32>(32u))), ~vec2<u32>(_wgslsmith_mult_u32(var_3.a, 23614u), 0u & var_3.b.x)), ~var_4.b.yz, ~6624u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~select(vec2<i32>(u_input.a, 0i), vec2<i32>(0i, -47367i), false), countOneBits(vec2<i32>(var_0, u_input.a))), reverseBits(var_0)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1 * var_1))), vec2<u32>(24699u, var_6.a) << (vec2<u32>(4294967295u, _wgslsmith_mult_u32(var_7.a.x, 66768u)) % vec2<u32>(32u)));
}

