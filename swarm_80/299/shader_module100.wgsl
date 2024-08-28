struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-498f - 103f)));
    let var_1 = Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec3<bool>(false, true, true)))), true, true));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -297f);
    let var_2 = vec3<bool>(true, var_1.a.x, false);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2300f)) * -1095f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1574f + -208f) * _wgslsmith_f_op_f32(floor(-207f)))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1850f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-520f - 763f))), 1748f));
    return !select(!select(vec4<bool>(true, true, var_1.a.x, var_1.a.x), select(vec4<bool>(var_2.x, false, true, true), vec4<bool>(true, var_1.b.x, true, var_2.x), vec4<bool>(false, var_2.x, var_1.b.x, var_2.x)), var_2.x), !(!select(var_1.a, vec4<bool>(false, false, true, true), false)), select(!vec4<bool>(var_2.x, false, var_2.x, true), var_1.a, true));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(select(vec4<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), true, true), !func_3(), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), !(!select(func_3().yww, vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))));
    var var_1 = true;
    var var_2 = true;
    var_2 = true;
    return Struct_2(select(vec4<i32>(-25213i, u_input.a.x ^ -18690i, u_input.a.x, 1i), firstLeadingBit(~vec4<i32>(u_input.a.x, 37691i, -6412i, u_input.a.x) << (~vec4<u32>(0u, 1u, 0u, 37765u) % vec4<u32>(32u))), true), Struct_1(vec4<bool>(any(func_3().wwz), var_0.b.x, var_0.a.x, !var_0.a.x), func_3().zxw));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_2(-max(_wgslsmith_sub_vec4_i32(func_2().a, vec4<i32>(-1i, 9816i, arg_1.x, -5938i)), countOneBits(abs(vec4<i32>(arg_1.x, -1i, 24931i, 19323i)))), arg_0.b);
    let var_1 = !var_0.b.b.zx;
    var var_2 = (i32(-1i) * -countOneBits(~arg_0.a.x)) >> (30646u % 32u);
    var var_3 = select(var_0.b.a, !(!(!var_0.b.a)), true);
    var_2 = (var_0.a.x | -_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a), arg_0.a.www)) >> (firstLeadingBit(4294967295u) % 32u);
    return func_2();
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(932f, 416f)), 642f)), 585f, !all(arg_1.b.a))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -173f), -770f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1148f), 1091f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1009f), -159f)))))));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(474f, _wgslsmith_f_op_f32(func_5(1u, func_4(func_2(), u_input.a ^ vec3<i32>(u_input.a.x, u_input.a.x, 59654i)), u_input.a.x)))));
    var var_1 = Struct_2(~select(~(~vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -55847i)), select(select(vec4<i32>(-1096i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), true), max(vec4<i32>(-46443i, 1i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, -4551i, u_input.a.x, u_input.a.x)), true), any(vec4<bool>(true, true, false, true)) & true), Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), all(vec2<bool>(true, true)), true)));
    var_1 = func_4(func_4(Struct_2(vec4<i32>(firstTrailingBit(-39672i), 1i, u_input.a.x, u_input.a.x & u_input.a.x), Struct_1(!var_1.b.a, func_4(Struct_2(vec4<i32>(u_input.a.x, 2147483647i, var_1.a.x, -395i), Struct_1(var_1.b.a, var_1.b.a.zyx)), vec3<i32>(u_input.a.x, u_input.a.x, -27466i)).b.a.xxy)), -(~select(vec3<i32>(-22769i, -1971i, var_1.a.x), vec3<i32>(u_input.a.x, var_1.a.x, var_1.a.x), true))), -vec3<i32>(6875i, func_2().a.x, u_input.a.x));
    var_1 = func_4(func_2(), abs(vec3<i32>(var_1.a.x & 0i, u_input.a.x, u_input.a.x) >> (~vec3<u32>(97545u, 0u, 0u) % vec3<u32>(32u))));
    let var_2 = reverseBits(vec3<u32>(1u, 1u, 1u) ^ select(select(vec3<u32>(32383u, 1u, 1u), firstTrailingBit(vec3<u32>(0u, 0u, 0u)), var_1.b.a.zzw), vec3<u32>(1u, 1u, 1u), vec3<bool>(false, all(vec3<bool>(false, var_1.b.b.x, var_1.b.a.x)), false)));
    return StorageBuffer(14701u, ~(~var_2.x >> (_wgslsmith_mult_u32(var_2.x, 1u) % 32u)), _wgslsmith_mod_i32(-u_input.a.x >> (1u % 32u), ~(~1i)), firstTrailingBit(var_1.a.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(10506u, 82132u))));
    let var_1 = vec2<u32>(9687u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(var_0), ~var_0, vec2<u32>(countOneBits(0u), 0u >> (1u % 32u))), var_0));
    var var_2 = 5538u;
    let var_3 = _wgslsmith_f_op_f32(386f + -323f);
    var_2 = ~1u;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-485f, 142f, var_3))))) * vec3<f32>(_wgslsmith_f_op_f32(abs(var_3)), _wgslsmith_f_op_f32(ceil(var_3)), var_3))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -702f, var_3)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3, var_3, -395f))))))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_div_f32(_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(-408f - _wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x - 2291f) - _wgslsmith_f_op_f32(f32(-1f) * -1212f)) + -1320f)));
}

