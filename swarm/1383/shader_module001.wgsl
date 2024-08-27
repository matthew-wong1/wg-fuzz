struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = 17793u;
    var var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, abs(u_input.b.x) >> (~u_input.b.x % 32u), countOneBits(1u)), ~select(firstTrailingBit(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 1u), vec3<u32>(u_input.c, u_input.c, u_input.c)), all(vec4<bool>(false, true, false, false))), min(~vec3<u32>(1u, u_input.c, u_input.b.x), ~vec3<u32>(u_input.c, u_input.c, u_input.c) << (countOneBits(vec3<u32>(19496u, 51359u, 1u)) % vec3<u32>(32u)))) << (abs(select(firstLeadingBit(vec3<u32>(u_input.c, 0u, 4294967295u)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(86247u, 0u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(u_input.c, 1u, 86969u) >> (vec3<u32>(u_input.b.x, 11285u, u_input.b.x) % vec3<u32>(32u))), !all(vec3<bool>(false, true, true)))) % vec3<u32>(32u));
    let var_2 = 1132f;
    let var_3 = min(-u_input.a.x, ~(countOneBits(-1i) ^ _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-16355i, u_input.a.x, -2147483647i, -17005i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -2147483647i)), _wgslsmith_mult_i32(u_input.a.x, 31114i))));
    let var_4 = vec3<f32>(476f, var_2, _wgslsmith_f_op_f32(round(-390f)));
    return vec2<bool>(true, true);
}

fn func_2() -> Struct_1 {
    let var_0 = select(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), false), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(func_3(Struct_1(1000f), Struct_1(-684f)), vec2<bool>(true, true), true), true), !vec2<bool>(true, u_input.c > 0u), !(true || all(vec3<bool>(false, false, true)))), vec2<bool>(any(vec2<bool>(true, true)), u_input.c < ~4294967295u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-901f, -670f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a)) - var_1.a), var_1.a)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), var_1.a, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(var_2.a * var_2.a))))));
    let var_4 = u_input.a.x;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(204f * var_3.x)), 1f));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = select(vec4<bool>(func_3(arg_0, arg_0).x, true, countOneBits(-2147483647i >> (1u % 32u)) >= u_input.a.x, !all(vec3<bool>(true, true, true))), !vec4<bool>(!(-23878i == u_input.a.x), true && any(vec2<bool>(false, true)), all(vec4<bool>(true, false, false, false)), !(arg_0.a <= -883f)), !vec4<bool>(true, true, _wgslsmith_div_i32(u_input.a.x, 35333i) < u_input.a.x, any(vec2<bool>(true, true))));
    let var_1 = select(vec2<bool>(!var_0.x && any(!vec4<bool>(var_0.x, true, var_0.x, var_0.x)), !any(vec2<bool>(var_0.x, false))), !var_0.xx, vec2<bool>(select(false, var_0.x, true == (var_0.x || true)), !var_0.x));
    var var_2 = Struct_1(arg_0.a);
    let var_3 = arg_0;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1741f, 1f)))));
    return _wgslsmith_f_op_f32(step(-404f, 869f));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_div_u32(4294967295u, abs(u_input.c)))), 920f)));
    var var_1 = func_2();
    return u_input.b.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = vec4<bool>(true, true, true, true);
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_1 - _wgslsmith_f_op_vec2_f32(trunc(arg_1))))) - arg_1)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1745f);
    var var_3 = select(select(!var_0.wwx, select(select(vec3<bool>(var_0.x, true, var_0.x), !var_0.xxx, true), var_0.zyy, var_0.x), var_0.x), vec3<bool>(func_3(Struct_1(_wgslsmith_f_op_f32(-2276f + -255f)), Struct_1(_wgslsmith_f_op_f32(-2996f * -171f))).x, func_3(Struct_1(_wgslsmith_f_op_f32(165f - arg_1.x)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -187f))).x, true), vec3<bool>(!var_0.x, false, all(!func_3(Struct_1(var_1.x), Struct_1(611f)))));
    var var_4 = var_0.wy;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -538f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a));
    var_0 = func_5(_wgslsmith_add_vec4_u32(vec4<u32>(39780u, 1u, reverseBits(u_input.c), firstTrailingBit(func_1(u_input.b.x, vec2<i32>(u_input.a.x, -11554i)))), abs(~vec4<u32>(1u, 14508u, u_input.b.x, u_input.b.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-442f + var_0.a), -759f)), -346f));
    var var_2 = firstLeadingBit(u_input.b);
    var_2 = ~u_input.b;
    let var_3 = false;
    var_2 = reverseBits(vec2<u32>(var_2.x, _wgslsmith_mod_u32(~61977u, func_1(~29206u, u_input.a.zz))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_i32(max(u_input.a.x >> (1u % 32u), _wgslsmith_div_i32(u_input.a.x, 13324i)), u_input.a.x ^ u_input.a.x)));
}

