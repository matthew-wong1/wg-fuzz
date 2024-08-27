struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = min(_wgslsmith_div_i32(u_input.d, i32(-1i) * -2147483647i), _wgslsmith_mult_i32(~u_input.c, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i, _wgslsmith_sub_i32(u_input.a.x, 1i), ~u_input.c, 0i))));
    var var_1 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true), any(vec3<bool>(false, true, true)) == true), select(vec4<bool>(true, any(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, all(vec3<bool>(false, false, false)), any(vec2<bool>(false, true))), vec4<bool>(true, true, all(vec4<bool>(true, false, false, false)), true), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))))), select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))), false), vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true))), true, all(vec4<bool>(true, false, false, true)))));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(-var_0), u_input.c, 1i), max(vec3<i32>(var_0, u_input.a.x, 2147483647i), -vec3<i32>(0i, u_input.a.x, u_input.a.x)) >> (vec3<u32>(4294967295u << (u_input.b.x % 32u), 1u, _wgslsmith_mod_u32(4294967295u, u_input.b.x)) % vec3<u32>(32u))), -2147483647i, reverseBits(abs(~var_0) & ~(~(-48065i))));
    let var_3 = Struct_1(var_1.zyz, -535f, var_0, abs(reverseBits(min(11901u, 18122u))));
    var_1 = vec4<bool>(var_3.a.x, !(!(!var_1.x)) | ((u_input.b.x < var_3.d) & !all(vec3<bool>(var_3.a.x, false, var_1.x))), true, var_3.a.x);
    return ~1u;
}

fn func_2() -> u32 {
    let var_0 = -(countOneBits(vec2<i32>(-2147483647i, 2147483647i)) << (u_input.b.yy % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -423f) * 227f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-413f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1152f - 1128f) * _wgslsmith_f_op_f32(round(532f)))))));
    let var_3 = 4294967295u;
    var var_4 = u_input.a.x >> (~func_3() % 32u);
    return var_3;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(arg_0.xxz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_f_op_f32(568f + 1287f))) * -925f), 1i, u_input.b.x);
    var_0 = Struct_1(select(var_0.a, vec3<bool>(var_0.a.x, _wgslsmith_mod_u32(123621u, 32389u) < func_2(), !any(arg_0)), !vec3<bool>(var_0.a.x, true, select(var_0.a.x, true, arg_0.x))), 1f, _wgslsmith_sub_i32(-reverseBits(-3258i) | (select(-5459i, u_input.a.x, arg_0.x) ^ var_0.c), 1i | abs(firstTrailingBit(var_0.c))), ~_wgslsmith_add_u32(~(~9513u), 62426u));
    var var_1 = var_0.c;
    var var_2 = vec2<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1072f - -155f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b, var_0.b)) + -1551f))));
    let var_3 = Struct_1(var_0.a, 2103f, ~(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -89244i), u_input.a.zy))), 1u);
    return Struct_1(var_0.a, _wgslsmith_div_f32(var_3.b, _wgslsmith_f_op_f32(trunc(982f))), countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a.ywy, vec3<i32>(2147483647i, 0i, var_3.c)) & 0i, ~u_input.a.x)), ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(6226u, 76454u, var_0.d, var_0.d)), vec4<u32>(1u, countOneBits(11483u), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 1u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = firstTrailingBit(vec3<i32>(arg_1.c, _wgslsmith_div_i32(u_input.a.x, 0i), max(arg_1.c, arg_1.c)));
    let var_1 = Struct_1(!vec3<bool>(arg_1.a.x || true, arg_1.a.x & arg_1.a.x, !(arg_1.a.x & false)), -467f, firstTrailingBit(countOneBits(-28970i)), u_input.b.x | abs(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d, u_input.b.x), vec2<u32>(arg_0.x, arg_2)))));
    let var_2 = var_1;
    var var_3 = true;
    var_3 = false;
    return func_1(vec4<bool>(!all(select(var_1.a.zy, arg_1.a.zx, false)), all(!(!vec4<bool>(var_2.a.x, var_1.a.x, var_1.a.x, var_1.a.x))), true, true));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = any(arg_1.a);
    let var_1 = Struct_1(select(arg_1.a, vec3<bool>(any(arg_1.a), false, !any(vec3<bool>(false, false, arg_1.a.x))), arg_0 > -296f), _wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_add_i32(1i, u_input.d), ~(min(~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) ^ 0u));
    var_0 = !(arg_1.a.x || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b, arg_0))) <= _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(arg_0 + -2685f))));
    let var_2 = u_input.a.xz;
    return vec3<bool>(select(arg_1.a.x, var_1.a.x, all(arg_1.a.yy)), !(false & arg_1.a.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1108f, 317f) - _wgslsmith_f_op_f32(1059f + -549f)), 559f), func_4(max(u_input.b.zx, u_input.b.yz), func_1(vec4<bool>(true, true, true, true)), 0u));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(675f + -835f), true));
    let var_2 = Struct_1(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(714f, -1636f)), _wgslsmith_f_op_f32(min(-365f, 1478f)), true)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_4(u_input.b.xz, Struct_1(var_0, -180f, u_input.d, 33729u), 1u).b)))), ~max(-3221i, u_input.c), 64947u);
    var var_3 = func_1(vec4<bool>(true, var_2.a.x, var_2.b >= -1352f, !var_2.a.x));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b - -226f) - var_3.b);
    var_3 = var_2;
    let var_4 = _wgslsmith_add_i32(-var_2.c, -var_2.c) != _wgslsmith_div_i32(var_2.c, abs(-2147483647i));
    var var_5 = vec3<bool>(!all(vec2<bool>(var_4, true)), true, !(53297u > var_3.d));
    var var_6 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.d, var_2.d & u_input.b.x, var_2.d, var_2.d | var_2.d), select(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, var_3.d, 0u, 1u)), u_input.b, !var_0.x)), firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(19196u, 4294967295u, var_3.d), func_3(), var_2.d, var_2.d)), u_input.b) << ((vec4<u32>(u_input.b.x, 4294967295u, _wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(u_input.b.x, u_input.b.x, var_3.d, u_input.b.x)), u_input.b.x) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(28461u, 1u, u_input.b.x, u_input.b.x), u_input.b), vec4<u32>(u_input.b.x, ~37461u, 29443u, func_2())) % vec4<u32>(32u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(var_2.d, ~4294967295u, var_3.d ^ 16579u, var_6.x))));
}

