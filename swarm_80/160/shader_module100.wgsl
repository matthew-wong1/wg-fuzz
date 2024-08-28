struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-490f)));
    let var_1 = true;
    let var_2 = Struct_1(vec2<u32>(1u, 1u));
    let var_3 = var_2;
    let var_4 = ~min(reverseBits(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(60879u, var_3.a.x, 4294967295u, var_3.a.x), vec4<u32>(0u, var_2.a.x, 74562u, 70357u)), vec4<u32>(var_2.a.x, 1u, var_2.a.x, 0u) | vec4<u32>(30388u, var_2.a.x, 4294967295u, 1u))), vec4<u32>(var_2.a.x, reverseBits(1u), 4294967295u, ~1u) & (~vec4<u32>(var_2.a.x, var_3.a.x, var_2.a.x, 68243u) >> (~vec4<u32>(var_2.a.x, var_3.a.x, 26403u, 0u) % vec4<u32>(32u))));
    return var_2.a;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> vec2<f32> {
    let var_0 = u_input.a.x;
    var var_1 = vec2<i32>(-1i) * -select(abs(abs(u_input.a.zz)), u_input.a.yz, !select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2), true));
    var_1 = abs(u_input.a.yx);
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(5537u, 1u), arg_1.a.x & arg_0));
    var var_3 = vec2<bool>(true, false);
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1329f, -900f))), vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-210f * 1343f)), -1885f)))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-726f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -295f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(455f, -742f) - -260f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1558f)), _wgslsmith_f_op_f32(min(-416f, _wgslsmith_f_op_f32(1000f * -571f))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(~arg_0.a.x, arg_0, arg_0.a.x > 15332u, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.x, 1545u, arg_0.a.x), select(vec3<u32>(arg_0.a.x, 4294967295u, arg_0.a.x), vec3<u32>(0u, 4294967295u, arg_0.a.x), true)))), var_0.zx));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.x, 820f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.x, -258f)))))))));
    var var_2 = arg_0.a.x < (firstLeadingBit(arg_0.a.x) ^ (~_wgslsmith_sub_u32(arg_0.a.x, arg_0.a.x) & ~arg_0.a.x));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1751f, var_1.x, var_0.x) * vec3<f32>(1597f, -264f, 1000f)) - vec3<f32>(727f, var_0.x, var_1.x)) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_div_f32(269f, -2489f))), any(vec2<bool>(true, u_input.b.x < u_input.b.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1048f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(475f, var_0.x, 1000f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-401f, var_0.x, -193f)))))));
    return ~firstTrailingBit(69816u >> ((1u >> (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 22641u) << (func_1() % vec2<u32>(32u))) ^ vec2<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(47847u, 4294967295u, 0u, 1u), vec4<u32>(0u, 32976u, 21142u, 59506u))), _wgslsmith_clamp_u32(func_1().x, 4294967295u, func_2(Struct_1(vec2<u32>(57881u, 0u))))));
    var var_1 = Struct_1(var_0.a);
    var_1 = Struct_1(var_1.a);
    var_1 = Struct_1(vec2<u32>(42222u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.a.x), vec2<u32>(0u, var_1.a.x))) << ((_wgslsmith_mod_vec2_u32(vec2<u32>(36465u, 1u), var_1.a) ^ _wgslsmith_add_vec2_u32(~var_0.a, ~var_1.a)) % vec2<u32>(32u)));
    let var_2 = Struct_1(vec2<u32>(~_wgslsmith_sub_u32(var_0.a.x, var_0.a.x), var_0.a.x) | var_0.a);
    let var_3 = ~var_0.a;
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(abs(~firstLeadingBit(u_input.b.zyw)), countOneBits(vec3<i32>(-1i) * -u_input.b.xwx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(446f, 1000f, -438f)))))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(173f + 1075f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(round(475f)))), _wgslsmith_f_op_f32(-522f + _wgslsmith_f_op_f32(1000f + 592f)))), _wgslsmith_f_op_f32(533f - 521f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_2.a.x, var_2, false, vec3<u32>(var_4.a.x, 1520u, var_3.x))).x), 1164f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-251f * 592f) + -986f), _wgslsmith_f_op_vec2_f32(func_3(100135u, var_2, true, countOneBits(vec3<u32>(var_4.a.x, 29330u, var_3.x)))).x))));
}

