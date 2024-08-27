struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    var var_0 = all(select(vec2<bool>(all(vec3<bool>(false, true, arg_3.x)), arg_3.x), arg_3, arg_3)) & false;
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_2.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(525f + _wgslsmith_f_op_f32(round(-348f)))), -410f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-151f + arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), true))), u_input.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_0.a.zz)));
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(789f, arg_0.a.x, 608f, arg_0.a.x), arg_2.a, vec4<bool>(true, arg_3.x, arg_3.x, true))), false)) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), -564f, _wgslsmith_f_op_f32(-1000f - arg_2.a.x), -628f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -732f, arg_2.a.x, -143f) * vec4<f32>(var_2.x, arg_0.a.x, -1267f, var_2.x)), vec4<f32>(-834f, -680f, -1538f, -915f))))), vec3<u32>(_wgslsmith_sub_u32(~0u, 37912u), ~arg_2.b.x, arg_1.x));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -657f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, var_2.x)) + -169f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-616f + 677f) * _wgslsmith_f_op_f32(var_3.a.x + -1528f))), -(u_input.c >> (arg_1.x % 32u)) >= ~_wgslsmith_dot_vec4_i32(vec4<i32>(30330i, u_input.b, u_input.b, 0i), vec4<i32>(u_input.b, u_input.d, u_input.d, 2147483647i)))));
    return _wgslsmith_add_u32(firstLeadingBit(99954u), _wgslsmith_dot_vec2_u32(~(min(vec2<u32>(arg_2.b.x, arg_2.b.x), arg_1) >> (~u_input.a.xx % vec2<u32>(32u))), vec2<u32>(~(~1u), arg_1.x)));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-799f, 592f, -177f, -463f) + vec4<f32>(-609f, 818f, -1000f, -102f))))), u_input.a);
    let var_1 = var_0;
    let var_2 = u_input.b;
    var var_3 = vec4<u32>(func_3(var_1, ~vec2<u32>(select(var_1.b.x, var_1.b.x, true), firstLeadingBit(u_input.a.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x, _wgslsmith_f_op_f32(floor(var_1.a.x)), var_1.a.x), var_1.b), vec2<bool>(true, all(vec4<bool>(false, true, true, true)))), 1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b.x, 21081u, 28996u, var_1.b.x), vec4<u32>(~1560u, var_0.b.x | var_0.b.x, u_input.e, _wgslsmith_add_u32(u_input.e, var_0.b.x))), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(401f, 461f, 213f, var_0.a.x))), u_input.a), vec2<u32>(countOneBits(var_1.b.x), _wgslsmith_mod_u32(64418u, var_1.b.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), vec3<u32>(~var_0.b.x, ~1u, ~4294967295u)), vec2<bool>(true, true)));
    var_3 = vec4<u32>(_wgslsmith_mod_u32(0u, ~u_input.e), ~9446u, u_input.a.x, 0u);
    return _wgslsmith_mult_vec2_u32(~(~abs(_wgslsmith_clamp_vec2_u32(var_1.b.zx, vec2<u32>(43298u, var_0.b.x), vec2<u32>(u_input.e, 0u)))), u_input.a.xz);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.c) >> (func_2() % vec2<u32>(32u)), firstLeadingBit(~vec2<i32>(1i, u_input.d)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(227f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), -895f)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1000f, var_2.x, arg_1.x)) - vec4<f32>(1872f, var_2.x, 532f, -100f)))))));
    let var_3 = Struct_1(vec4<f32>(-600f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -1429f)) + 680f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -298f))))), 1374f), u_input.a);
    return var_3;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = !select(vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), !all(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true)), 84773u == (u_input.a.x | 0u)), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false), true), true), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, true), true));
    let var_1 = arg_1;
    let var_2 = abs(reverseBits(4294967295u));
    let var_3 = vec2<i32>(arg_0.x ^ 20195i, arg_0.x | max(countOneBits(~2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -13869i, 15252i, 0i), vec4<i32>(u_input.d, -9717i, -8904i, -800i)) << (4294967295u % 32u)));
    var var_4 = Struct_1(var_1.a, u_input.a);
    return -330f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(907f * 395f)), 766f), 1f)));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec3<i32>(8510i, -2147483647i, u_input.d), vec3<i32>(-1i, u_input.d, 38938i), vec3<bool>(false, true, false)), func_1(vec3<f32>(-1566f, -502f, 1000f), vec3<f32>(-538f, 607f, var_0.x), true)))), _wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x, -951f), u_input.a);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-900f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1518f) + var_0.x), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1000f, 422f)))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-659f + _wgslsmith_f_op_f32(select(940f, _wgslsmith_div_f32(771f, -902f), false))) + var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + var_1.a.x))))), 292f)));
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + -202f), -537f), -1635f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(var_1.a.x * -1161f)), _wgslsmith_f_op_f32(-var_1.a.x))));
    var_0 = var_1.a.wz;
    var var_2 = vec3<bool>(!(!(select(34829u, var_1.b.x, false) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.e, var_1.b.x, 0u), vec4<u32>(u_input.e, u_input.a.x, u_input.a.x, var_1.b.x)))), _wgslsmith_f_op_f32(exp2(var_0.x)) >= _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(-57642i, 1i, -2147483647i)), -vec3<i32>(u_input.c, u_input.c, u_input.b)), func_1(_wgslsmith_f_op_vec3_f32(var_1.a.wwz - var_1.a.xzz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, var_1.a.x, var_1.a.x)), any(vec2<bool>(true, true))))), true);
    var var_3 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1244f + var_0.x), _wgslsmith_f_op_f32(150f * var_0.x))), -1060f)), vec3<f32>(1164f, 1095f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), true);
    var var_4 = -_wgslsmith_dot_vec2_i32(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(31755i, u_input.c))), -_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.d, -1i)), vec2<i32>(u_input.d, u_input.c) << (vec2<u32>(u_input.e, u_input.a.x) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-20754i, u_input.c, _wgslsmith_sub_i32(u_input.c, 44463i) & u_input.d) >> (vec3<u32>(u_input.a.x, abs(21762u), var_3.b.x) % vec3<u32>(32u)), vec3<f32>(-779f, var_0.x, var_3.a.x));
}

