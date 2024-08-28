struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 427f))), -468f, 1101f, -339f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -448f)))), -567f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-240f * -1027f) * _wgslsmith_div_f32(987f, 1000f))))), false, !select(vec3<bool>(all(vec2<bool>(true, true)), true, any(vec4<bool>(false, false, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(all(vec3<bool>(false, true, true)), false, any(vec3<bool>(true, true, true)))));
    var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1866f), -1007f)), _wgslsmith_f_op_f32(floor(-500f)), 836f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-2096f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -243f, var_0.b.x))), false, var_0.d);
    let var_1 = var_0.a.xx;
    var var_2 = vec4<bool>(!all(select(select(vec2<bool>(var_0.d.x, true), vec2<bool>(false, true), false), vec2<bool>(true, var_0.d.x), var_0.c && false)), !all(!(!vec4<bool>(false, false, var_0.d.x, var_0.c))), min(firstLeadingBit(i32(-1i) * -124i), max(select(u_input.d.x, u_input.d.x, true), -1i)) != -_wgslsmith_add_i32(abs(u_input.d.x), u_input.d.x), var_0.c);
    var var_3 = firstTrailingBit(-(~abs(u_input.d.x)));
    return !vec3<bool>(any(var_2.yz), !(true || !var_0.c), false);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(192f - 205f) - -1146f), _wgslsmith_f_op_f32(-758f * -644f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(791f, -848f))), _wgslsmith_f_op_f32(f32(-1f) * -751f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(152f, 900f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(383f)) + -573f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(1345f - -734f)))), (2147483647i <= _wgslsmith_mod_i32(_wgslsmith_add_i32(-9692i, u_input.d.x), -2147483647i)) | true, func_3());
    var var_1 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, 1946f, var_0.a.x)), var_0.a, true)), var_0.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f) + _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(709f, _wgslsmith_f_op_f32(-var_0.b.x), var_0.d.x)) * _wgslsmith_f_op_f32(457f + _wgslsmith_f_op_f32(var_0.b.x * var_0.a.x))), _wgslsmith_f_op_f32(-var_0.b.x)), !(!var_0.c || (arg_0.x <= arg_0.x)), !vec3<bool>(true, var_0.c, var_0.c));
    var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(873f - var_1.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -486f), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x)))))), _wgslsmith_f_op_vec3_f32(ceil(var_0.a.zyy)), var_0.c & (true && var_0.c), var_0.d);
    var_1 = Struct_3(vec4<f32>(-2259f, var_1.b.x, var_1.b.x, var_0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x - -2520f), 1963f, _wgslsmith_f_op_f32(-var_1.a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.zzx))), var_1.c, select(var_1.d, vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(var_0.c, true)), var_0.d.x, true)));
    let var_2 = true;
    return Struct_1(arg_0.x, _wgslsmith_mod_u32(1u, u_input.c), _wgslsmith_add_vec2_i32(u_input.d.zw, ~arg_0), !select(!var_0.d, func_3(), vec3<bool>(var_0.c, all(var_1.d), var_1.a.x <= var_0.a.x)), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_2 {
    let var_0 = vec2<u32>(select(_wgslsmith_sub_u32(~u_input.a.x, abs(1u)), 27237u, true), _wgslsmith_mod_u32(0u, ~(~8883u)));
    let var_1 = u_input.d;
    let var_2 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 16304u, var_0.x) & vec4<u32>(74536u, 1u, _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(u_input.c, u_input.b)), var_0.x), vec4<u32>(min(~var_0.x, 31704u & var_0.x), _wgslsmith_mod_u32(~var_0.x, firstTrailingBit(u_input.a.x)), abs(93946u), countOneBits(0u)));
    var var_3 = var_2;
    var_3 = (0u >> (firstTrailingBit(1u & var_0.x) % 32u)) >> ((firstTrailingBit(u_input.a.x) << (_wgslsmith_sub_u32(var_0.x, ~(~1u)) % 32u)) % 32u);
    return Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, -509f, 1536f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1860f, 551f, arg_1))))))), func_2(~vec2<i32>(~(-43238i), ~(-16342i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d.zyw, select(-u_input.d.zxy, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), true)), firstLeadingBit(min(u_input.d.xzx, vec3<i32>(-1i, u_input.d.x, u_input.d.x))) >> ((~vec3<u32>(0u, 82054u, 1u) >> (vec3<u32>(u_input.b, 0u, 10646u) % vec3<u32>(32u))) % vec3<u32>(32u))), -359f);
    var var_1 = func_1(~abs(-reverseBits(u_input.d.xwz)), _wgslsmith_f_op_f32(-var_0.a.x));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.a, var_0.a, !vec4<bool>(var_0.b.d.x, false, var_1.b.d.x, var_0.b.d.x)))) * _wgslsmith_f_op_vec4_f32(-var_1.a)), func_2(firstTrailingBit(u_input.d.yy)));
    var_1 = var_0;
    var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1340f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-546f, -686f)))), 546f, _wgslsmith_f_op_f32(376f - var_1.a.x), _wgslsmith_div_f32(-1295f, -936f)), Struct_1((reverseBits(u_input.d.x) ^ var_0.b.c.x) & var_1.b.a, firstTrailingBit(1u | _wgslsmith_div_u32(u_input.a.x, var_1.b.b)), _wgslsmith_sub_vec2_i32(min(var_0.b.c & vec2<i32>(-1i, 16019i), vec2<i32>(var_1.b.c.x, 0i) << (vec2<u32>(var_0.b.e, var_1.b.b) % vec2<u32>(32u))), vec2<i32>(var_0.b.c.x, u_input.d.x >> (var_0.b.e % 32u))), vec3<bool>(false, all(select(vec4<bool>(var_1.b.d.x, var_0.b.d.x, var_1.b.d.x, true), vec4<bool>(true, false, var_0.b.d.x, var_1.b.d.x), false)), !any(var_1.b.d)), reverseBits(var_1.b.e)));
    var_1 = Struct_2(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-215f - var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -750f)))), -124f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-314f, _wgslsmith_f_op_f32(364f - var_1.a.x))) - var_0.a.x)), Struct_1(~var_1.b.c.x, ~_wgslsmith_mod_u32(4294967295u, 99271u << (var_0.b.b % 32u)), u_input.d.xw << (u_input.a % vec2<u32>(32u)), !var_0.b.d, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.c.x);
}

