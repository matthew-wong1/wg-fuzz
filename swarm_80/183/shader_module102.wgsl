struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = select(!(!(!vec4<bool>(false, false, arg_1, true))), select(vec4<bool>(arg_1, _wgslsmith_f_op_f32(-arg_2.a) <= 366f, any(select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_1, false))), all(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, true), arg_1))), select(!(!vec4<bool>(false, false, arg_1, false)), vec4<bool>(true, false, 341f >= arg_2.a, true), vec4<bool>(arg_1, !arg_1, true, any(vec4<bool>(true, arg_1, true, arg_1)))), select(vec4<bool>(arg_1, true, false, arg_1 || false), select(!vec4<bool>(false, arg_1, false, false), select(vec4<bool>(true, false, arg_1, false), vec4<bool>(arg_1, false, arg_1, true), arg_1), select(vec4<bool>(false, false, true, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, true, arg_1))), reverseBits(u_input.a.x) <= (2997i & u_input.a.x))), select(select(!select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(arg_1, true, false, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), vec4<bool>(arg_1, any(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), false | arg_1, arg_2.a > -1391f), vec4<bool>(any(vec3<bool>(false, false, arg_1)), true, all(vec2<bool>(true, arg_1)), arg_1)), !vec4<bool>(u_input.a.x < -1i, true, arg_0.a < arg_2.a, arg_1), select(!vec4<bool>(true, arg_1, arg_1, arg_1), !select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, true, arg_1), false), false)));
    var var_1 = all(var_0.xx);
    return !any(vec4<bool>(arg_1, arg_1, _wgslsmith_f_op_f32(-arg_2.a) > -788f, _wgslsmith_f_op_f32(-arg_0.a) > _wgslsmith_f_op_f32(max(-1000f, arg_2.a))));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> bool {
    let var_0 = arg_1;
    let var_1 = 4149u | u_input.e.x;
    let var_2 = u_input.a;
    let var_3 = select(!var_0.d, !select(arg_1.d, select(!arg_1.d, vec4<bool>(true, false, arg_1.d.x, true), var_0.d.x | arg_1.b.x), select(true, func_3(Struct_2(arg_1.a.x), arg_1.d.x, Struct_2(var_0.a.x)), all(vec2<bool>(true, false)))), ~(_wgslsmith_mod_i32(-14445i, 19029i) ^ (1i & var_0.e)) == _wgslsmith_mult_i32(-(~u_input.a.x), _wgslsmith_add_i32(-34214i, 14241i) ^ var_2.x));
    var var_4 = Struct_3(select(arg_1.a.x >= _wgslsmith_f_op_f32(-1114f * _wgslsmith_f_op_f32(round(-1256f))), var_0.b.x, (-782f != arg_1.a.x) & all(select(var_0.d.zxw, arg_1.d.xyy, var_0.b.x))), Struct_1(false, var_1, vec4<bool>(arg_1.d.x, (var_3.x | true) | (u_input.c.x > 4294967295u), var_0.d.x, arg_1.d.x), ~(~30045i ^ -arg_1.e), var_0.e), Struct_1(!var_3.x && var_0.b.x, 4294967295u, vec4<bool>(_wgslsmith_f_op_f32(ceil(var_0.a.x)) <= 1000f, true && (u_input.d < var_1), any(vec2<bool>(false, var_0.b.x)), true), 11853i, 2147483647i), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -305f)), _wgslsmith_add_u32(reverseBits(19607u), 0u ^ var_1));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = ~u_input.a.yy ^ vec2<i32>(1i, -_wgslsmith_add_i32(u_input.a.x, firstLeadingBit(-54465i)));
    let var_1 = Struct_3(all(vec4<bool>(all(vec3<bool>(true, false, false)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false)), true, 1i > reverseBits(var_0.x))), Struct_1(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(1520f, Struct_4(vec3<f32>(836f, -1162f, 109f), vec2<bool>(false, true), vec2<i32>(0i, u_input.a.x), vec4<bool>(false, true, false, false), u_input.a.x)))), u_input.e.x & u_input.d, vec4<bool>(true, true, true, true), abs(u_input.a.x), var_0.x >> (1u % 32u)), Struct_1(true, 71107u, vec4<bool>(true, select(any(vec3<bool>(true, false, true)), select(true, true, false), any(vec4<bool>(false, false, true, false))), false, !(u_input.b.x < 0u)), firstTrailingBit(countOneBits(u_input.a.x)), -_wgslsmith_sub_i32(var_0.x, firstLeadingBit(var_0.x))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-569f, -297f))), u_input.e.x);
    let var_2 = var_1.d.a;
    var var_3 = !(!select(var_1.b.c.yy, vec2<bool>(var_1.c.a, !var_1.b.a), false));
    var_0 = vec2<i32>(reverseBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(~15367i, -9245i), var_0.x)), ~var_1.b.d);
    return Struct_1(func_3(Struct_2(_wgslsmith_f_op_f32(var_1.d.a + _wgslsmith_div_f32(var_1.d.a, var_2))), true, Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2 + var_2))))), ~(~_wgslsmith_sub_u32(1u, 1u)), select(!var_1.c.c, select(select(var_1.c.c, !var_1.c.c, !var_1.c.c), !select(var_1.b.c, var_1.c.c, false), true), !(!var_1.b.c)), -7408i, i32(-1i) * -1i);
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> vec2<f32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.d.a, arg_2.d.a, 1761f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.d.a, 732f, arg_1), vec3<f32>(arg_2.d.a, -183f, 527f), arg_2.c.c.zwz))))), vec2<bool>(!(!arg_2.c.c.x), !(func_1().c.x & arg_2.c.a)), arg_0.wz, vec4<bool>(!(any(arg_2.c.c.yxy) || (arg_2.d.a >= 204f)), false, !arg_2.b.c.x, !func_3(arg_2.d, arg_2.b.a, arg_2.d) & all(arg_2.b.c.wy)), -2147483647i);
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.d.a * arg_1), _wgslsmith_f_op_f32(select(394f, var_0.a.x, var_0.d.x)))), arg_1, var_0.a.x) * vec3<f32>(var_0.a.x, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -2901f))), func_1().c.zw, -(~vec2<i32>(arg_2.b.e, u_input.a.x) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 30635u), vec2<u32>(arg_3, 25011u)) % vec2<u32>(32u))), !var_0.d, 16949i ^ _wgslsmith_dot_vec3_i32(u_input.a, select(min(vec3<i32>(arg_0.x, -31275i, -20707i), arg_0.zyz), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, 1i, arg_2.b.d), vec3<i32>(7610i, -2147483647i, 0i)), vec3<bool>(false, true, var_0.d.x))));
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-var_0.a), arg_2.c.c.zx, arg_0.yz << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(33690u, arg_3)), vec2<u32>(arg_3, arg_2.c.b)) % vec2<u32>(32u)), func_1().c, _wgslsmith_dot_vec2_i32(countOneBits(u_input.a.yy), vec2<i32>(-17592i << (func_1().b % 32u), var_0.c.x)));
    var_0 = Struct_4(vec3<f32>(-920f, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-792f, arg_1, arg_2.a))) - 744f)), func_1().c.xz, -abs(firstTrailingBit(u_input.a.xz)), var_0.d, arg_2.b.d);
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1))), arg_2.d.a));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(abs(-151f))) * vec2<f32>(var_1.a, 1304f)) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.x - 734f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-219f + arg_2.d.a) - _wgslsmith_f_op_f32(arg_2.d.a + arg_1)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(-16716i, u_input.a.x);
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-551f, _wgslsmith_f_op_f32(min(arg_1.d.a, -1000f)), _wgslsmith_f_op_f32(arg_0.x - arg_1.d.a)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-704f, arg_0.x, arg_1.d.a), vec3<f32>(1036f, arg_1.d.a, arg_1.d.a)))))), func_1().c.zz, u_input.a.zy, arg_1.c.c, -1i >> (abs(select(u_input.b.x, 5296u, false) << (_wgslsmith_add_u32(u_input.c.x, arg_1.b.b) % 32u)) % 32u));
    var_0 = 9408i;
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(func_4(firstLeadingBit(~(-vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -264f))), Struct_3(any(vec3<bool>(true, true, true)), func_1(), func_1(), Struct_2(_wgslsmith_f_op_f32(-463f + -167f)), 1u), _wgslsmith_sub_u32(~u_input.d, 6433u))), Struct_3(func_2(_wgslsmith_f_op_f32(f32(-1f) * -838f), Struct_4(vec3<f32>(-576f, -539f, -681f), vec2<bool>(true, true), vec2<i32>(u_input.a.x, 1i), vec4<bool>(true, true, true, true), 2147483647i)) != all(vec4<bool>(true, true, true, true)), func_1(), func_1(), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-112f, -856f)))), firstLeadingBit(max(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 53844u, u_input.c.x), vec4<u32>(u_input.d, 1u, 69594u, 9992u))))));
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(568f, -2921f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 923f) * vec2<f32>(-256f, 2797f)))))), Struct_3(~(-2147483647i) >= (var_0.e >> (~var_0.b % 32u)), var_0, Struct_1(any(var_0.c), var_0.b, var_0.c, -u_input.a.x, abs(1i)), Struct_2(422f), _wgslsmith_mult_u32(_wgslsmith_sub_u32(min(u_input.b.x, 40967u), 0u), var_0.b)));
    let var_2 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1804f, 114f, 2458f), vec3<f32>(1557f, 260f, -1037f), var_1.c.x)) * vec3<f32>(-600f, 1054f, -295f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(445f, 367f, -797f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -1167f, -761f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-876f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1673f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-152f, -2895f, 1531f))))), select(vec2<bool>(true, u_input.a.x <= ~var_0.d), var_0.c.yy, func_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 1i), -840f, Struct_3(var_0.a, var_0, var_1, Struct_2(711f), 51053u), var_0.b)), _wgslsmith_div_vec2_f32(vec2<f32>(855f, -327f), vec2<f32>(266f, -1641f)))), Struct_3(any(vec2<bool>(var_1.a, true)), var_1, var_0, Struct_2(990f), _wgslsmith_mult_u32(var_0.b, 0u))).c.xx), u_input.a.zy, vec4<bool>(false, all(var_0.c.yzw), func_3(Struct_2(-529f), true, Struct_2(-2045f)), true), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(countOneBits(var_0.d), 0i, i32(-1i) * -1i), -u_input.a.x, -var_0.d), min(0i, _wgslsmith_div_i32(i32(-1i) * -834i, ~(-2147483647i)))));
    var var_3 = ~abs(abs(~1u));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-511f + var_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_2.a.x)))) * _wgslsmith_f_op_f32(389f + -441f)), 995f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, ~1u), u_input.e.x, 1217f, 18573u);
}

