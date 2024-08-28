struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = !all(vec3<bool>(!all(vec2<bool>(true, true)), !all(vec2<bool>(false, true)), true));
    let var_1 = _wgslsmith_mod_vec4_i32(abs(-select(vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.b.x), vec4<bool>(var_0, false, var_0, var_0)) & ~reverseBits(vec4<i32>(4586i, 2147483647i, u_input.c.x, 2147483647i))), _wgslsmith_mod_vec4_i32(abs(select(vec4<i32>(u_input.b.x, 1i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), true)) >> (~firstLeadingBit(vec4<u32>(u_input.a, 0u, 5960u, 1u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.c.x, u_input.b.x, 41890i, u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1366i, -9070i) & vec4<i32>(2147483647i, u_input.b.x, 0i, u_input.c.x), ~vec4<i32>(-1i, 27049i, u_input.b.x, u_input.c.x)))));
    var var_2 = select(_wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(1u, 5558u, u_input.a)))), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.a, 14440u, u_input.a))))), select(select(~countOneBits(vec3<u32>(u_input.a, 53849u, 1u)), vec3<u32>(_wgslsmith_mult_u32(52388u, 63859u), _wgslsmith_clamp_u32(0u, u_input.a, u_input.a), ~u_input.a), var_0), ~(vec3<u32>(0u, 8790u, u_input.a) | ~vec3<u32>(16074u, 0u, u_input.a)), true), !select(vec3<bool>(true, true, true), !(!vec3<bool>(false, var_0, var_0)), true));
    let var_3 = vec3<bool>(var_0, var_0, false);
    var_2 = ~vec3<u32>(u_input.a, ~(~(1u & u_input.a)), var_2.x);
    return _wgslsmith_clamp_u32(u_input.a, 4294967295u, firstLeadingBit(u_input.a));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    var_0 = u_input.a;
    let var_1 = all(vec3<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), u_input.b.x <= 1i)), false, true || (max(-1i, 0i) <= u_input.b.x)));
    var_0 = ~_wgslsmith_mod_u32(func_3(), _wgslsmith_add_u32(0u, firstLeadingBit(u_input.a)));
    var var_2 = -317f;
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-316f, -1996f, 109f, 470f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1247f, -869f, 334f, -1286f) + vec4<f32>(839f, -1000f, 1640f, 329f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(179f, -494f, -1000f)))))) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-373f)), _wgslsmith_f_op_f32(abs(-1571f)))), 809f, _wgslsmith_f_op_f32(-720f * _wgslsmith_f_op_f32(f32(-1f) * -418f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -222f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-824f, _wgslsmith_f_op_f32(trunc(-526f)), _wgslsmith_f_op_f32(f32(-1f) * -137f)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = true;
    let var_1 = countOneBits(~(~abs(vec2<i32>(331i, -2147483647i)) >> (~arg_1.xx % vec2<u32>(32u))));
    var var_2 = func_2();
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.a.x)), 705f, _wgslsmith_f_op_f32(-var_2.a.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(871f * 157f), _wgslsmith_f_op_f32(-1558f - -797f)))), _wgslsmith_f_op_f32(f32(-1f) * -720f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(146f - var_2.b.x))))));
    var_2 = Struct_1(vec4<f32>(var_2.c.x, -585f, func_2().b.x, 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_2.b + vec3<f32>(-809f, -243f, -456f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, 340f, -2148f) * var_2.b)), vec3<bool>(true, false, all(vec2<bool>(var_0, var_0)))))), var_2.a.xzy);
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~vec3<u32>(35317u, u_input.a, 0u), ~vec3<u32>(u_input.a, 4294967295u, u_input.a), u_input.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-180f)))))))));
    var var_1 = func_2();
    let var_2 = func_2();
    let var_3 = Struct_1(vec4<f32>(func_2().a.x, var_0, _wgslsmith_f_op_f32(select(var_1.b.x, 512f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -541f))))), _wgslsmith_f_op_vec3_f32(var_1.c * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.a.zyy)) - vec3<f32>(565f, 2142f, var_0))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.a, 38514u, 4413u), ~vec3<u32>(u_input.a, 1u, 22469u), ~u_input.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_1.a.x) - func_2().b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c.x))), _wgslsmith_f_op_f32(-var_0)));
    let var_4 = var_3;
    var_1 = func_2();
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(var_1.a.xy, vec2<f32>(_wgslsmith_f_op_f32(811f - 1435f), _wgslsmith_f_op_f32(f32(-1f) * -908f)), true)))) + var_2.c.yz);
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(max(-1i, 1i), ~_wgslsmith_div_i32(16643i, _wgslsmith_mod_i32(u_input.b.x, 18697i)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, -16524i, u_input.b.x, u_input.b.x), countOneBits(vec4<i32>(u_input.b.x, -1i, -46286i, u_input.c.x)), vec4<bool>(true, true, true, true)), vec4<i32>(~u_input.b.x, -46016i, countOneBits(70678i), abs(u_input.b.x)))), vec2<u32>(u_input.a, 14096u));
}

