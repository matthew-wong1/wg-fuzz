struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = countOneBits(~(~arg_1.c.x));
    var_0 = abs(arg_1.c.x ^ _wgslsmith_add_u32(_wgslsmith_div_u32(39816u, 87334u), _wgslsmith_sub_u32(arg_1.c.x | 0u, 4294967295u)));
    var_0 = ~76623u;
    return vec2<bool>(!(arg_1.c.x < 0u), select(any(select(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), !vec3<bool>(arg_1.b.x, arg_1.b.x, false), any(vec2<bool>(false, arg_1.b.x)))), true, !all(vec3<bool>(true, true, true))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_add_i32(arg_1, arg_1), !select(vec2<bool>(any(vec4<bool>(false, arg_2, arg_2, arg_2)), true), vec2<bool>(true, arg_2), arg_2), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0, arg_0, arg_0), _wgslsmith_clamp_vec3_u32(vec3<u32>(1051u, 104093u, arg_0), vec3<u32>(56440u, 7864u, arg_0), vec3<u32>(1u, arg_0, 0u)) << (~vec3<u32>(38685u, arg_0, 4294967295u) % vec3<u32>(32u))), arg_1);
    var var_1 = vec3<bool>(!(!var_0.b.x), var_0.b.x, all(vec4<bool>(true, true, arg_2, true)) != arg_2);
    var_0 = Struct_1(var_0.d, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-862f, -434f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-437f, 1000f), vec2<f32>(-1048f, -724f)))), Struct_1(49675i, select(select(var_0.b, vec2<bool>(true, false), true), var_1.xx, all(var_0.b)), var_0.c, arg_1)), var_0.c, countOneBits(_wgslsmith_add_i32(-14874i, select(-1i & var_0.a, u_input.b, true))));
    var var_2 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(reverseBits(arg_1), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_1), vec2<i32>(arg_1, u_input.a))) | ~(i32(-1i) * -10946i), _wgslsmith_clamp_i32(1i, var_0.d | (-1i >> (1u % 32u)), -31245i & arg_1)), func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-246f, 727f) + -1204f)), Struct_1(-(~arg_1), !vec2<bool>(arg_2, true), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 47519u, var_0.c.x) << (var_0.c % vec3<u32>(32u)), vec3<u32>(arg_0, 57465u, arg_0) | var_0.c), var_0.d)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(4294967295u, 45190u, var_0.c.x), var_0.c), vec3<u32>(arg_0, var_0.c.x, var_0.c.x), ~var_0.c) & ~vec3<u32>(var_0.c.x, 0u, 1u), ~var_0.c), 1i);
    let var_3 = select(vec3<u32>(var_2.c.x, arg_0, abs(var_2.c.x) >> (arg_0 % 32u)), vec3<u32>(~firstTrailingBit(~var_0.c.x), ~min(max(1u, 0u), 47983u), _wgslsmith_mult_u32(var_2.c.x, _wgslsmith_dot_vec3_u32(~var_0.c, vec3<u32>(arg_0, var_0.c.x, var_0.c.x) << (vec3<u32>(var_2.c.x, var_0.c.x, 1u) % vec3<u32>(32u))))), vec3<bool>(arg_2, all(vec4<bool>(false == var_1.x, var_1.x, var_1.x, !var_1.x)), !all(vec3<bool>(true, true, true))));
    return Struct_1(abs(_wgslsmith_div_i32(select(1i, ~u_input.a, true), ~_wgslsmith_sub_i32(arg_1, 0i))), !var_2.b, firstLeadingBit(~firstTrailingBit(var_3)), -2147483647i);
}

fn func_1() -> bool {
    var var_0 = Struct_1(abs(0i), select(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec3<bool>(false, true, false))), ~vec3<u32>(1u, 1u, ~1u), -(u_input.a & max(_wgslsmith_div_i32(-2147483647i, -1i), _wgslsmith_clamp_i32(21288i, -21806i, u_input.c))));
    var_0 = func_2(~8009u, 0i, !var_0.b.x && any(!vec3<bool>(var_0.b.x, true, true)));
    var var_1 = func_2(~_wgslsmith_sub_u32(1u, 1u), _wgslsmith_add_i32(-15017i << (var_0.c.x % 32u), u_input.c ^ 1i), false);
    var_0 = Struct_1(-var_0.d, !vec2<bool>(true, false == all(vec2<bool>(true, var_1.b.x))), _wgslsmith_mult_vec3_u32(var_1.c, ~(vec3<u32>(5007u, 4294967295u, var_1.c.x) & ~vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x))), 35079i);
    var_1 = func_2(min(abs(var_1.c.x >> (var_0.c.x % 32u)), ~59170u), _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_0.a, u_input.b), ~vec2<i32>(-25171i, u_input.b), !var_1.b), ~select(vec2<i32>(-47820i, 68296i), vec2<i32>(u_input.a, 2147483647i), var_1.b)) | -_wgslsmith_sub_i32(reverseBits(0i), -var_0.d), !var_1.b.x || false);
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(-709f));
    let var_1 = Struct_1(~u_input.b, vec2<bool>(func_1(), true), ~(~vec3<u32>(~4294967295u, 24024u, 10319u)), u_input.a);
    var var_2 = var_1;
    let var_3 = abs(abs(~var_2.c.x << (~(~46248u) % 32u)));
    var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d, func_2(~var_3 >> (min(var_1.c.x, var_2.c.x) % 32u), u_input.c, var_2.b.x).d), vec2<i32>(var_1.d, _wgslsmith_clamp_i32(var_2.a, -1i, ~(~29334i))));
    var var_5 = vec2<bool>(true && any(select(!vec3<bool>(var_1.b.x, var_2.b.x, true), select(vec3<bool>(var_2.b.x, var_1.b.x, false), vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x), var_2.b.x), false)), _wgslsmith_f_op_f32(round(var_0)) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1177f)))));
    var_4 = firstTrailingBit(_wgslsmith_sub_i32(23161i, var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(var_2.c.x >> (21191u % 32u), var_1.c.x, ~0u));
}

