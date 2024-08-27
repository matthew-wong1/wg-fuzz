struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(u_input.a, 4294967295u)), ~vec2<u32>(u_input.a, _wgslsmith_mod_u32(22425u, u_input.c))));
    return vec4<bool>(!(!(!select(arg_1.a.x, arg_1.a.x, true))), any(!vec3<bool>(false, !arg_1.a.x, arg_1.a.x & false)), false, arg_1.a.x);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(325f, -213f) * -118f))));
    let var_1 = Struct_1(!func_3(vec4<f32>(_wgslsmith_f_op_f32(step(-2810f, -155f)), _wgslsmith_f_op_f32(f32(-1f) * -1297f), -165f, -276f), Struct_1(vec4<bool>(true, true, true, true))));
    var var_2 = vec4<bool>(all(select(vec3<bool>(var_1.a.x, var_1.a.x & true, var_1.a.x && true), !func_3(vec4<f32>(1000f, -1000f, -463f, 542f), Struct_1(var_1.a)).yyw, select(!var_1.a.zzw, vec3<bool>(true, var_1.a.x, var_1.a.x), select(var_1.a.zyw, vec3<bool>(true, var_1.a.x, var_1.a.x), var_1.a.x)))), true, _wgslsmith_mult_u32(select(0u, 1u, false), u_input.c >> (u_input.a % 32u)) <= min(~max(u_input.a, u_input.a), firstLeadingBit(37990u)), var_1.a.x);
    var var_3 = ~u_input.b;
    var var_4 = vec2<f32>(-436f, 1155f);
    return _wgslsmith_f_op_f32(-var_4.x) != var_4.x;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32) -> vec2<bool> {
    let var_0 = func_2();
    var var_1 = var_0;
    return vec2<bool>(select(~_wgslsmith_mod_u32(19310u, arg_1) > _wgslsmith_add_u32(~64143u, 1u), all(!vec3<bool>(false, var_0, false)), true), func_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1459f) + _wgslsmith_f_op_f32(round(-2389f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(711f, 354f, var_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-818f, -656f)), _wgslsmith_f_op_f32(209f - -197f))), _wgslsmith_div_f32(-1231f, -812f)), Struct_1(vec4<bool>(true, func_2(), any(vec2<bool>(true, var_0)), true))).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), func_1(u_input.c, u_input.c, u_input.b), false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), all(vec2<bool>(true, true))), !func_1(45469u, u_input.c, u_input.b), vec2<bool>(true, true)), func_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(23383u, u_input.c)), u_input.a, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b, 10310i, 21395i), -u_input.b)).x);
    var var_1 = -2147483647i;
    var var_2 = !(!vec3<bool>(var_0.x, all(var_0), select(var_0.x, false && var_0.x, all(vec2<bool>(var_0.x, false)))));
    let var_3 = var_2.x;
    var_1 = -u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -738f, _wgslsmith_f_op_f32(-3368f + -602f))), vec3<f32>(_wgslsmith_f_op_f32(-1442f - 1272f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1514f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(605f, 603f)), -165f, var_2.x)))), vec4<i32>(-508i, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(2147483647i, 4428i)), reverseBits(select(vec2<i32>(u_input.d, u_input.b), vec2<i32>(17943i, u_input.d), var_2.xx))), firstLeadingBit(4430i), -u_input.d >> (_wgslsmith_add_u32(4294967295u, ~u_input.a) % 32u)), firstTrailingBit(~(-685i)) << (u_input.a % 32u), 448f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(533f, -368f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -361f), -1983f))));
}

