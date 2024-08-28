struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> vec2<u32> {
    var var_0 = Struct_1(2147483647i, select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true)))), !vec2<bool>(all(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, false, true))), ~(~1u) >= u_input.b.x), max(-reverseBits(vec2<i32>(-1i, u_input.a) >> (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u))), -select(max(vec2<i32>(0i, u_input.a), vec2<i32>(-14612i, u_input.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-29093i, 1i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -17230i)), vec2<bool>(false, false))), 1f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1037f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), !(var_0.b.x | true))) * -631f) > _wgslsmith_f_op_f32(var_0.d - -179f);
    var_0 = Struct_1(46276i, var_0.b, var_0.c, _wgslsmith_f_op_f32(sign(1649f)));
    var var_2 = _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(select(2128f, _wgslsmith_div_f32(410f, -1037f), var_1)));
    var_2 = _wgslsmith_f_op_f32(1308f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + var_0.d) - _wgslsmith_f_op_f32(max(-1000f, var_0.d))))), -2234f));
    return vec2<u32>(reverseBits(1u << (0u % 32u)), 0u);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = ~_wgslsmith_clamp_vec2_u32(func_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-445f, -672f, 1309f)))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(u_input.c.x, 1u)), ~vec2<u32>(u_input.c.x, 60031u)), u_input.c.xz);
    let var_1 = arg_0;
    var_0 = vec2<u32>(0u, ~(~23897u));
    var_0 = u_input.c.yy;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-623f + -459f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(142f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d, 1000f, arg_0.d), _wgslsmith_div_vec3_f32(vec3<f32>(223f, -333f, -737f), vec3<f32>(297f, -988f, arg_0.d))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2420f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f - _wgslsmith_f_op_f32(var_1.d - arg_0.d)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(-560f + var_1.d)))), arg_0.d)));
    return _wgslsmith_f_op_f32(-102f + _wgslsmith_f_op_f32(arg_0.d + -129f));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(-1i, !(!vec2<bool>(1u > u_input.c.x, true)), -_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(1i, u_input.a), ~vec2<i32>(-63055i, u_input.a)), vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, -1i, 0i)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(18696i, vec2<bool>(false, false), vec2<i32>(u_input.a, u_input.a), 592f))) * _wgslsmith_f_op_f32(ceil(1000f))))), -1240f)));
    var var_1 = _wgslsmith_sub_vec3_u32(~(~vec3<u32>(~21314u, u_input.b.x, 9512u)), ~_wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(u_input.c, u_input.c)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 10969u, 43702u), vec3<u32>(0u, u_input.b.x, u_input.b.x)) & ~u_input.b));
    var_1 = u_input.c;
    var var_2 = var_0;
    let var_3 = var_1.x;
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -983f) - _wgslsmith_f_op_f32(func_2(Struct_1(-1i, vec2<bool>(true, true), vec2<i32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(select(643f, 478f, false))))))));
    var var_1 = var_0;
    let var_2 = any(!vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), true, !(-2884f >= var_0), any(vec2<bool>(true, false))));
    var var_3 = -2147483647i;
    var var_4 = ~(-69344i) ^ _wgslsmith_dot_vec2_i32(firstLeadingBit(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(25424i, u_input.a)))), min(vec2<i32>(-1i, 29782i), firstTrailingBit(vec2<i32>(u_input.a, u_input.a))) >> (vec2<u32>(1u, ~16386u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1143f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(u_input.a, vec2<bool>(var_2, var_2), vec2<i32>(-47014i, 20522i), var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) * _wgslsmith_f_op_f32(553f - var_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, var_0, -1263f, var_0))))), _wgslsmith_f_op_f32(-155f + -540f));
}

