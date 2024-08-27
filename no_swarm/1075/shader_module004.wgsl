struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_clamp_i32(reverseBits(-23678i), u_input.b & _wgslsmith_sub_i32(reverseBits(abs(u_input.b)), u_input.b), max(u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 0i, u_input.a.x, u_input.b), firstLeadingBit(vec4<i32>(1i, u_input.a.x, u_input.b, u_input.a.x)))) << (~1u % 32u));
    let var_1 = -u_input.a.x;
    var_0 = -41401i;
    let var_2 = Struct_1(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, false, true, all(vec2<bool>(false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1195f))))), -var_1, _wgslsmith_clamp_vec4_u32(firstLeadingBit(~vec4<u32>(80482u, 98484u, arg_1, arg_0.x)), vec4<u32>(abs(34881u), select(arg_1 | 4875u, ~1985u, true), reverseBits(arg_1 << (arg_1 % 32u)), arg_1), select(reverseBits(~vec4<u32>(arg_1, 0u, arg_1, arg_1)), abs(abs(vec4<u32>(arg_1, 1u, 0u, 16970u))), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true), true))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, var_2.b, var_2.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(868f, var_2.b, var_2.b)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-579f, 2008f, var_2.b), vec3<f32>(-707f, 650f, var_2.b))))))));
    return reverseBits(-2147483647i) < var_1;
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = vec4<bool>(!(false || func_3(~arg_0.b.d.zwy, _wgslsmith_dot_vec2_u32(vec2<u32>(36664u, arg_0.b.d.x), arg_0.b.d.xy))), any(select(arg_0.b.a.ywx, arg_0.b.a.zyz, select(!arg_0.b.a.ywy, select(arg_0.b.a.yxz, vec3<bool>(true, false, arg_0.b.a.x), arg_0.b.a.x), select(vec3<bool>(arg_0.b.a.x, true, arg_0.b.a.x), vec3<bool>(true, true, arg_0.b.a.x), false)))), arg_0.b.a.x, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-737f, _wgslsmith_f_op_f32(f32(-1f) * -150f))), _wgslsmith_f_op_f32(-arg_0.a), arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a - 169f))))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f) * 336f) - 1120f), arg_0.b.b);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(173f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.b)), _wgslsmith_f_op_f32(sign(1386f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - arg_0.a)))) + _wgslsmith_f_op_f32(exp2(var_1.x))));
    let var_3 = Struct_1(vec4<bool>(arg_0.b.c <= _wgslsmith_mod_i32(arg_0.b.c, ~20551i), false, any(select(var_0.wx, select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, arg_0.b.a.x), vec2<bool>(false, arg_0.b.a.x)), select(false, false, true))), true), _wgslsmith_f_op_f32(-var_1.x), abs(-1i), vec4<u32>(~(~(~arg_0.b.d.x)), _wgslsmith_mod_u32(1u, arg_0.b.d.x), 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.d.x, arg_0.b.d.x, arg_0.b.d.x), arg_0.b.d.zxy), abs(arg_0.b.d.ywz)), _wgslsmith_mult_vec3_u32(arg_0.b.d.zyw << (arg_0.b.d.zwy % vec3<u32>(32u)), arg_0.b.d.xyx))));
    return !arg_0.b.a.x;
}

fn func_1(arg_0: vec3<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1154f)))))));
    let var_1 = Struct_1(select(vec4<bool>(true, !(!arg_0.x), true, !(!arg_0.x)), select(vec4<bool>(all(vec2<bool>(false, false)), func_2(Struct_2(175f, Struct_1(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), 1121f, u_input.b, vec4<u32>(81886u, 4294967295u, 1693u, 43288u)))), arg_0.x, arg_0.x & arg_0.x), vec4<bool>(any(arg_0), u_input.a.x < -17644i, true, false), select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), true)), !vec4<bool>(any(arg_0), true, true, true)), -643f, u_input.b, firstLeadingBit(~select(reverseBits(vec4<u32>(8400u, 0u, 1u, 4294967295u)), max(vec4<u32>(4294967295u, 18490u, 1u, 0u), vec4<u32>(21157u, 5241u, 75835u, 79271u)), u_input.a.x == u_input.b)));
    return firstLeadingBit(select(firstLeadingBit(select(~var_1.d.yy, vec2<u32>(var_1.d.x, 24522u), false)), ~vec2<u32>(32614u, 4294967295u), abs(_wgslsmith_clamp_i32(var_1.c, var_1.c, -2147483647i)) > reverseBits(-6161i)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2321f * _wgslsmith_f_op_f32(trunc(747f)))) - -1000f), Struct_1(select(vec4<bool>(false, all(arg_0.xy), func_2(Struct_2(-338f, Struct_1(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), -1038f, -1i, vec4<u32>(4294967295u, 1u, arg_1.x, arg_1.x)))), !arg_0.x), select(select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(true, true, false, arg_0.x), vec4<bool>(false, false, arg_0.x, false)), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), true), vec4<bool>(true, true, false, arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1546f)), 1f)))), -(~u_input.a.x), vec4<u32>(0u, _wgslsmith_mod_u32(~arg_1.x, arg_1.x << (1u % 32u)), arg_1.x, 0u)));
    let var_1 = u_input.a.xx;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1543f)), _wgslsmith_f_op_f32(f32(-1f) * -1674f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -667f), -2232f);
    var var_1 = ~vec2<u32>(~(~1u), min(min(abs(4294967295u), ~37927u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(69854u, 4294967295u, 1u), 65949u)));
    let var_2 = _wgslsmith_f_op_f32(func_4(!vec3<bool>(select(false, true, all(vec2<bool>(true, true))), !all(vec2<bool>(false, true)), true && any(vec4<bool>(true, true, true, false))), max(_wgslsmith_mult_vec2_u32(~func_1(vec3<bool>(true, true, false)), vec2<u32>(~0u, 45062u)), select(_wgslsmith_div_vec2_u32(abs(vec2<u32>(36283u, var_1.x)), vec2<u32>(27809u, var_1.x) & vec2<u32>(var_1.x, var_1.x)), vec2<u32>(~1u, ~4294967295u), true))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.zx)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), var_0.x));
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.yy))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(vec3<bool>(false, false, true), vec2<u32>(42764u, var_1.x))), 1923f)))) - var_0.yz);
    var var_4 = _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(~(var_1.x << (var_1.x % 32u)), firstTrailingBit(var_1.x) ^ var_1.x, abs(var_1.x))), vec3<u32>(var_1.x, var_1.x, 0u));
    var_3 = var_0.yy;
    var var_5 = select(!vec3<bool>(!(684f >= var_3.x), false, true), !vec3<bool>(true, true, u_input.a.x > (u_input.a.x & 23726i)), !vec3<bool>(all(vec4<bool>(false, false, true, true)), !all(vec4<bool>(true, true, true, false)), all(vec3<bool>(false, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

