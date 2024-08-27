struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_3,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> u32 {
    let var_0 = vec3<bool>(false, false, (all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true)) && false) && true);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1f)), -1347f));
    let var_2 = 1000f;
    var var_3 = true;
    var_3 = true;
    return 1u;
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.c.x << (_wgslsmith_clamp_u32(46038u, _wgslsmith_div_u32(~1u, u_input.c.x), 1u) % 32u);
    let var_1 = vec3<u32>(u_input.c.x, _wgslsmith_add_u32(0u, func_3(u_input.a.x, Struct_5(Struct_1(u_input.a.xz, u_input.b.x)))), 4294967295u);
    var var_2 = Struct_2(_wgslsmith_sub_vec3_u32(~var_1, ~_wgslsmith_add_vec3_u32(~u_input.a, var_1 & vec3<u32>(15331u, u_input.c.x, var_1.x))), Struct_1(firstLeadingBit(_wgslsmith_mod_vec2_u32(var_1.yy, u_input.a.xz)), max(_wgslsmith_div_i32(max(u_input.b.x, 1i), _wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(u_input.b.x, 1i))), -14202i)), Struct_1(var_1.yy, -firstTrailingBit(u_input.b.x)), ~(~vec4<u32>(abs(u_input.a.x), u_input.c.x, _wgslsmith_mult_u32(0u, 0u), 1u)));
    let var_3 = vec3<f32>(335f, -176f, -955f);
    var var_4 = ~var_2.a.xz ^ ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.xy, var_1.xz, vec2<u32>(10491u, var_2.a.x)), vec2<u32>(13326u, 53658u) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))), var_1.xy, firstTrailingBit(u_input.c));
    return Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(~select(var_2.b.b, -35635i, true), 2147483647i, _wgslsmith_mod_i32(~(-17767i), -2147483647i & var_2.b.b), 1i), firstTrailingBit(vec4<i32>(var_2.b.b, -2147483647i, u_input.b.x, 2147483647i)) & _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 36695i, var_2.b.b, var_2.c.b) | vec4<i32>(var_2.c.b, -6442i, 102402i, 12492i), vec4<i32>(44585i, var_2.c.b, 2147483647i, 15424i))), max(abs(select(_wgslsmith_sub_vec3_u32(var_2.a, var_2.a), ~var_1, vec3<bool>(true, false, false))), vec3<u32>(_wgslsmith_div_u32(var_2.d.x << (4294967295u % 32u), var_1.x), ~(~var_2.c.a.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(9394u, 1u), 47810u))), !vec4<bool>(true | all(vec2<bool>(true, true)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), all(vec3<bool>(false, false, true)), false || all(vec3<bool>(false, true, true))), -1246f);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1675f, arg_3.d, any(select(arg_3.c.xx, arg_3.c.zw, vec2<bool>(arg_3.c.x, true))))) + -735f);
    var var_1 = func_2().c.yy;
    let var_2 = Struct_5(Struct_1(vec2<u32>(~(arg_3.b.x << (u_input.c.x % 32u)), arg_1.x << (~arg_1.x % 32u)), arg_3.a));
    let var_3 = ~(-var_2.a.b);
    return ~select(select(~arg_3.b.yz, ~vec2<u32>(39369u, arg_3.b.x), vec2<bool>(arg_3.c.x, var_1.x)) | ~(~u_input.a.zz), ~vec2<u32>(26760u, 35651u << (0u % 32u)), var_1.x);
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(vec3<u32>(arg_2.a.x, ~(~_wgslsmith_add_u32(0u, u_input.a.x)), arg_0.x), arg_2, Struct_1(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.c.x, u_input.c.x, 0u)), vec3<u32>(arg_0.x, 4294967295u, 0u))), _wgslsmith_div_i32(1i, abs(u_input.d.x)) & u_input.b.x), min(~(~abs(vec4<u32>(arg_2.a.x, 8239u, arg_2.a.x, 0u))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(10170u, arg_2.a.x, 53563u, u_input.a.x)), ~vec4<u32>(arg_0.x, arg_2.a.x, arg_0.x, 7166u)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, arg_0.x, 25192u), vec4<u32>(u_input.c.x, arg_0.x, arg_0.x, 21675u), vec4<u32>(arg_2.a.x, 4294967295u, arg_0.x, 0u)), firstLeadingBit(vec4<u32>(u_input.c.x, 1u, arg_0.x, arg_0.x))) % vec4<u32>(32u))));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)))) + vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 1367f)), _wgslsmith_f_op_f32(arg_1 * arg_1))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 195f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, arg_1, arg_1)))))));
    let var_3 = vec4<bool>(all(!vec3<bool>(true, true, all(vec3<bool>(true, true, true)))), func_2().c.x, any(!vec4<bool>(-1i <= var_1.b, any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false)), true)), select(any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false))), true, any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, false, false), true))));
    return var_1;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_5) -> vec2<f32> {
    var var_0 = ~abs(vec4<u32>(4294967295u, u_input.a.x, ~60041u, u_input.a.x)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~54473u, 4294967295u, countOneBits(4294967295u)), ~select(vec4<u32>(4294967295u, 32981u, 6618u, 0u), vec4<u32>(77346u, 0u, u_input.c.x, 4294967295u), arg_0.a.x)) % vec4<u32>(32u));
    let var_1 = func_5(vec2<u32>(1u, ~(1u | (97207u >> (u_input.c.x % 32u)))), _wgslsmith_f_op_f32(f32(-1f) * -368f), Struct_1(func_4(countOneBits(arg_2.a.a.x), ~vec3<u32>(u_input.a.x, arg_2.a.a.x, 15571u), 0i, func_2()), _wgslsmith_div_i32(-_wgslsmith_sub_i32(-37823i, arg_0.e.a), -3450i)));
    let var_2 = func_5(~(~u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(281f * _wgslsmith_f_op_f32(993f + 952f))))), var_1);
    var_0 = vec4<u32>(func_5(vec2<u32>(~_wgslsmith_div_u32(var_2.a.x, var_0.x), ~u_input.a.x), arg_0.c.d, Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.d, var_0.x) | arg_2.a.a, ~u_input.a.xx), ~u_input.d.x)).a.x, _wgslsmith_dot_vec4_u32(min(select(vec4<u32>(61517u, 11675u, arg_2.a.a.x, u_input.c.x) & vec4<u32>(4294967295u, var_0.x, 47047u, 23600u), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u), arg_0.e.c.x), max(vec4<u32>(28464u, 31262u, 15635u, var_2.a.x), reverseBits(vec4<u32>(0u, 4294967295u, 114856u, arg_0.e.b.x)))), ~(vec4<u32>(u_input.a.x, var_2.a.x, 0u, var_2.a.x) & _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, arg_2.a.a.x, var_1.a.x, u_input.a.x), vec4<u32>(u_input.c.x, 1u, arg_0.d, var_0.x)))), _wgslsmith_mod_u32(89189u, _wgslsmith_dot_vec2_u32(var_0.wz, abs(var_0.ww))), abs(u_input.c.x));
    var_0 = firstLeadingBit(~vec4<u32>(3446u, var_0.x | 35521u, 0u, _wgslsmith_mod_u32(4294967295u, 44004u))) ^ firstTrailingBit(vec4<u32>(countOneBits(var_2.a.x >> (67608u % 32u)), ~1u ^ _wgslsmith_sub_u32(var_0.x, 0u), ~var_2.a.x, ~4294967295u << ((4294967295u << (var_0.x % 32u)) % 32u)));
    return arg_0.b.wz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(928f, 318f), vec2<f32>(793f, -1183f)), _wgslsmith_f_op_vec2_f32(func_1(Struct_4(vec2<bool>(true, false), vec4<f32>(268f, 574f, -2589f, -1000f), Struct_3(2147483647i, u_input.a, vec4<bool>(false, false, true, true), 499f), u_input.c.x, Struct_3(u_input.d.x, u_input.a, vec4<bool>(false, true, false, true), -2036f)), vec4<bool>(false, true, false, true), Struct_5(Struct_1(vec2<u32>(u_input.a.x, 0u), u_input.d.x))))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(859f, 1775f) + vec2<f32>(-1472f, -610f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(ceil(-323f))), vec2<f32>(_wgslsmith_f_op_f32(-1000f - 1653f), -164f)) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-329f * -417f) + _wgslsmith_f_op_f32(max(1000f, 1000f))), -445f))));
    var var_1 = Struct_3(u_input.b.x, _wgslsmith_clamp_vec3_u32(u_input.a, countOneBits(u_input.a), vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.c.x)) ^ abs(u_input.a), !vec4<bool>(true, func_2().c.x, false, true), var_0.x);
    var_1 = func_2();
    var var_2 = select(select(select(!select(vec2<bool>(var_1.c.x, var_1.c.x), vec2<bool>(var_1.c.x, var_1.c.x), var_1.c.x), !var_1.c.wx, !any(var_1.c)), !select(!var_1.c.ww, var_1.c.xz, true), !var_1.c.zw), var_1.c.xz, !select(var_1.c.x, true, !var_1.c.x) || true);
    var_2 = select(select(select(!func_2().c.ww, vec2<bool>(var_1.c.x, var_2.x), select(!var_1.c.yy, func_2().c.yx, !var_2.x)), var_1.c.xx, select(vec2<bool>(true, var_2.x), vec2<bool>(var_1.c.x, true), select(true != var_2.x, true, all(vec2<bool>(false, true))))), func_2().c.ww, func_2().c.xx);
    var var_3 = Struct_3(var_1.a, vec3<u32>(var_1.b.x, _wgslsmith_sub_u32(~func_5(u_input.c, var_1.d, Struct_1(vec2<u32>(0u, 11101u), 1i)).a.x, reverseBits(u_input.a.x | 27967u)), _wgslsmith_sub_u32(~var_1.b.x & _wgslsmith_div_u32(u_input.c.x, var_1.b.x), reverseBits(u_input.a.x))), var_1.c, -340f);
    let var_4 = 1119f;
    var_3 = Struct_3(abs(45268i), firstLeadingBit(u_input.a) >> (select(max(var_1.b, _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(4294967295u, 20885u, 4294967295u))), u_input.a, var_2.x) % vec3<u32>(32u)), var_3.c, _wgslsmith_f_op_f32(var_3.d + _wgslsmith_f_op_f32(346f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_4(var_1.c.xw, vec4<f32>(var_4, var_1.d, var_3.d, 317f), Struct_3(u_input.b.x, vec3<u32>(4294967295u, 1u, var_3.b.x), vec4<bool>(var_1.c.x, false, var_2.x, var_2.x), var_3.d), u_input.c.x, Struct_3(6528i, var_3.b, vec4<bool>(var_2.x, var_2.x, true, var_3.c.x), var_1.d)), vec4<bool>(var_3.c.x, var_2.x, var_3.c.x, var_3.c.x), Struct_5(Struct_1(u_input.a.xy, -2147483647i)))).x))));
    let x = u_input.a;
    s_output = StorageBuffer(1149f);
}

