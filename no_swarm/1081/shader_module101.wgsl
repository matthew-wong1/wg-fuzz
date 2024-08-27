struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(min(var_0.a, var_0.a));
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = any(!select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)));
    var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-471f - -103f), -256f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(2059f)))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-247f - _wgslsmith_f_op_f32(trunc(919f))), _wgslsmith_f_op_f32(f32(-1f) * -2554f)))));
    var_0 = select(true, true, true);
    var_0 = true != all(vec4<bool>(func_3(~39136i, Struct_1(-167f, vec2<f32>(var_1, var_1), true, vec4<i32>(0i, u_input.a, 53323i, -2147483647i), 0i), vec2<i32>(u_input.a, u_input.b.x)), true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b.x), u_input.b.yxy) == -2147483647i, true));
    return Struct_1(var_1, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1000f, -627f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 - var_1)))), !(false && (u_input.b.x != u_input.a)) && (~_wgslsmith_dot_vec3_u32(vec3<u32>(70228u, 56430u, 1u), vec3<u32>(0u, 46460u, 1u)) != _wgslsmith_mod_u32(abs(911u), _wgslsmith_add_u32(51690u, 50243u))), max(abs(u_input.b), (vec4<i32>(1i, 0i, -2147483647i, u_input.b.x) & firstTrailingBit(vec4<i32>(u_input.b.x, -7732i, u_input.b.x, u_input.a))) >> (select(~vec4<u32>(7565u, 16995u, 1u, 27951u), vec4<u32>(4294967295u, 0u, 1u, 16175u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false))) % vec4<u32>(32u))), 1i);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1227f * arg_0.a), -554f, _wgslsmith_f_op_f32(-arg_0.b.x))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.x * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(round(-2180f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 278f, 288f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, -2720f, arg_0.b.x))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2097f, -593f, var_0.x), vec3<f32>(1000f, arg_0.b.x, 244f), arg_0.c)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -240f);
    var var_2 = arg_0.a;
    var var_3 = func_2();
    return func_2();
}

fn func_1(arg_0: i32, arg_1: f32) -> vec4<i32> {
    let var_0 = vec4<i32>(arg_0, 0i, arg_0, ~min(max(u_input.a << (4294967295u % 32u), -u_input.a), _wgslsmith_mult_i32(-12241i, 1i)));
    var var_1 = func_4(func_2());
    var_1 = func_2();
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~(~(~29481u)), _wgslsmith_mod_u32(select(1u, 12095u, true), 4294967295u) & abs(_wgslsmith_div_u32(57518u, 107890u)), 69333u, max(~(~83949u), 0u)));
    let var_3 = vec2<f32>(-698f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.a, var_1.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(sign(1900f)), 1i > _wgslsmith_sub_i32(var_0.x, -2147483647i))))));
    return vec4<i32>(-47965i, arg_0, abs(-1i), -2147483647i) << (vec4<u32>(countOneBits(~var_2.x | _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, 23812u), var_2.xxw)), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_2.x, 0u), reverseBits(var_2.zx)), var_2.x, ~abs(1u)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -countOneBits(vec3<i32>(-(i32(-1i) * -50435i), abs(-2147483647i), -(u_input.b.x ^ -61459i)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + 1421f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(671f + 308f)))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false, ~u_input.b, -(_wgslsmith_add_i32(var_0.x, u_input.a) << (19609u % 32u)));
    var_1 = Struct_1(174f, var_1.b, var_1.c, -abs(vec4<i32>(abs(var_0.x), 43087i, var_0.x, var_1.e)), ~(~1i));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(var_1.a, var_1.b.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-743f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-103f * 631f))))), all(!(!(!vec3<bool>(true, var_1.c, true)))), func_1(-2147483647i, var_1.a), var_1.e & var_1.d.x);
    var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), -396f) * var_1.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-210f, var_1.a) + _wgslsmith_f_op_vec2_f32(-var_2.b)))), var_1.c, vec4<i32>(~(-1i & var_0.x), countOneBits(u_input.b.x) | max(var_2.d.x, -2147483647i), 0i, var_2.e), -1i));
    var var_3 = 0u;
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1000f))))) + 253f), vec2<f32>(var_1.b.x, 371f), all(select(select(select(vec2<bool>(true, var_1.c), vec2<bool>(true, var_1.c), vec2<bool>(false, true)), vec2<bool>(true, var_2.c), select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, false), vec2<bool>(var_1.c, var_1.c))), select(vec2<bool>(var_1.c, true), vec2<bool>(var_2.c, var_1.c), func_3(var_1.d.x, Struct_1(var_1.b.x, var_2.b, false, var_1.d, 5254i), vec2<i32>(var_0.x, var_2.d.x))), !vec2<bool>(true, var_2.c))), u_input.b, min(u_input.a, max(42423i, u_input.b.x)));
    let var_4 = Struct_1(_wgslsmith_div_f32(var_2.b.x, 1105f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1000f))))))), select(true, false, 1u <= _wgslsmith_sub_u32(50094u, _wgslsmith_clamp_u32(6992u, 4294967295u, 6990u))), func_4(Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(var_2.b + _wgslsmith_div_vec2_f32(var_2.b, vec2<f32>(-214f, -614f))), !var_2.c, -vec4<i32>(var_2.d.x, -25978i, 40017i, u_input.b.x), var_0.x)).d, -52927i);
    let var_5 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(firstTrailingBit(vec4<u32>(56834u, 1u, 10415u, 18178u)))), 1u), min(firstTrailingBit(vec2<i32>(2147483647i, func_4(var_4).d.x)), func_4(func_4(var_4)).d.zw));
}

