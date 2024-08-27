struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-1i, -52007i), vec2<i32>(45559i, -11612i), vec2<i32>(17308i, -1i), vec2<i32>(0i, 15995i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(4i, 66156i), vec2<i32>(i32(-2147483648), -17538i), vec2<i32>(58225i, 1i), vec2<i32>(47473i, -29517i), vec2<i32>(-106156i, 34238i), vec2<i32>(-1i, 52424i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-36445i, 1i), vec2<i32>(-22564i, -41575i), vec2<i32>(i32(-2147483648), -20462i), vec2<i32>(12893i, 2147483647i), vec2<i32>(-1i, 40061i), vec2<i32>(1i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(36559i, 0i), vec2<i32>(0i, 20220i));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = !(all(select(select(arg_1, vec2<bool>(arg_1.x, arg_1.x), arg_1.x), select(vec2<bool>(arg_1.x, arg_1.x), arg_1, false), select(vec2<bool>(arg_1.x, true), arg_1, false))) & arg_1.x);
    global0 = array<vec2<i32>, 22>();
    let var_1 = _wgslsmith_mod_u32(~(~_wgslsmith_add_u32(21132u, 4457u)), u_input.a) > ~_wgslsmith_div_u32(u_input.a >> (0u % 32u), abs(~arg_0.x));
    var var_2 = Struct_4(select(select(!(!vec3<bool>(arg_1.x, false, var_0)), select(select(vec3<bool>(false, arg_1.x, false), vec3<bool>(arg_1.x, true, true), arg_1.x), !vec3<bool>(arg_1.x, var_1, var_0), arg_1.x), (1i <= u_input.b.x) || !arg_1.x), vec3<bool>(any(!vec2<bool>(var_0, false)), true == var_1, var_0), select(!vec3<bool>(true, var_1, true), vec3<bool>(all(arg_1), true, any(arg_1)), select(!vec3<bool>(true, var_1, arg_1.x), vec3<bool>(false, true, var_1), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-117f, 715f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-595f, -1000f))), vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(319f, -503f)))))))), abs(min(~(~arg_0.x), firstTrailingBit(u_input.a))));
    var_2 = Struct_4(var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_2.b.x))))), var_2.c);
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> vec3<i32> {
    var var_0 = arg_1.x;
    var_0 = all(!select(select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, false, arg_1.x, false), !vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), false & arg_1.x), vec4<bool>(!arg_1.x, true, false, arg_1.x | arg_1.x)));
    let var_1 = true;
    let var_2 = Struct_5(_wgslsmith_div_f32(-694f, 1336f));
    let var_3 = -2147483647i;
    return min(vec3<i32>(u_input.b.x, -var_3 << (20609u % 32u), -29354i), min(~vec3<i32>(1i, 1i, 1i), vec3<i32>(-var_3, 1774i, abs(var_3))) >> (~(~(~vec3<u32>(66596u, 50835u, 14460u))) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_3(arg_1.a, _wgslsmith_div_u32(arg_0.d.x, firstLeadingBit(u_input.e)));
    let var_1 = ~(~_wgslsmith_mod_u32(arg_1.b, 4294967295u) >> (~arg_0.d.x % 32u)) >= _wgslsmith_clamp_u32(max(0u, arg_0.d.x), max(~arg_2.d.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.d.x, 565u, arg_0.d.x), select(arg_2.d, vec3<u32>(1u, arg_1.b, 18837u), false))), arg_0.d.x);
    var var_2 = !vec4<bool>(false, select(abs(arg_0.b), _wgslsmith_clamp_i32(var_0.a.b.x, 27923i, arg_0.b), arg_2.a.x & var_0.a.a) > _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_3.x, 19197i, 0i), vec3<i32>(-35409i, 47284i, -12710i)), true, var_1);
    var var_3 = !vec4<bool>(arg_0.a.x, (_wgslsmith_clamp_u32(arg_1.b, arg_1.b, 81265u) > var_0.b) || true, var_1, false);
    var_2 = select(vec4<bool>(func_3(countOneBits(arg_0.d.zz), arg_0.a).x, 36823u <= ~_wgslsmith_add_u32(u_input.c, arg_2.d.x), !(!var_2.x), arg_2.a.x & all(vec3<bool>(var_0.a.a, true, true))), !(!(!select(vec4<bool>(false, true, var_0.a.a, var_1), vec4<bool>(var_3.x, false, false, true), vec4<bool>(true, var_0.a.a, true, var_2.x)))), true);
    return arg_0.e;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_5(Struct_2(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), all(vec3<bool>(true, false, true))), i32(-1i) * -1i, true, firstTrailingBit(select(vec3<u32>(u_input.e, u_input.d, 0u), vec3<u32>(43373u, u_input.e, 4294967295u), true)) ^ reverseBits(vec3<u32>(u_input.c, 1u, u_input.d) | vec3<u32>(50975u, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(328f)))), Struct_3(Struct_1(true, func_4(u_input.d, func_3(vec2<u32>(2762u, 1u), vec2<bool>(false, true))), -482f, 1569f), 46297u), Struct_2(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), u_input.b.x, select(false, false, true), _wgslsmith_div_vec3_u32(~select(vec3<u32>(u_input.d, 1u, u_input.e), vec3<u32>(u_input.d, u_input.e, u_input.d), true), abs(vec3<u32>(u_input.e, u_input.c, u_input.d)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, 1u, u_input.c), vec3<u32>(u_input.a, 45919u, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(max(842f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(641f + 120f))))), (firstTrailingBit(-vec3<i32>(43659i, -2147483647i, u_input.b.x)) >> (max(abs(vec3<u32>(49123u, 56366u, 128775u)), firstTrailingBit(vec3<u32>(u_input.e, 4294967295u, u_input.c))) % vec3<u32>(32u))) << (reverseBits(~select(vec3<u32>(u_input.c, u_input.e, u_input.c), vec3<u32>(u_input.c, u_input.a, 21804u), false)) % vec3<u32>(32u))));
    let var_1 = Struct_1(true, _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(51908u, 4294967295u, u_input.a) ^ vec3<u32>(63862u, 67753u, 1u), ~vec3<u32>(u_input.a, 0u, u_input.a)) % vec3<u32>(32u)), abs(vec3<i32>(_wgslsmith_sub_i32(42067i, -25770i), u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1684f))), -474f);
    let var_2 = Struct_4(select(!(!select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(false, var_1.a, true), false)), vec3<bool>(var_1.a, false, select(any(vec3<bool>(false, var_1.a, true)), var_1.a, !var_1.a)), vec3<bool>(true, any(select(vec3<bool>(var_1.a, false, false), vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, false))), var_1.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-972f + _wgslsmith_f_op_f32(func_5(Struct_2(vec2<bool>(var_1.a, var_1.a), u_input.b.x, true, vec3<u32>(1u, 0u, 205u), var_1.c), Struct_3(Struct_1(true, var_1.b, var_1.d, -1338f), 1u), Struct_2(vec2<bool>(false, var_1.a), var_1.b.x, false, vec3<u32>(u_input.d, u_input.a, u_input.d), var_1.d), var_1.b))) + _wgslsmith_f_op_f32(var_1.c + -221f)), -963f), 4294967295u);
    var var_3 = min(var_1.b, vec3<i32>(0i, u_input.b.x, -_wgslsmith_dot_vec3_i32(-var_1.b, var_1.b)));
    global0 = array<vec2<i32>, 22>();
    return ~_wgslsmith_mult_u32(~(~var_2.c), 4294967295u);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: Struct_5, arg_3: i32) -> f32 {
    global0 = array<vec2<i32>, 22>();
    var var_0 = -183f;
    var var_1 = -572f;
    global0 = array<vec2<i32>, 22>();
    let var_2 = ~vec3<u32>(~(~20733u), func_2(), _wgslsmith_add_u32(u_input.e, _wgslsmith_dot_vec4_u32(~arg_0, min(arg_0, vec4<u32>(arg_0.x, 29720u, arg_0.x, u_input.a)))));
    return _wgslsmith_f_op_f32(-1123f - -1016f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true, true, true & (u_input.a == (7484u << (u_input.e % 32u))));
    let var_1 = vec4<f32>(985f, -953f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2111f)))), 124f);
    var_0 = !all(vec3<bool>(true, false, true));
    let var_2 = firstLeadingBit(countOneBits(57254i));
    global0 = array<vec2<i32>, 22>();
    global0 = array<vec2<i32>, 22>();
    var var_3 = Struct_1(var_1.x < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(516f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(4294967295u, 0u, 45839u, 17979u), Struct_5(var_1.x), Struct_5(var_1.x), -1i)), _wgslsmith_div_f32(-2141f, 1999f)))), min(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_2, -2147483647i, -2147483647i), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))), func_4(~u_input.c, vec2<bool>(true, true))) | _wgslsmith_mult_vec3_i32((vec3<i32>(14705i, -1i, -2147483647i) << (vec3<u32>(4294967295u, u_input.a, u_input.c) % vec3<u32>(32u))) << (vec3<u32>(u_input.c, 22138u, 1u) % vec3<u32>(32u)), -vec3<i32>(17387i, 2147483647i, u_input.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(567f - _wgslsmith_div_f32(-228f, var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-972f + var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_2, -1i, u_input.b.x), _wgslsmith_f_op_f32(-var_3.d));
}

