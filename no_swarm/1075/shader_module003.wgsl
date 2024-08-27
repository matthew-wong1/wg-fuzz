struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-32274i, -12773i, -52390i);

var<private> global1: array<vec2<u32>, 18>;

var<private> global2: bool = false;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = array<vec2<u32>, 18>();
    global0 = -(~vec3<i32>(global0.x >> (u_input.a.x % 32u), u_input.c, abs(global0.x | 3935i)));
    var var_0 = reverseBits(vec4<i32>(2147483647i, _wgslsmith_add_i32(-72519i | u_input.e, _wgslsmith_mod_i32(u_input.c, -2147483647i)), global0.x, i32(-1i) * -_wgslsmith_mod_i32(u_input.c, -20490i)));
    let var_1 = firstLeadingBit(u_input.b.zyy) << (~u_input.b.yww % vec3<u32>(32u));
    global0 = var_0.yxz;
    return arg_0.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: i32) -> Struct_4 {
    var var_0 = min(_wgslsmith_clamp_u32(u_input.b.x, ~(~arg_0.x), 61724u), ~1u);
    global1 = array<vec2<u32>, 18>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)))), arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(true, false, false), arg_1, vec2<bool>(false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f - _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-arg_1)));
    global0 = vec3<i32>(_wgslsmith_mod_i32(2147483647i, -1i & ((i32(-1i) * -11509i) << (arg_0.x % 32u))), u_input.c, ~max(-6988i, _wgslsmith_add_i32(-39077i, countOneBits(2147483647i))));
    var_0 = max(~((u_input.b.x | (1u >> (arg_0.x % 32u))) << (max(58750u, ~u_input.a.x) % 32u)), 4294967295u & (firstLeadingBit(arg_0.x) >> (~u_input.b.x % 32u)));
    return Struct_4(Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-1953f * -1419f)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true))), true, 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -589f, -671f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(496f, 1000f, 248f) * var_1) + vec3<f32>(136f, var_1.x, -1629f))), -1i), _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(arg_0.x, 27177u), 51221u), vec2<u32>(arg_0.x, 4294967295u)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(arg_1 - -257f))) + arg_1), Struct_2(Struct_1(vec3<bool>(false, false, true), arg_1, select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), false, ~u_input.d, var_1, -u_input.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(245f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, arg_1, arg_1, var_1.x))))), Struct_2(Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(450f + var_1.x), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true, arg_0.x, var_1, _wgslsmith_mult_i32(u_input.e, global0.x))), -(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 2147483647i, 2147483647i, global0.x), ~vec4<i32>(arg_2, global0.x, 1i, global0.x)) | u_input.e));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = func_2(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), ~1i);
    var var_1 = func_2(_wgslsmith_mod_vec4_u32(select(abs(vec4<u32>(9112u, 20109u, 35901u, arg_0)), u_input.b, !vec4<bool>(true, var_0.a.a.a.x, false, var_0.a.a.a.x)), ~vec4<u32>(u_input.b.x, var_0.c.b.c, var_0.c.b.c, 4294967295u) ^ ~u_input.b) & vec4<u32>(func_2(vec4<u32>(var_0.b, 4294967295u, var_0.a.c, var_0.a.c), _wgslsmith_f_op_f32(floor(arg_1)), ~13596i).c.d.c, ~reverseBits(4294967295u), ~min(3392u, 41337u), var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d.x - _wgslsmith_f_op_f32(-var_0.a.a.b)) + arg_1) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-709f, var_0.a.d.x, var_0.c.b.a.a.x)) + _wgslsmith_f_op_f32(var_0.c.c.x + var_0.a.a.b)))), ~var_0.a.e ^ -arg_2.x).c.d.a.b;
    let var_2 = _wgslsmith_mod_vec2_i32(global0.yz | -(~arg_2.xx), -firstLeadingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(arg_2.zz, arg_2.xz), select(vec2<i32>(arg_2.x, -1i), vec2<i32>(u_input.e, 61609i), var_0.c.b.a.c))));
    var var_3 = -13330i;
    var_3 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(global0.x, arg_2.x), i32(-1i) * -12292i), i32(-1i) * -1i, abs(40053i));
    return func_2(u_input.b, 777f, 1i).a;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_3.a)), -141f));
    return arg_3.a;
}

fn func_5(arg_0: Struct_5) -> Struct_4 {
    global1 = array<vec2<u32>, 18>();
    global2 = arg_0.b.a.x;
    var var_0 = vec4<i32>(func_2(~(~vec4<u32>(u_input.b.x, arg_0.c.a.c, 1u, arg_0.c.c.b.c) | u_input.b), 1081f, -8475i).c.b.e, -13676i, -1i, 1i);
    let var_1 = _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(35247i, arg_0.a, -45483i, u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.e, global0.x, u_input.e), vec4<i32>(u_input.c, 1i, 22402i, var_0.x))), -1434i) & _wgslsmith_add_i32(firstLeadingBit(0i), 1286i);
    global1 = array<vec2<u32>, 18>();
    return Struct_4(arg_0.c.c.d, ~(2324u | firstTrailingBit(arg_0.c.c.d.c)), func_2(vec4<u32>(func_1(arg_0.c.c.b.c, _wgslsmith_f_op_f32(-arg_0.c.a.d.x), var_0.xwz).c, ~1u, 2508u, 56826u), -1224f, -arg_0.a).c, u_input.c);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = func_5(Struct_5(_wgslsmith_clamp_i32(global0.x, ~27583i, func_1(arg_0.a.c, -267f, vec3<i32>(u_input.e, arg_1.a.e, arg_1.c.b.e)).e | (arg_1.c.d.e | arg_1.a.e)), arg_0.a.a, Struct_4(Struct_2(Struct_1(vec3<bool>(arg_1.a.b, false, arg_1.c.d.a.a.x), -529f, vec2<bool>(false, arg_1.c.d.b)), true, ~arg_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.b, -1000f, 531f)), arg_1.c.b.e), _wgslsmith_mod_u32(1u, 35056u), Struct_3(1000f, func_2(u_input.b, -1654f, u_input.c).c.d, arg_0.c.c, func_2(vec4<u32>(arg_1.a.c, 76541u, arg_0.b, 4294967295u), 346f, global0.x).a), _wgslsmith_mod_i32(func_2(vec4<u32>(arg_0.a.c, 67440u, arg_1.c.b.c, 0u), arg_1.c.d.d.x, arg_1.c.d.e).d, arg_0.a.e)))).c.b;
    let var_1 = abs((global1[_wgslsmith_index_u32(firstTrailingBit(arg_1.a.c), 18u)] << (~(~u_input.a) % vec2<u32>(32u))) | countOneBits(global1[_wgslsmith_index_u32(4294967295u, 18u)]));
    global2 = ~var_0.e > 17437i;
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_0.a.d * _wgslsmith_f_op_vec3_f32(arg_1.c.d.d * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-327f, 1305f, 1212f), arg_0.a.d)))), arg_1.c.d.d));
    var var_3 = func_2(reverseBits(select(~vec4<u32>(u_input.b.x, 0u, arg_0.c.b.c, u_input.d), select(vec4<u32>(u_input.a.x, var_1.x, 4294967295u, 13918u), vec4<u32>(35177u, 18583u, 0u, arg_1.a.c), vec4<bool>(var_0.b, true, var_0.a.c.x, var_0.b)), !vec4<bool>(arg_1.c.b.b, arg_0.a.a.a.x, arg_1.c.b.a.a.x, arg_1.a.a.a.x))) | vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, var_1.x)), u_input.b.x, abs(_wgslsmith_add_u32(71928u, arg_1.b)), ~(~var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.a.d.x, var_0.a.b))))), _wgslsmith_clamp_i32(~1i, _wgslsmith_mult_i32(-2147483647i, global0.x), -19385i));
    return !(!(!(!func_1(var_0.c, -1035f, vec3<i32>(global0.x, 2147483647i, 1i)).a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(Struct_5(i32(-1i) * -u_input.e, func_4(vec3<bool>(true, false, false), vec4<bool>(true, true, true, true), Struct_1(vec3<bool>(false, true, true), -270f, vec2<bool>(true, false)), func_1(u_input.d, 195f, vec3<i32>(-2147483647i, global0.x, -5039i))), func_2(~u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -511f), 0i))), Struct_4(func_1(u_input.d, func_4(vec3<bool>(false, true, true), vec4<bool>(false, true, false, true), Struct_1(vec3<bool>(false, false, false), -108f, vec2<bool>(false, false)), Struct_2(Struct_1(vec3<bool>(true, false, true), -660f, vec2<bool>(true, false)), false, 1u, vec3<f32>(-494f, -122f, 107f), u_input.c)).b, vec3<i32>(reverseBits(global0.x), _wgslsmith_clamp_i32(global0.x, u_input.e, u_input.c), u_input.c)), 0u, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-943f))), func_1(~0u, _wgslsmith_f_op_f32(floor(-200f)), abs(vec3<i32>(u_input.e, 12601i, global0.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1039f, 1966f, 939f, 290f)))), Struct_2(Struct_1(vec3<bool>(false, true, false), -1982f, vec2<bool>(true, true)), false, firstTrailingBit(1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(498f, 626f, 161f)), ~43840i)), global0.x));
    let var_1 = Struct_1(func_2(u_input.b, -263f, u_input.c).a.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-354f, _wgslsmith_f_op_f32(f32(-1f) * -661f)))), vec2<bool>(!func_2(select(u_input.b, u_input.b, false), -1184f, ~(-60800i)).a.a.a.x, !any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))));
    var_0 = vec2<bool>(func_1(~37684u, var_1.b, _wgslsmith_add_vec3_i32(abs(~vec3<i32>(global0.x, u_input.e, -57205i)), vec3<i32>(_wgslsmith_sub_i32(-29992i, 69341i), func_5(Struct_5(u_input.c, Struct_1(vec3<bool>(var_1.a.x, false, var_1.a.x), -633f, vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(var_1.a, var_1.b, vec2<bool>(true, var_1.a.x)), var_0.x, 43010u, vec3<f32>(var_1.b, var_1.b, var_1.b), global0.x), 4294967295u, Struct_3(var_1.b, Struct_2(Struct_1(vec3<bool>(false, var_0.x, var_1.a.x), var_1.b, vec2<bool>(true, true)), var_1.a.x, 1u, vec3<f32>(var_1.b, -247f, -984f), u_input.e), vec4<f32>(177f, var_1.b, var_1.b, -1857f), Struct_2(var_1, var_0.x, 0u, vec3<f32>(-694f, 182f, var_1.b), u_input.e)), global0.x))).d, min(global0.x, 4354i)))).a.a.x, true);
    global2 = !((var_1.b < var_1.b) | false);
    var var_2 = Struct_1(vec3<bool>(true, func_1(1u, var_1.b, firstTrailingBit(reverseBits(vec3<i32>(1i, -2147483647i, -3393i)))).a.c.x, true), -815f, var_1.c);
    global0 = vec3<i32>(u_input.c, reverseBits(u_input.c ^ u_input.e), global0.x);
    var_0 = func_5(Struct_5(_wgslsmith_sub_i32(~global0.x, 58407i), func_5(Struct_5(global0.x, var_1, Struct_4(Struct_2(Struct_1(vec3<bool>(var_2.a.x, true, var_2.a.x), -395f, vec2<bool>(var_0.x, true)), true, u_input.d, vec3<f32>(319f, -279f, var_2.b), global0.x), u_input.d, Struct_3(var_2.b, Struct_2(Struct_1(var_1.a, var_2.b, var_2.a.xz), true, 13616u, vec3<f32>(var_2.b, var_1.b, -1133f), u_input.e), vec4<f32>(var_1.b, var_2.b, var_1.b, var_2.b), Struct_2(Struct_1(vec3<bool>(var_2.a.x, false, var_2.a.x), -1828f, vec2<bool>(var_2.a.x, var_0.x)), var_1.a.x, u_input.d, vec3<f32>(-1116f, var_2.b, 1481f), global0.x)), 0i))).a.a, Struct_4(func_1(reverseBits(u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -545f), vec3<i32>(-2147483647i, global0.x, u_input.c)), 17765u, func_5(Struct_5(-2147483647i, Struct_1(var_1.a, var_2.b, vec2<bool>(var_1.c.x, var_0.x)), Struct_4(Struct_2(Struct_1(var_1.a, 547f, var_1.c), var_2.a.x, u_input.b.x, vec3<f32>(var_1.b, 434f, var_2.b), global0.x), u_input.d, Struct_3(658f, Struct_2(var_1, true, u_input.a.x, vec3<f32>(-341f, -648f, var_1.b), global0.x), vec4<f32>(var_2.b, var_2.b, var_2.b, var_2.b), Struct_2(var_1, var_1.c.x, u_input.b.x, vec3<f32>(-1000f, 236f, 269f), global0.x)), global0.x))).c, global0.x | ~global0.x))).c.d.a.a.xy;
    var_0 = vec2<bool>(var_2.b > func_2(abs(vec4<u32>(u_input.d, u_input.b.x, u_input.d, u_input.b.x)) & ~vec4<u32>(4294967295u, u_input.b.x, u_input.a.x, 37620u), func_1(u_input.d, _wgslsmith_div_f32(-849f, var_1.b), vec3<i32>(-19976i, 18880i, 2147483647i)).d.x, ~reverseBits(u_input.e)).a.d.x, !var_1.a.x);
    var var_3 = func_5(Struct_5(~(i32(-1i) * -1i), var_1, Struct_4(func_1(13870u << (u_input.d % 32u), _wgslsmith_f_op_f32(-var_1.b), vec3<i32>(u_input.c, global0.x, u_input.c)), u_input.a.x, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -800f), Struct_2(var_1, var_0.x, u_input.d, vec3<f32>(342f, -351f, -1607f), global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(157f, var_1.b, var_2.b, -889f)), Struct_2(Struct_1(var_2.a, var_2.b, var_2.c), var_1.a.x, u_input.b.x, vec3<f32>(var_2.b, var_2.b, -287f), 12882i)), abs(func_2(u_input.b, -116f, global0.x).c.d.e))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2161f, 396f, -653f))))), 1i, var_3.c.c);
}

