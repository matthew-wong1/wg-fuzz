struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(-604f)), -1244f, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-409f, arg_1.x, -333f) + arg_1) - arg_1))) - arg_1), 153328u, Struct_2(vec2<bool>(all(!vec4<bool>(false, arg_2.x, true, true)), arg_2.x), Struct_1(!arg_2.x, _wgslsmith_mult_vec2_i32(u_input.c, min(u_input.c, vec2<i32>(u_input.d, 1i)))), Struct_1(!(u_input.b.x != u_input.a), u_input.c)), Struct_1(select(!arg_2.x, all(vec3<bool>(true, arg_2.x, arg_2.x)), all(vec2<bool>(arg_2.x, arg_2.x))) | any(select(arg_2, vec3<bool>(true, false, true), arg_2.x)), u_input.c));
    var var_1 = _wgslsmith_add_vec2_u32(max(vec2<u32>(50276u, var_0.b), u_input.b.yy), select(countOneBits(u_input.b.xx), countOneBits(u_input.b.xz), false));
    var var_2 = !(~var_0.b < 0u);
    var_1 = vec2<u32>(_wgslsmith_div_u32(u_input.a, 63881u), abs(min(~_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(0u, arg_0)), 4294967295u)));
    var_2 = false;
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1327f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1951f, -349f) - -124f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_0, vec3<f32>(761f, -763f, 1875f), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1429f, 158f)), _wgslsmith_f_op_f32(min(610f, 907f)))), all(vec4<bool>(true, true, true, true)) || true)), 545f, true));
    let var_1 = (_wgslsmith_div_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.b.x, 4294967295u, 1u, 4294967295u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.b.x, arg_0, u_input.a), ~vec4<u32>(arg_0, 13327u, arg_0, 10396u))) | (select(vec4<u32>(u_input.a, 68745u, arg_0, 0u) << (vec4<u32>(59358u, arg_0, 1u, u_input.a) % vec4<u32>(32u)), vec4<u32>(arg_0, 4294967295u, arg_0, arg_0), true) & ~max(vec4<u32>(u_input.b.x, arg_0, u_input.b.x, arg_0), vec4<u32>(55418u, 1u, 4294967295u, u_input.a)))) | select(~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0, 0u, arg_0, 25635u), vec4<u32>(arg_0, u_input.a, 103404u, u_input.a)), ~vec4<u32>(arg_0, 1u << (0u % 32u), _wgslsmith_sub_u32(arg_0, u_input.b.x), u_input.a), vec4<bool>(true, true, true, true));
    var var_2 = !vec4<bool>(!(any(vec2<bool>(false, true)) == true), true, !(any(vec3<bool>(false, true, false)) && all(vec3<bool>(false, true, true))), true);
    var var_3 = u_input.c;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(364f, 169f) * _wgslsmith_f_op_f32(min(-278f, 515f))))))));
    return vec4<bool>(any(vec4<bool>(true, var_2.x, var_2.x || all(var_2.wy), !(var_3.x >= u_input.d))), true, true, var_2.x | true);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)) || any(vec4<bool>(false, true, true, false)), any(func_2(4294967295u)))), Struct_1(all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), min(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, u_input.d), u_input.c), select(u_input.c, u_input.c, vec2<bool>(false, false))), u_input.c)), Struct_1(any(vec4<bool>(true, any(vec2<bool>(true, true)), true, u_input.d < u_input.c.x)), vec2<i32>(-_wgslsmith_mult_i32(u_input.d, u_input.c.x), countOneBits(12301i))));
    let var_1 = _wgslsmith_dot_vec2_i32(-firstTrailingBit(~vec2<i32>(-1i, -5580i)), vec2<i32>(max(~2147483647i, var_0.c.b.x), _wgslsmith_add_i32(-u_input.d >> (abs(u_input.b.x) % 32u), _wgslsmith_add_i32(_wgslsmith_div_i32(var_0.b.b.x, -54464i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.b.x, var_0.b.b.x), vec2<i32>(-20539i, -21276i))))));
    var var_2 = firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, 0u));
    var var_3 = !func_2(min(u_input.a, u_input.a)).zz;
    return Struct_1((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-142f)) + _wgslsmith_f_op_f32(f32(-1f) * -1383f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(0u, vec3<f32>(631f, 1299f, 1288f), vec3<bool>(false, false, var_3.x))) + -384f)) & var_3.x, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-46575i, var_0.c.b.x, 0i, 0i), ~vec4<i32>(var_0.b.b.x, var_0.b.b.x, var_1, 0i)), -8659i), ~u_input.c));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec4<i32>) -> i32 {
    var var_0 = 7424i;
    var var_1 = Struct_1(true, arg_2.yw);
    var var_2 = Struct_2(vec2<bool>(4294967295u <= _wgslsmith_div_u32(select(u_input.a, u_input.a, arg_1.b.a), _wgslsmith_div_u32(u_input.a, 4294967295u)), true), func_1(), func_1());
    var_1 = Struct_1(!(!(!all(vec4<bool>(false, arg_0.a.x, arg_0.c.a, arg_0.b.a)))), var_2.c.b);
    var var_3 = !(!select(select(!vec3<bool>(true, false, arg_1.a.x), !vec3<bool>(true, arg_0.b.a, false), func_2(u_input.a).x), vec3<bool>(true, true, true), arg_0.c.a));
    return -select(~abs(1i), _wgslsmith_dot_vec4_i32(arg_3, firstLeadingBit(vec4<i32>(arg_1.c.b.x, u_input.d, 0i, arg_3.x) | arg_2)), select(arg_0.c.a, true, func_2(u_input.a).x));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = !(-564f > _wgslsmith_f_op_f32(round(-279f)));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-421f)))));
    let var_3 = select(!select(vec3<bool>(var_0, var_0, true), vec3<bool>(true, any(vec2<bool>(true, var_0)), all(vec4<bool>(var_1.a, var_1.a, var_0, var_1.a))), true), !(!select(func_2(arg_1.x).yyz, select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, false), false), func_2(1u).yzy)), !(!(!(!vec3<bool>(false, false, var_0)))));
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) - _wgslsmith_f_op_f32(round(-502f)))))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(427f, 1f, _wgslsmith_f_op_f32(abs(-162f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-871f + 989f), -658f, _wgslsmith_f_op_f32(368f - 212f)))), 122039u, Struct_2(func_2(_wgslsmith_mod_u32(u_input.b.x, 1u)).wy, Struct_1(all(select(var_3, vec3<bool>(var_1.a, var_0, true), var_0)), vec2<i32>(-1i, var_1.b.x)), func_1()), Struct_1(any(!(!var_3.xx)), reverseBits(abs(vec2<i32>(var_1.b.x, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, select(vec2<i32>(u_input.c.x, countOneBits(-693i)), ~u_input.c, vec2<bool>(true, true)));
    var var_1 = func_5(_wgslsmith_mult_i32(func_4(Struct_2(!vec2<bool>(var_0.a, false), func_1(), Struct_1(var_0.a, var_0.b)), Struct_2(select(vec2<bool>(var_0.a, true), vec2<bool>(false, var_0.a), vec2<bool>(false, var_0.a)), func_1(), func_1()), vec4<i32>(_wgslsmith_mod_i32(-19712i, 58238i), ~var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, u_input.d, var_0.b.x), vec4<i32>(var_0.b.x, -7056i, u_input.d, 0i)), u_input.c.x), -reverseBits(vec4<i32>(2147483647i, var_0.b.x, var_0.b.x, 1i))), 9010i), _wgslsmith_mod_vec4_u32(vec4<u32>(54049u, u_input.b.x, 0u, ~_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(1231u, u_input.b.x))), ~vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 1u), _wgslsmith_div_u32(110441u, 1113u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), u_input.b))));
    let var_2 = true;
    var_1 = func_5(min(u_input.c.x, var_0.b.x), vec4<u32>(0u, ~(~var_1.b), 31371u, 0u) | vec4<u32>(47735u, ~_wgslsmith_add_u32(1u, u_input.a), (var_1.b | var_1.b) >> (var_1.b % 32u), _wgslsmith_div_u32(u_input.b.x, _wgslsmith_mod_u32(var_1.b, 4294967295u))));
    let var_3 = select(vec4<bool>(true, var_2, false, false), !(!(!vec4<bool>(var_1.c.b.a, true, false, true))), func_2(~(~var_1.b)));
    var_0 = Struct_1(func_5(-5450i, ~(~vec4<u32>(u_input.b.x, 42669u, var_1.b, var_1.b) << ((vec4<u32>(u_input.a, 41359u, 0u, u_input.a) | vec4<u32>(0u, var_1.b, 1u, 52732u)) % vec4<u32>(32u)))).c.a.x, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, min(0i, var_0.b.x)) << (max(firstTrailingBit(u_input.b.xz), ~vec2<u32>(22686u, 76843u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(var_1.c.c.b, select(var_0.b, ~vec2<i32>(12283i, 2147483647i), false))));
    var_1 = func_5(var_1.c.c.b.x, vec4<u32>(_wgslsmith_mod_u32(~min(10813u, 15191u), 19785u), ~1u, _wgslsmith_div_u32(u_input.a, ~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(33903u, ~var_1.b), firstTrailingBit(vec2<u32>(4294967295u, var_1.b)))));
    var var_4 = u_input.b;
    let var_5 = var_1.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(2891f);
}

