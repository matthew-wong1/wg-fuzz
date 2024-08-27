struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = -1i;
    let var_1 = !all(select(vec4<bool>(true, true, any(vec2<bool>(true, false)), true), vec4<bool>(true, u_input.b > 2147483647i, true, any(vec2<bool>(true, false))), true));
    var var_2 = Struct_2(true, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-764f - -535f), _wgslsmith_f_op_f32(873f * -297f))), 317f))), 21667u);
    let var_3 = abs(_wgslsmith_mult_u32(71461u, abs(u_input.c)) >> ((firstTrailingBit(u_input.c >> (u_input.c % 32u)) & _wgslsmith_clamp_u32(1u, 10169u, ~34597u)) % 32u));
    let var_4 = ~firstLeadingBit(reverseBits(_wgslsmith_mult_vec3_i32(~vec3<i32>(-14050i, var_0, 2147483647i), vec3<i32>(u_input.b, -6884i, u_input.a.x))));
    return var_2.a;
}

fn func_2() -> bool {
    let var_0 = !(!((u_input.a.x >> (~u_input.c % 32u)) != reverseBits(-u_input.a.x)));
    var var_1 = Struct_2(all(vec2<bool>(!func_3(), false)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-349f, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(-831f)), _wgslsmith_f_op_f32(756f + -949f)), !vec2<bool>(false, var_0))))), select(~_wgslsmith_mod_u32(u_input.c, 4294967295u) << (((4294967295u & u_input.c) << (_wgslsmith_sub_u32(4294967295u, 101018u) % 32u)) % 32u), 59974u, var_0));
    var_1 = Struct_2(true, var_1.b, 1u);
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(-var_1.b), 5550u);
    var_1 = Struct_2(!(!select(true, !var_1.a, !var_1.a)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_1.b.x, -1673f)), _wgslsmith_f_op_f32(step(-1000f, 412f)))))), 0u);
    return var_1.a;
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_div_f32(-1112f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -810f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(787f, 592f) - _wgslsmith_f_op_f32(abs(222f)))))));
    var var_1 = Struct_2(!select(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false)), true), vec2<f32>(_wgslsmith_f_op_f32(-1510f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(round(429f)))), 1000f), u_input.c);
    let var_2 = select(vec2<bool>(true, !any(select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, false), var_1.a))), vec2<bool>(_wgslsmith_mult_u32(~u_input.c, var_1.c) == 4294967295u, (func_2() | select(var_1.a, true, false)) || var_1.a), all(!(!vec2<bool>(var_1.a, true))));
    var_1 = Struct_2(func_2() & (var_1.b.x == _wgslsmith_f_op_f32(133f * _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.b + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b.x, var_1.b.x), var_1.b))), vec2<f32>(var_1.b.x, -893f))), ~_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(var_1.c, 25448u, u_input.c)), abs(vec3<u32>(var_1.c, var_1.c, var_1.c))));
    var_1 = Struct_2(!(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, u_input.b), _wgslsmith_mult_i32(-2147483647i, u_input.a.x)) <= u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1224f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(307f)), _wgslsmith_div_f32(var_1.b.x, var_1.b.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b)) - var_1.b)), abs(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, 18052u, 0u, 598u)), select(vec4<u32>(u_input.c, 0u, u_input.c, 2057u) >> (vec4<u32>(var_1.c, 41451u, 1u, u_input.c) % vec4<u32>(32u)), vec4<u32>(u_input.c, 8730u, 11795u, u_input.c) << (vec4<u32>(4294967295u, 0u, 0u, 4294967295u) % vec4<u32>(32u)), vec4<bool>(false, var_1.a, true, var_1.a)))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(round(-1000f)), var_1.a)) - _wgslsmith_f_op_f32(f32(-1f) * -1070f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -239f);
    let var_1 = Struct_2(true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(-538f)), 164f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1()))))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2())))), 0u);
    let var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1020f, var_1.b.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.x))), _wgslsmith_f_op_f32(round(-853f)), _wgslsmith_f_op_f32(max(var_0, var_0))))));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(-var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~(vec2<i32>(var_2, 0i) >> (vec2<u32>(61630u, u_input.c) % vec2<u32>(32u))), vec2<i32>(var_2, 0i)), _wgslsmith_div_vec2_i32(u_input.a, u_input.a) << (~countOneBits(vec2<u32>(var_1.c, 1u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(-3768i, var_2)), ~u_input.a))));
}

