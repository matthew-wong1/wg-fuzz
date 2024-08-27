struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-384f, 175f), vec2<f32>(387f, -475f), vec2<f32>(-1000f, -1000f), vec2<f32>(-125f, -449f), vec2<f32>(-832f, -1000f), vec2<f32>(1000f, -804f), vec2<f32>(775f, -141f));

var<private> global1: bool;

var<private> global2: bool = true;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = true;
    let var_1 = vec2<bool>(!all(!select(vec3<bool>(arg_0.d.b.b, arg_2.x, false), arg_2, arg_2)), select(arg_1.b.b, arg_1.b.a, arg_0.d.b.a));
    let var_2 = 1743i;
    let var_3 = arg_0;
    var var_4 = ~u_input.d.xz;
    return arg_2;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    global0 = array<vec2<f32>, 7>();
    let var_0 = select(!select(vec2<bool>(all(vec2<bool>(arg_0.a, arg_0.a)), any(vec2<bool>(arg_0.b, arg_0.a))), !func_1(Struct_3(arg_0, vec4<i32>(u_input.e, u_input.e, -42533i, u_input.e), false, Struct_2(vec3<i32>(24166i, -1i, -1i), arg_0, 2205f, -992f)), Struct_2(vec3<i32>(-34252i, -34185i, 1i), arg_0, -1000f, -111f), vec3<bool>(false, arg_0.b, arg_0.a)).yx, select(vec2<bool>(false, false), !vec2<bool>(arg_0.a, arg_0.a), !vec2<bool>(arg_0.a, true))), select(!func_1(Struct_3(Struct_1(arg_0.a, arg_0.a), vec4<i32>(u_input.e, u_input.e, u_input.e, -5292i), true, Struct_2(vec3<i32>(-61199i, u_input.e, u_input.e), arg_0, 837f, 1000f)), Struct_2(vec3<i32>(41067i, 4349i, -1i), arg_0, -507f, 1231f), !vec3<bool>(arg_0.b, arg_0.b, true)).zx, vec2<bool>(false, true || arg_0.b), !select(select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.b, false), vec2<bool>(false, arg_0.b)), vec2<bool>(true, arg_0.b), select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, arg_0.a), arg_0.a))), vec2<bool>(any(select(vec2<bool>(arg_0.a, true), select(vec2<bool>(arg_0.b, false), vec2<bool>(arg_0.b, arg_0.a), vec2<bool>(true, arg_0.a)), vec2<bool>(true, false))), false));
    var var_1 = Struct_2(select(_wgslsmith_add_vec3_i32(~(-vec3<i32>(u_input.e, u_input.e, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, -1i, 1i) << (u_input.c % vec3<u32>(32u)), vec3<i32>(u_input.e, -24495i, u_input.e) ^ vec3<i32>(-11522i, u_input.e, u_input.e))), (vec3<i32>(u_input.e, u_input.e, u_input.e) << (select(u_input.d.yyx, u_input.c, var_0.x) % vec3<u32>(32u))) ^ ~select(vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<i32>(32255i, u_input.e, -1871i), var_0.x), !vec3<bool>(false, var_0.x, var_0.x)), Struct_1(!((arg_1 | arg_1) != ~16795u), arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1239f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(611f, _wgslsmith_f_op_f32(-897f - -161f), !any(vec2<bool>(true, arg_0.b))))));
    var_1 = Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(-6613i, ~var_1.a.x, var_1.a.x) & -var_1.a, ~(_wgslsmith_mod_vec3_i32(var_1.a, var_1.a) >> (~vec3<u32>(0u, u_input.d.x, 52268u) % vec3<u32>(32u)))), Struct_1(all(!(!vec4<bool>(var_0.x, false, arg_0.a, var_0.x))), !var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1044f, 181f)) * _wgslsmith_f_op_f32(round(var_1.d))), _wgslsmith_f_op_f32(floor(400f)))), 1000f);
    var_1 = Struct_2(var_1.a, Struct_1(var_0.x, !(select(arg_0.b, false, false) & true)), var_1.c, _wgslsmith_f_op_f32(var_1.c * 1267f));
    return ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.a.x, var_1.a.x), var_1.a.x) >> (u_input.b % 32u), 1i);
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global2 = true;
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, ~1u), vec2<u32>(0u, 4294967295u ^ u_input.a.x)), ~32724u, firstTrailingBit(u_input.c.x));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 21316i), vec2<i32>(func_3(Struct_1(false, false), 1u), countOneBits(1i))) >= abs(1i), all(vec3<bool>(false, true, !(var_0.x < 65164u))));
    var_1 = Struct_1(var_1.b, false);
    var var_2 = Struct_2(arg_0, Struct_1(true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(119f + 1516f) + _wgslsmith_f_op_f32(f32(-1f) * -1138f)) + _wgslsmith_f_op_f32(-1063f * _wgslsmith_div_f32(538f, -485f))) * -643f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1552f)))) * _wgslsmith_f_op_f32(-1338f + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(718f, 1116f))))));
    return Struct_2(~(-arg_0), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-739f, var_2.c)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1637f)) + var_2.d), !var_2.b.b), var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2328f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1813f, var_2.c)), var_2.d, false)))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    global0 = array<vec2<f32>, 7>();
    let var_0 = func_2(select(countOneBits(arg_1.a), arg_1.a, false));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1487f)) - 1157f))) <= _wgslsmith_f_op_f32(sign(1f));
    var var_2 = arg_1;
    var_2 = var_0;
    return Struct_3(Struct_1(any(func_1(Struct_3(Struct_1(true, arg_2.b), vec4<i32>(2147483647i, -6023i, -2147483647i, u_input.e), false, var_0), arg_1, !vec3<bool>(arg_0, var_0.b.b, arg_2.b)).yx), 70500u >= _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.d.x, u_input.d.x)), u_input.b)), select(-_wgslsmith_sub_vec4_i32(vec4<i32>(-40561i, u_input.e, 0i, -9583i), vec4<i32>(var_0.a.x, -36067i, 18405i, -41573i)), -abs(vec4<i32>(var_0.a.x, -69529i, var_2.a.x, -3783i)), vec4<bool>(u_input.e > var_0.a.x, arg_1.b.b, true, arg_2.a == var_0.b.a)) | (vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(2147483647i, 60463i, arg_1.a.x, 32365i))), true, Struct_2(~var_0.a, Struct_1(any(select(vec2<bool>(arg_1.b.a, arg_0), vec2<bool>(false, false), vec2<bool>(false, false))), !arg_1.b.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -260f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)))), 1644f));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_3) -> u32 {
    let var_0 = ~(~_wgslsmith_div_u32(~(~u_input.a.x), reverseBits(u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -812f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.d.d, arg_2.d.d))))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(450f)), -2608f) * _wgslsmith_f_op_f32(-519f - arg_0.x)));
    var var_2 = arg_2.d.b;
    let var_3 = _wgslsmith_add_vec4_i32(abs(arg_2.b), _wgslsmith_mod_vec4_i32(func_4(false, func_4(func_1(arg_2, Struct_2(vec3<i32>(13061i, -1i, arg_2.d.a.x), arg_2.a, arg_0.x, -1775f), arg_1).x, func_2(arg_2.d.a), Struct_1(true, true)).d, arg_2.d.b).b, vec4<i32>(-1932i, arg_2.d.a.x, 2147483647i, -2147483647i)));
    var var_4 = arg_2;
    return u_input.a.x >> (0u % 32u);
}

fn func_6(arg_0: u32, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f), -678f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1184f, 260f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-232f - -1473f) * _wgslsmith_f_op_f32(293f + -223f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1f, func_2(vec3<i32>(u_input.e, 0i, 0i)).c), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(828f + -188f), -351f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(func_2(vec3<i32>(u_input.e, 12260i, u_input.e)).d, _wgslsmith_f_op_f32(-559f - 211f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1422f, -702f), 169f, u_input.e == 2147483647i))) * func_2(vec3<i32>(-1i) * -vec3<i32>(36501i, 1i, 16541i)).c));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-215f, var_0.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(585f))), arg_1.x), abs(vec4<i32>(-70545i, u_input.e, _wgslsmith_mult_i32(-13263i, _wgslsmith_sub_i32(-2147483647i, u_input.e)), -64185i)), select(true, (select(u_input.e, u_input.e, true) >= 1i) && select(true, all(vec3<bool>(true, false, arg_1.x)), arg_1.x | true), (~u_input.d.x == ~arg_0) & func_1(Struct_3(Struct_1(true, arg_1.x), vec4<i32>(-2147483647i, u_input.e, -36518i, -1i), arg_1.x, Struct_2(vec3<i32>(2147483647i, -1i, -2599i), Struct_1(false, arg_1.x), var_0.x, var_0.x)), func_2(vec3<i32>(u_input.e, -2147483647i, u_input.e)), vec3<bool>(arg_1.x, true, false)).x), func_4(arg_1.x, func_4(all(vec3<bool>(false, arg_1.x, arg_1.x)), func_4(all(vec4<bool>(arg_1.x, true, arg_1.x, true)), func_4(arg_1.x, Struct_2(vec3<i32>(0i, u_input.e, -28628i), Struct_1(false, arg_1.x), 475f, -693f), Struct_1(arg_1.x, true)).d, Struct_1(false, arg_1.x)).d, func_4(true, func_4(arg_1.x, Struct_2(vec3<i32>(u_input.e, 1i, u_input.e), Struct_1(true, arg_1.x), 458f, var_0.x), Struct_1(arg_1.x, false)).d, func_4(arg_1.x, Struct_2(vec3<i32>(u_input.e, -29975i, u_input.e), Struct_1(arg_1.x, true), -349f, -1672f), Struct_1(arg_1.x, arg_1.x)).d.b).d.b).d, Struct_1(true, var_0.x == 246f)).d);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_clamp_u32(func_5(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.c.x, ~1u), 7u)], select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), func_1(Struct_3(Struct_1(true, true), vec4<i32>(0i, 64736i, u_input.e, 2147483647i), true, Struct_2(vec3<i32>(2147483647i, 2147483647i, u_input.e), Struct_1(true, true), -1047f, 401f)), Struct_2(vec3<i32>(28270i, u_input.e, -1i), Struct_1(false, false), 1023f, -1054f), vec3<bool>(false, true, true))), func_4(-30238i < u_input.e, func_2(vec3<i32>(6501i, u_input.e, 1i)), Struct_1(true, true))), ~u_input.d.x, ~_wgslsmith_dot_vec3_u32(u_input.a & u_input.c, vec3<u32>(114487u, 0u, u_input.c.x))), vec2<bool>(true, _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.e, u_input.e), vec2<i32>(2147483647i, 16945i), true), vec2<i32>(0i, u_input.e)) <= 1i));
    var var_1 = func_4(func_1(Struct_3(func_2(vec3<i32>(var_0.b.x, 1i, var_0.d.a.x)).b, vec4<i32>(i32(-1i) * -2147483647i, var_0.d.a.x << (u_input.d.x % 32u), func_2(var_0.b.wxw).a.x, _wgslsmith_sub_i32(48107i, var_0.b.x)), any(vec3<bool>(true, var_0.d.b.a, var_0.a.b)) & func_2(vec3<i32>(u_input.e, var_0.d.a.x, -7809i)).b.b, func_2(firstTrailingBit(var_0.b.zyx))), func_4(var_0.c, Struct_2(_wgslsmith_div_vec3_i32(var_0.d.a, vec3<i32>(u_input.e, 20965i, -12682i)), Struct_1(true, false), _wgslsmith_f_op_f32(-812f * var_0.d.d), func_4(var_0.c, Struct_2(vec3<i32>(37615i, -6531i, -1i), var_0.d.b, var_0.d.d, -2302f), Struct_1(var_0.c, var_0.d.b.a)).d.c), Struct_1(any(vec4<bool>(var_0.d.b.b, var_0.d.b.b, var_0.d.b.b, var_0.d.b.a)), true)).d, vec3<bool>(false, true, false)).x, Struct_2(_wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, var_0.d.a.x, 0i), var_0.b.xzy), var_0.a, var_0.d.c, 1722f), Struct_1(true, false)).d.b;
    global1 = func_4(true, func_2(vec3<i32>(u_input.e, max(countOneBits(u_input.e), countOneBits(u_input.e)), u_input.e & _wgslsmith_mod_i32(0i, -32970i))), func_2(func_6(1u, !vec2<bool>(var_0.d.b.b, true)).d.a & vec3<i32>(-24234i, 0i, func_2(var_0.d.a).a.x)).b).c;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.c, 358f, 1383f, -1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(338f, -117f, var_0.d.d, var_0.d.d))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.d, 1260f, var_0.d.c, var_0.d.c) - vec4<f32>(var_0.d.d, -700f, var_0.d.c, -1948f))))))));
    var var_3 = func_6(~(func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1890f, 1149f))), vec3<bool>(true, false, var_0.a.a), Struct_3(var_0.a, var_0.b, false, Struct_2(vec3<i32>(1i, -13185i, u_input.e), var_0.a, var_2.x, 2541f))) | u_input.c.x), vec2<bool>(var_1.a, 13726i > _wgslsmith_dot_vec4_i32(vec4<i32>(-13873i, -5572i, -1i, -1i), ~vec4<i32>(u_input.e, 0i, 0i, 0i)))).d;
    var_1 = func_4(false, var_0.d, func_4(true, var_0.d, var_0.a).d.b).d.b;
    var var_4 = !select(vec4<bool>(all(vec3<bool>(var_1.a, var_0.c, var_0.c)), any(!vec4<bool>(var_3.b.b, true, false, true)), !var_0.d.b.b, var_1.b), !(!(!vec4<bool>(var_3.b.a, true, false, var_3.b.a))), vec4<bool>(any(vec4<bool>(var_3.b.b, var_1.b, var_0.c, var_3.b.a)) == var_1.a, !all(vec2<bool>(var_3.b.b, var_1.a)), !(u_input.c.x != u_input.b), true));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0.b, ~_wgslsmith_clamp_vec4_i32(var_0.b, var_0.b, vec4<i32>(-46928i, -17297i, var_0.b.x, var_3.a.x))) ^ vec4<i32>(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_3.a.x, -2147483647i), ~33903i), var_0.b.x, 3551i), _wgslsmith_f_op_vec4_f32(var_2 - vec4<f32>(func_4(!var_0.c, func_4(true, Struct_2(vec3<i32>(1i, 1i, -3121i), Struct_1(var_0.a.a, false), var_2.x, -1000f), Struct_1(var_1.a, var_0.d.b.a)).d, Struct_1(var_4.x, true)).d.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1186f, var_0.d.c) * var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1296f, -453f, var_0.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -269f))))), _wgslsmith_dot_vec2_i32(vec2<i32>(func_6(~u_input.b, !var_4.yy).d.a.x, ~32476i), ~vec2<i32>(0i, u_input.e ^ var_3.a.x)), 1u, select(~u_input.b, _wgslsmith_sub_u32(_wgslsmith_add_u32(45201u, u_input.c.x), ~u_input.b), !var_4.x || (var_3.b.b | var_0.c)) >> (((0u & ~u_input.b) & ~4294967295u) % 32u));
}

