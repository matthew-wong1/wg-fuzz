struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = countOneBits(u_input.c.zzw);
    let var_1 = reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(select(-72082i, ~(-13831i), var_0.x != u_input.c.x), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(2147483647i, var_0.x)), _wgslsmith_mod_i32(abs(-2147483647i), -var_0.x), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(12319i, -1i, var_0.x, 6798i))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, -1i) << (abs(vec4<u32>(1u, 48935u, 30414u, u_input.b.x)) % vec4<u32>(32u)), ~max(vec4<i32>(var_0.x, -32270i, 1105i, var_0.x), u_input.c))));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-331f, 893f, 1465f, 311f))) * vec4<f32>(_wgslsmith_f_op_f32(1253f + -864f), 481f, -443f, _wgslsmith_f_op_f32(abs(540f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-799f, 1250f, 264f, -494f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, -853f, 1000f, 2321f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -915f, 546f, 327f), vec4<f32>(-1341f, 316f, 1000f, -487f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2166f, 780f, 603f, -441f)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false))))))));
    var var_3 = Struct_4(Struct_2(vec4<bool>(true, true, true, true), vec3<u32>(33437u, 30385u, countOneBits(u_input.b.x) ^ abs(34791u)), select(vec2<bool>(u_input.b.x < 41625u, true), vec2<bool>(false, any(vec3<bool>(true, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), ~(~(42571u | u_input.b.x))), 0u);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))) * _wgslsmith_f_op_f32(-var_2.x)), 196f, all(var_3.a.c))), vec4<u32>(~_wgslsmith_add_u32(0u, ~var_3.a.d), var_3.a.b.x, _wgslsmith_div_u32(var_3.a.d, _wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(67827u, u_input.a)) << (28964u % 32u)), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(124066u, 60808u, var_3.b, 4294967295u), u_input.b), u_input.a)));
    return false;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    let var_0 = Struct_3(select(true, any(vec3<bool>(true, true, func_3())), false), Struct_2(vec4<bool>(true, true, true, true), vec3<u32>(u_input.b.x, firstTrailingBit(_wgslsmith_div_u32(u_input.b.x, 4294967295u)), u_input.b.x), vec2<bool>(u_input.b.x <= _wgslsmith_sub_u32(12626u, u_input.a), select(u_input.b.x == 0u, any(vec2<bool>(false, false)), true)), ~0u), Struct_1(_wgslsmith_f_op_f32(abs(-298f)), min(vec4<u32>(u_input.b.x, min(u_input.b.x, u_input.b.x), ~17607u, max(37528u, u_input.a)), vec4<u32>(0u, 1u, 1u, ~u_input.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(285f + _wgslsmith_f_op_f32(f32(-1f) * -1512f)), arg_0.x)));
    let var_1 = Struct_3(var_0.a, var_0.b, Struct_1(1590f, ~select(vec4<u32>(72621u, 22924u, u_input.a, 1u), firstTrailingBit(vec4<u32>(var_0.c.b.x, 4284u, 67719u, 3993u)), true)), var_0.d);
    var var_2 = vec2<bool>(true, true);
    var_2 = var_1.b.a.wz;
    var_2 = vec2<bool>(all(select(vec4<bool>(!var_1.b.c.x, true, !var_2.x, true & var_1.a), select(select(vec4<bool>(var_1.b.c.x, var_0.a, true, var_2.x), var_0.b.a, var_1.b.a), !var_1.b.a, select(var_0.b.a, vec4<bool>(var_1.b.c.x, var_0.a, var_2.x, false), var_0.a)), false)), var_0.a);
    return _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(exp2(var_0.c.a)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec3<bool>(any(vec3<bool>(!any(vec4<bool>(false, false, false, true)), select(true, true, -29483i <= arg_2), arg_0.a >= _wgslsmith_f_op_f32(-1000f - arg_3.a))), true, true);
    let var_1 = firstTrailingBit(abs(u_input.c));
    var var_2 = !select(vec4<bool>(any(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), true, (arg_1 << (37423u % 32u)) != _wgslsmith_div_u32(1u, 54204u), false), select(!select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), var_0.x), !select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, false, var_0.x, var_0.x), false), !var_0.x), !vec4<bool>(true, var_0.x, all(vec3<bool>(false, true, var_0.x)), !var_0.x));
    let var_3 = Struct_4(Struct_2(!(!(!vec4<bool>(var_0.x, var_2.x, false, var_2.x))), vec3<u32>(4294967295u >> (~arg_1 % 32u), ~(~99970u), reverseBits(~arg_3.b.x)), select(vec2<bool>(false, arg_0.a >= 287f), var_2.yx, vec2<bool>(var_0.x, var_2.x)), 34236u >> (_wgslsmith_dot_vec2_u32(u_input.b.wz, vec2<u32>(43763u, arg_0.b.x)) % 32u)), 1u);
    var var_4 = arg_3.b.x;
    return var_3.a;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    let var_0 = Struct_4(func_4(Struct_1(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -525f, arg_1)))), arg_2.b), ~reverseBits(20632u), _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, 0i), 1i), arg_3), arg_2.b.x);
    var var_1 = var_0.a;
    var_1 = var_0.a;
    var_1 = var_0.a;
    var_1 = Struct_2(var_0.a.a, vec3<u32>(~(~arg_3.b.x) | (26407u ^ (var_1.b.x & u_input.a)), ~var_1.d, 1u), vec2<bool>(var_1.c.x, all(vec4<bool>(!var_0.a.c.x, true, true, arg_0))), arg_3.b.x);
    return Struct_3(!var_1.a.x, Struct_2(var_0.a.a, ~vec3<u32>(_wgslsmith_add_u32(var_1.d, 4294967295u), _wgslsmith_mod_u32(1181u, 1u), 1u), vec2<bool>(!(!var_0.a.c.x), select(u_input.a, 0u, true) > (var_1.d & 40287u)), var_1.d), Struct_1(197f, ~vec4<u32>(~1u, 20731u | u_input.a, func_4(arg_2, 62202u, u_input.c.x, arg_2).b.x, var_0.b)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_2.a, 739f)), _wgslsmith_f_op_f32(-arg_3.a)), -107f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.c.x & -22653i, -_wgslsmith_div_i32(20441i, u_input.c.x << (u_input.b.x % 32u)) | min(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), -u_input.c.wzx), ~(-22665i) | select(-4409i, -36696i, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(~u_input.c.x), -77105i, countOneBits(u_input.c.x) >> (0u % 32u)), ~(vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i) << (reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 47238u)) % vec3<u32>(32u)))), _wgslsmith_add_i32(~abs(~(-2147483647i)), -(i32(-1i) * -u_input.c.x)));
    var_0 = vec4<i32>(_wgslsmith_add_i32(~(-u_input.c.x << (u_input.a % 32u)), 25900i), u_input.c.x, 17193i, _wgslsmith_add_i32(var_0.x, 40262i));
    var var_1 = ~(-var_0.x);
    var_1 = 2147483647i;
    let var_2 = func_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-360f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1633f, 853f)))), _wgslsmith_f_op_f32(floor(-1363f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(219f)) - _wgslsmith_f_op_f32(f32(-1f) * -297f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - 2958f)))), abs(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 49794u, 54304u), vec4<u32>(u_input.a, 43854u, u_input.b.x, 25805u)), ~u_input.b))), Struct_1(_wgslsmith_f_op_f32(min(-526f, 1f)), u_input.b));
    var var_3 = select(select(!(!vec3<bool>(var_2.b.c.x, true, var_2.a)), var_2.b.a.wwz, vec3<bool>(true, true, _wgslsmith_f_op_f32(-var_2.c.a) == _wgslsmith_f_op_f32(1619f + 535f))), var_2.b.a.xxw, (!(u_input.c.x < -26159i) | func_4(var_2.c, ~4294967295u, var_0.x, var_2.c).a.x) | any(vec2<bool>(var_2.a, 20738u < var_2.b.b.x)));
    var_3 = !func_1(any(vec4<bool>(func_4(var_2.c, 0u, 2147483647i, var_2.c).a.x, true, var_2.b.c.x, var_3.x)), var_2.c.a, var_2.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.a * var_2.d.x) * -318f), _wgslsmith_add_vec4_u32(~u_input.b, u_input.b))).b.a.ywy;
    let var_4 = func_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_2.c.a, var_2.d.x)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c.a), _wgslsmith_f_op_f32(-var_2.c.a), all(var_2.b.a))))), Struct_1(328f, var_2.c.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.d.x * var_2.d.x), _wgslsmith_f_op_f32(floor(485f))))), var_2.c.b >> (u_input.b % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1585f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-995f, var_4.d.x))))), select(var_3.x, any(vec2<bool>(true, true)), var_2.a))), var_2.d.x);
}

