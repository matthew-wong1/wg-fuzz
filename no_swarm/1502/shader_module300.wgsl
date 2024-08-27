struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<u32> {
    return abs(arg_0.a);
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = ~4294967295u;
    var var_1 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(~(~4294967295u), select(43524u, ~var_0, true)), firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(9508u, var_0) | vec2<u32>(u_input.e, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_0, var_0)), firstLeadingBit(vec2<u32>(var_0, 0u)))), vec2<u32>(u_input.e << (51320u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.e, 76293u), vec3<u32>(u_input.e, var_0, 1u))) & _wgslsmith_sub_vec2_u32(~vec2<u32>(var_0, 36531u), func_3(Struct_1(vec2<u32>(var_0, u_input.c), vec3<bool>(arg_0, false, true)), vec2<bool>(arg_0, false))));
    var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.e, var_1.x, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0, var_0, 4294967295u), vec3<u32>(var_0, 55805u, u_input.e)) & max(vec3<u32>(3318u, u_input.c, 5019u), vec3<u32>(var_0, var_0, var_1.x))), 23293u) << (func_3(Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(20207u, 11571u), vec2<u32>(31595u, 24555u)), vec2<u32>(var_1.x, 33864u) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))), select(!vec3<bool>(false, arg_0, true), !vec3<bool>(arg_0, true, arg_0), arg_0 != false)), vec2<bool>(true, all(!vec4<bool>(false, arg_0, arg_0, arg_0)))) % vec2<u32>(32u));
    var_1 = vec2<u32>(20855u, ~var_0);
    let var_2 = ~(~_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(var_0, 1u)) | ~vec2<u32>(5753u, 5260u), ~(~vec2<u32>(u_input.e, u_input.e))));
    return Struct_1(var_2, vec3<bool>(false, !(!arg_0), arg_0));
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(219f + 476f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -328f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-813f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(592f - -207f), _wgslsmith_f_op_f32(-767f - 524f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -512f))))));
}

fn func_1(arg_0: vec3<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))));
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(round(var_0.x)), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, all(vec4<bool>(false, false, true, true)))))), _wgslsmith_f_op_f32(round(var_0.x))), var_0.x);
    var var_1 = !vec2<bool>(true, any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_4(func_2(!var_1.x, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, -1213f), vec2<f32>(var_0.x, -1237f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 976f), vec2<f32>(-819f, var_0.x), vec2<bool>(var_1.x, var_1.x)))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(219f, var_0.x)))))));
    let var_2 = var_1.x;
    return max(~(~_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.e, 1u) & vec2<u32>(37031u, u_input.e))), _wgslsmith_mod_vec2_u32(vec2<u32>(~(~26951u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 16411u), vec2<u32>(1u, u_input.c))), _wgslsmith_add_vec2_u32((vec2<u32>(u_input.e, u_input.c) >> (vec2<u32>(u_input.e, u_input.c) % vec2<u32>(32u))) << (max(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u)), ~(vec2<u32>(1u, 36107u) >> (vec2<u32>(4294967295u, u_input.e) % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 10335u, 19618u), vec4<u32>(4294967295u, u_input.c, 1u, 101338u)), _wgslsmith_mod_u32(0u, 63119u)), (vec2<u32>(u_input.c, u_input.e) ^ vec2<u32>(8788u, 4294967295u)) >> (vec2<u32>(u_input.e, u_input.c) % vec2<u32>(32u))) & (func_1(select(-vec3<i32>(4234i, u_input.d, u_input.a), countOneBits(vec3<i32>(u_input.d, u_input.d, u_input.a)), vec3<bool>(true, true, true))) & ~(~vec2<u32>(u_input.c, u_input.e) >> (~vec2<u32>(7818u, u_input.c) % vec2<u32>(32u))));
    var var_1 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)));
    let var_2 = firstLeadingBit(-(-(~(-1i)) & u_input.a));
    var_1 = select(select(!(!(!vec3<bool>(var_1.x, var_1.x, true))), vec3<bool>(func_2(var_1.x, -1272f).b.x | false, true, !(var_1.x && var_1.x)), func_2(all(vec3<bool>(false, var_1.x, var_1.x)) || false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))).b), vec3<bool>(var_1.x, any(select(!vec2<bool>(var_1.x, true), !var_1.zx, any(vec3<bool>(var_1.x, false, var_1.x)))), func_2(true == !var_1.x, 1145f).b.x), select(vec3<bool>(!(var_1.x | false), var_1.x, _wgslsmith_f_op_f32(round(-702f)) <= -484f), vec3<bool>(all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(true, var_1.x, true, false))), false | !var_1.x, func_2(!var_1.x, _wgslsmith_f_op_f32(-567f + -332f)).b.x), !vec3<bool>(var_1.x, true, var_1.x)));
    let var_3 = Struct_1(var_0, select(!select(func_2(var_1.x, -1000f).b, vec3<bool>(false, false, false), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, true, false))), select(vec3<bool>(false, var_1.x, true), !select(vec3<bool>(false, true, true), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(any(var_1.zx), var_1.x && false, true)), vec3<bool>(false, true, true & var_1.x)));
    let var_4 = -_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(8344i, -1i, u_input.d), vec3<i32>(1i, u_input.a, -41173i)), var_2, abs(679i)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, var_2), vec2<i32>(u_input.d, 0i), var_3.b.x), ~vec2<i32>(var_2, -31129i))), -1i);
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1629f, 1105f, 2881f, 586f)) - _wgslsmith_div_vec4_f32(vec4<f32>(401f, -2199f, 196f, -579f), _wgslsmith_div_vec4_f32(vec4<f32>(-946f, -730f, 663f, -149f), vec4<f32>(2167f, -584f, -1154f, -143f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1955f, 400f, 206f, -257f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1603f, -940f, -1265f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-387f, 476f, -564f, 596f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(459f, -1023f, -1000f, -3268f)))))));
    var var_6 = !(!vec4<bool>(func_2(var_3.b.x, 559f).b.x & !var_3.b.x, var_1.x && true, (var_1.x & var_1.x) && any(vec3<bool>(var_3.b.x, var_1.x, var_1.x)), true));
    var_6 = select(!select(select(select(vec4<bool>(true, var_6.x, var_6.x, true), vec4<bool>(true, var_6.x, false, var_1.x), var_1.x), vec4<bool>(false, true, var_6.x, false), 885f <= var_5.x), select(select(vec4<bool>(var_6.x, true, true, var_3.b.x), vec4<bool>(var_6.x, true, var_6.x, var_3.b.x), vec4<bool>(false, var_6.x, true, true)), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_6.x), vec4<bool>(false, var_1.x, false, true)), true), vec4<bool>(false, var_1.x, true, var_1.x), select(vec4<bool>(false, true, !(var_5.x < -556f), all(vec3<bool>(var_6.x, var_1.x, false))), select(select(select(vec4<bool>(var_3.b.x, var_6.x, var_1.x, var_3.b.x), vec4<bool>(false, var_3.b.x, var_3.b.x, false), var_6.x), !vec4<bool>(false, var_1.x, var_3.b.x, true), select(vec4<bool>(true, var_6.x, var_1.x, true), vec4<bool>(true, false, false, var_3.b.x), vec4<bool>(var_3.b.x, var_1.x, false, var_3.b.x))), !(!vec4<bool>(var_6.x, var_1.x, var_1.x, var_1.x)), var_6.x), select(_wgslsmith_div_f32(857f, var_5.x) == _wgslsmith_f_op_f32(-var_5.x), var_6.x, var_6.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_5.zx));
}

