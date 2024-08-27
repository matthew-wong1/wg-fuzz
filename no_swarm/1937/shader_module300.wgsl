struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> i32 {
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(arg_1.a + arg_1.a))) - _wgslsmith_div_vec2_f32(vec2<f32>(-170f, _wgslsmith_f_op_f32(global0.a.x * -1000f)), arg_1.a)));
    let var_0 = firstTrailingBit(u_input.a.x);
    let var_1 = arg_1;
    let var_2 = Struct_2(firstTrailingBit(~select(~22330u, 1u, any(vec2<bool>(true, false)))), vec2<bool>(true, true));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(271f, arg_1.a.x, -1291f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-443f, -769f, var_1.a.x) + vec3<f32>(2738f, 1998f, global0.a.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, 1349f) + vec3<f32>(global0.a.x, 2307f, global0.a.x))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1519f, 1510f, arg_1.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2185f, global0.a.x, -1979f)), true))));
    return _wgslsmith_sub_i32(var_0, 0i);
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_2 {
    var var_0 = ~(-func_3(0i, Struct_4(_wgslsmith_f_op_vec2_f32(-global0.a))));
    let var_1 = true;
    var var_2 = select(_wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(62872i, -1i, 1i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, -2147483647i)) | vec4<i32>(u_input.a.x, 14689i, u_input.a.x, -5115i)), _wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(59057i), u_input.a.x, 2147483647i, -2147483647i), min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(4294967295u, 22017u, 1u, 0u) % vec4<u32>(32u)), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 23939i, -11618i))))), vec4<i32>(-countOneBits(u_input.a.x), _wgslsmith_div_i32((i32(-1i) * -10228i) << (1u % 32u), ~u_input.a.x), _wgslsmith_dot_vec3_i32(-select(vec3<i32>(2147483647i, 1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), false), vec3<i32>(u_input.a.x, reverseBits(u_input.a.x), u_input.a.x)), _wgslsmith_clamp_i32(0i, u_input.a.x, -2147483647i) << (~3257u % 32u)), vec4<bool>(u_input.a.x >= u_input.a.x, arg_1, arg_1, !(!arg_0)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.a.x, 760f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-322f + global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -610f)), true)), abs(~vec3<i32>(~var_2.x, -6858i, var_2.x)), vec3<u32>(1u, 1u, 1u));
    let var_4 = Struct_4(vec2<f32>(var_3.a, -166f));
    return Struct_2(var_3.c.x, vec2<bool>(var_1, var_1 || ((-131f <= var_4.a.x) != false)));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> vec3<bool> {
    global0 = Struct_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(525f, 529f) - -1271f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-669f, global0.a.x))), -1912f));
    let var_0 = !(!(!arg_0.b.b.x));
    var var_1 = arg_0.a.zz;
    var var_2 = !(!(!(u_input.a.x >= ~arg_1)));
    var_1 = vec2<u32>(~(~(~reverseBits(arg_0.b.a))), ~1u & min(arg_0.a.x, ~4294967295u >> (var_1.x % 32u)));
    return !vec3<bool>(true, ~1i > arg_1, true);
}

fn func_1() -> u32 {
    global0 = Struct_4(global0.a);
    var var_0 = select(select(func_4(Struct_3(abs(vec3<u32>(1u, 0u, 4294967295u)), func_2(false, false)), 45428i), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec2<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(false, false, false, false))))), !(!(!func_4(Struct_3(vec3<u32>(4294967295u, 0u, 0u), Struct_2(39144u, vec2<bool>(false, false))), -36409i))), true);
    let var_1 = vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(-30756i, -1i, 1i)));
    let var_2 = Struct_5(Struct_1(-584f, reverseBits(firstTrailingBit(vec3<i32>(u_input.a.x, -2147483647i, 2147483647i))), vec3<u32>(1u, 1u, 1u)));
    return var_2.a.c.x;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: vec4<f32>) -> Struct_4 {
    var var_0 = vec4<i32>(min(u_input.a.x, u_input.a.x), arg_2.a.b.x & u_input.a.x, 8908i, arg_2.a.b.x | 0i) | vec4<i32>(arg_2.a.b.x, -39744i, arg_2.a.b.x, _wgslsmith_div_i32(reverseBits(_wgslsmith_mod_i32(u_input.a.x, 114132i)), u_input.a.x));
    var var_1 = Struct_3(select(~vec3<u32>(29693u, arg_2.a.c.x ^ 90224u, 93066u), ~(arg_0 | vec3<u32>(4294967295u, 56758u, 52089u)), all(arg_1.xz)), func_2(arg_1.x, arg_1.x));
    var var_2 = arg_2;
    var_0 = vec4<i32>(-8372i, -var_0.x, firstLeadingBit(-var_0.x), var_0.x);
    let var_3 = ~4294967295u;
    return Struct_4(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(vec2<f32>(-198f, global0.a.x));
    global0 = func_5(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(~15446u, func_1(), 3273u)), vec4<bool>(select(min(9678i, 21085i) != u_input.a.x, false, select(true, func_2(false, false).b.x, true)), func_4(Struct_3(vec3<u32>(1668u, 1u, 450u), func_2(true, false)), 0i).x, !any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true)), true), Struct_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -407f), abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(692f - -549f) - _wgslsmith_f_op_f32(trunc(-1129f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-462f * -1037f)), _wgslsmith_f_op_f32(global0.a.x * -903f), _wgslsmith_f_op_f32(-global0.a.x))));
    global0 = Struct_4(global0.a);
    global0 = func_5(~abs(vec3<u32>(1u, 1u, 1u)), select(vec4<bool>(false, any(func_4(Struct_3(vec3<u32>(0u, 0u, 1u), Struct_2(34020u, vec2<bool>(false, true))), -13417i)), _wgslsmith_add_i32(u_input.a.x, -2147483647i) > u_input.a.x, true), select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true), false), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))), Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global0.a.x) - global0.a.x), vec3<i32>(u_input.a.x, min(-3363i, -2147483647i), u_input.a.x), vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(564f, global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x - 232f), -998f), 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1297f, -535f, global0.a.x, global0.a.x)))) + vec4<f32>(_wgslsmith_div_f32(global0.a.x, 546f), -955f, -447f, -274f)))));
    global0 = func_5(select(vec3<u32>(20766u, 1u, ~4294967295u), ~vec3<u32>(62602u, min(27087u, 1619u), 1u), all(vec2<bool>(true, u_input.a.x >= 18795i))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(all(vec3<bool>(true, false, true)), select(true, true, true), true, func_2(true, true).b.x), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true))), true), Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.x, global0.a.x))), reverseBits(vec3<i32>(u_input.a.x, 22302i, u_input.a.x)) ^ vec3<i32>(35461i, u_input.a.x, u_input.a.x), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(52483u, 4294967295u, 11389u), vec3<u32>(24968u, 0u, 4294967295u), vec3<u32>(0u, 2478u, 0u)), vec3<u32>(1u, 88688u, 0u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) * 497f), -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1402f)))), global0.a.x)));
    global0 = func_5(vec3<u32>(1u, 1u, 1u), vec4<bool>(any(vec2<bool>(false, false)) | true, any(vec3<bool>(true, true, true)), true, false), Struct_5(Struct_1(_wgslsmith_f_op_f32(ceil(global0.a.x)), vec3<i32>(countOneBits(1i), i32(-1i) * -11891i, 62752i), ~countOneBits(vec3<u32>(3271u, 53994u, 0u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, true)), _wgslsmith_f_op_f32(select(243f, -551f, true))), 1099f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + global0.a.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 687f, global0.a.x, _wgslsmith_f_op_f32(abs(1025f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(332f, global0.a.x, 503f, -598f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, -160f, global0.a.x))))));
    var var_0 = Struct_5(Struct_1(631f, ~(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, -1i)), ~(~vec3<u32>(1u, 1u, 1u))));
    let var_1 = var_0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.a.a)), -892f), _wgslsmith_div_f32(var_0.a.a, global0.a.x), 226f), ~_wgslsmith_dot_vec2_i32(vec2<i32>(min(-12880i, var_1.x), ~var_0.a.b.x), ~var_0.a.b.zz), global0.a.x);
}

