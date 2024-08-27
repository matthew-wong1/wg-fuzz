struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    let var_0 = select(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a ^ vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), u_input.a), vec4<u32>(u_input.a.x, 32462u, 0u, 3998u) << (vec4<u32>(67455u, u_input.a.x, 18588u, 16989u) % vec4<u32>(32u))), select(vec4<u32>(u_input.a.x >> (1u % 32u), 22388u, 0u, u_input.a.x), u_input.a, select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))))), ~(~vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_clamp_u32(1u, 1u, 43782u), 36559u, 1u)), !vec4<bool>(false, true, all(vec3<bool>(true, true, true)), true));
    return firstTrailingBit(u_input.a.wx);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(arg_1.b, u_input.a.zy, vec2<bool>(true, arg_1.c)) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), vec2<u32>(~arg_1.b.x, arg_0)), func_3()), 4294967295u);
    return _wgslsmith_f_op_f32(-arg_1.d.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = u_input.a.x;
    var var_1 = u_input.a.yx;
    let var_2 = firstTrailingBit((vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(28200i, 0i)), -29967i, _wgslsmith_dot_vec2_i32(arg_0, arg_0), ~23332i) >> (select(u_input.a & vec4<u32>(4294967295u, 8251u, u_input.a.x, u_input.a.x), ~u_input.a, all(vec2<bool>(false, true))) % vec4<u32>(32u))) ^ firstLeadingBit(max(vec4<i32>(arg_0.x, 48288i, 23276i, 2147483647i), vec4<i32>(u_input.b, 25983i, arg_0.x, 1i))));
    let var_3 = Struct_2(Struct_1(firstLeadingBit(u_input.a.xxx), u_input.a.zy, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-996f, 787f, arg_1.x, -464f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, arg_1.x, -688f, -710f), vec4<f32>(arg_1.x, arg_1.x, -1000f, arg_1.x), false))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(251f, arg_1.x, arg_1.x, arg_1.x)))), u_input.b));
    var var_4 = any(select(vec4<bool>(var_3.a.c, !(var_3.a.d.x > 700f), var_3.a.c, true), vec4<bool>(select(var_2.x >= 2147483647i, true, true), var_3.a.c, !var_3.a.c, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_3.a.c, false, false), vec4<bool>(var_3.a.c, false, true, true), vec4<bool>(var_3.a.c, var_3.a.c, var_3.a.c, var_3.a.c)))));
    return select(select(!(!select(vec2<bool>(true, var_3.a.c), vec2<bool>(false, var_3.a.c), true)), vec2<bool>(u_input.b >= _wgslsmith_clamp_i32(u_input.b, var_3.a.e, arg_0.x), !(!var_3.a.c)), select(!vec2<bool>(var_3.a.c, true), select(select(vec2<bool>(var_3.a.c, true), vec2<bool>(true, false), var_3.a.c), vec2<bool>(var_3.a.c, var_3.a.c), var_3.a.c), var_3.a.c)), !vec2<bool>(var_3.a.c, false), any(select(select(select(vec3<bool>(true, true, var_3.a.c), vec3<bool>(false, var_3.a.c, var_3.a.c), false), !vec3<bool>(true, var_3.a.c, false), !var_3.a.c), !(!vec3<bool>(var_3.a.c, false, var_3.a.c)), vec3<bool>(0u == var_3.a.a.x, var_2.x > var_3.a.e, all(vec4<bool>(false, var_3.a.c, true, var_3.a.c))))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_mult_u32(reverseBits(0u), 1u);
    let var_1 = -2147483647i;
    var var_2 = !vec2<bool>(false, (_wgslsmith_sub_u32(var_0, 0u) >> (u_input.a.x % 32u)) == (_wgslsmith_dot_vec3_u32(u_input.a.xzz, u_input.a.zzz) | (4294967295u ^ var_0)));
    var_2 = vec2<bool>(!all(select(select(vec3<bool>(true, var_2.x, false), vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, true)), !vec3<bool>(var_2.x, true, var_2.x), select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, false, false), vec3<bool>(var_2.x, false, false)))), !var_2.x);
    var_2 = !select(func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(-45853i, -42309i), ~vec2<i32>(var_1, var_1)), vec2<f32>(_wgslsmith_f_op_f32(func_2(u_input.a.x, Struct_1(u_input.a.xyx, u_input.a.zx, false, vec4<f32>(arg_0, arg_0, 2291f, arg_0), u_input.b), 0i)), _wgslsmith_f_op_f32(max(arg_0, arg_0)))), vec2<bool>(any(!vec3<bool>(var_2.x, true, false)), true), select(func_4(-vec2<i32>(u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(629f, 321f)))), vec2<bool>(true, true), false));
    return Struct_2(Struct_1(~u_input.a.xwz, _wgslsmith_add_vec2_u32(~u_input.a.zw, ~vec2<u32>(u_input.a.x, 4294967295u)), false, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + 380f), 949f, -1924f, _wgslsmith_f_op_f32(712f - arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-655f, 1031f, arg_0, arg_0) * vec4<f32>(-130f, 795f, 238f, arg_0)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1, u_input.b, u_input.b, -7582i), select(vec4<i32>(u_input.b, -2147483647i, 0i, 0i), -vec4<i32>(2147483647i, 15859i, -40699i, var_1), select(vec4<bool>(true, false, false, var_2.x), vec4<bool>(true, false, var_2.x, var_2.x), var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(163f);
    var_0 = func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.d.x))))));
    var_0 = Struct_2(func_1(func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(176f * var_0.a.d.x)))).a.d.x).a);
    var var_1 = -vec4<i32>(firstLeadingBit(~min(var_0.a.e, 26624i)), u_input.b ^ -u_input.b, ~func_1(_wgslsmith_f_op_f32(107f * var_0.a.d.x)).a.e, u_input.b);
    var_0 = func_1(func_1(643f).a.d.x);
    var var_2 = !vec3<bool>(false, var_0.a.c, false);
    let var_3 = ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(643f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(641f + var_0.a.d.x) * -831f)))), var_0.a.d.x);
}

