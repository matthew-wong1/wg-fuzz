struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.d.x, u_input.c, -30436i) >> (vec4<u32>(u_input.b, 46546u, 21526u, 1u) % vec4<u32>(32u)), -vec4<i32>(u_input.d.x, 1i, -2147483647i, u_input.d.x)) << (~firstTrailingBit(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), ~vec4<i32>(u_input.d.x, 1i, u_input.d.x << (28761u % 32u), i32(-1i) * -1i)) ^ (~(-vec4<i32>(u_input.d.x, u_input.c, u_input.c, u_input.d.x)) >> (u_input.a % vec4<u32>(32u)));
    let var_1 = Struct_1(true | any(!select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1))));
    global0 = array<Struct_5, 32>();
    var var_2 = Struct_3(var_1, _wgslsmith_f_op_f32(abs(-876f)), _wgslsmith_add_i32(~(u_input.c << (0u % 32u)) | (-6775i | (u_input.d.x ^ -13695i)), var_0.x), !select(vec2<bool>(any(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), true), !vec2<bool>(arg_1, arg_1), var_1.a));
    var var_3 = Struct_2(Struct_1((1u << (u_input.b % 32u)) < 1u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(461f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, var_2.b)) * var_2.b))), Struct_1(any(!vec3<bool>(true, var_2.d.x, arg_1))), 13173i, vec2<bool>(any(!(!var_2.d)), !var_1.a));
    return vec2<i32>(u_input.c, -var_2.c);
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    global0 = array<Struct_5, 32>();
    var var_0 = arg_0.b.a.a;
    var var_1 = ~(~1u);
    let var_2 = global0[_wgslsmith_index_u32(u_input.b, 32u)];
    let var_3 = var_2.b;
    return Struct_2(arg_0.b.a, var_2.a, arg_0.b.a, _wgslsmith_sub_i32(u_input.c, _wgslsmith_dot_vec2_i32(u_input.d, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.b.b, -1000f, -1000f, 1000f) * vec4<f32>(2980f, 168f, arg_0.b.b, -127f)), true))), !select(arg_0.b.d, arg_0.b.d, !(!var_2.d.b.d)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: u32) -> Struct_4 {
    var var_0 = vec3<u32>(1u, arg_3 >> (_wgslsmith_add_u32(~22769u, abs(arg_3)) % 32u), ~44917u) & vec3<u32>(0u, abs(~arg_3), select(abs(arg_3), ~(~u_input.a.x), any(select(vec3<bool>(arg_1.a.a, true, true), vec3<bool>(true, arg_1.c.a, false), vec3<bool>(arg_1.e.x, arg_1.a.a, arg_1.e.x)))));
    let var_1 = _wgslsmith_dot_vec3_i32(arg_2, arg_2) ^ 2147483647i;
    var var_2 = -1i;
    var_0 = ~vec3<u32>(51716u, _wgslsmith_sub_u32(~arg_3, 65908u) | var_0.x, 14798u);
    var_0 = _wgslsmith_add_vec3_u32(~u_input.a.yxy, ~vec3<u32>(~arg_3, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(46558u, 0u)), min(vec2<u32>(4294967295u, 4294967295u), u_input.a.yy)), 4294967295u));
    return Struct_4(_wgslsmith_mult_i32(~(-18117i), -(i32(-1i) * -17076i)), Struct_3(func_2(Struct_4(1i, Struct_3(arg_1.c, 217f, 1i, arg_1.e))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -621f)), arg_2.x, !vec2<bool>(!arg_1.c.a, true)));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(min(~countOneBits(vec4<i32>(-13527i, u_input.d.x, u_input.d.x, u_input.d.x)), reverseBits(~vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))), _wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.c, u_input.c, -507i, -9490i), vec4<i32>(-2147483647i, 52487i, u_input.c, u_input.d.x)), vec4<i32>(u_input.c, u_input.d.x, -13186i, 1i)) & (_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(-2147483647i, u_input.c, u_input.d.x, u_input.d.x)) | (vec4<i32>(u_input.c, 17121i, u_input.c, u_input.c) ^ vec4<i32>(9288i, u_input.c, u_input.d.x, u_input.c)))), ~vec4<i32>(-10533i, _wgslsmith_mod_i32(11687i, u_input.d.x) | min(u_input.c, -1i), abs(u_input.c), u_input.d.x));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(trunc(-386f)), select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), ~(var_0.x >> ((max(0u, u_input.a.x) << (_wgslsmith_sub_u32(arg_0.x, 1u) % 32u)) % 32u)), func_4((var_0.x >> (~arg_0.x % 32u)) << (max(4294967295u, ~31834u) % 32u), func_2(Struct_4(-39663i, Struct_3(Struct_1(false), -1700f, -28123i, vec2<bool>(false, false)))), vec3<i32>(1i, u_input.c, _wgslsmith_div_i32(~(-72331i), u_input.d.x)), ~countOneBits(firstTrailingBit(u_input.a.x))));
    var var_2 = all(!vec4<bool>(all(select(vec3<bool>(true, var_1.b.x, var_1.d.b.a.a), vec3<bool>(true, false, var_1.d.b.d.x), vec3<bool>(false, false, var_1.d.b.a.a))), var_1.b.x, any(vec3<bool>(false, true, var_1.b.x)), all(vec3<bool>(var_1.d.b.a.a, false, true))));
    var var_3 = firstLeadingBit(_wgslsmith_div_vec3_u32(~(u_input.a.zxx << (u_input.a.wxx % vec3<u32>(32u))), vec3<u32>(55046u, 1u, firstLeadingBit(10391u)))) >> (firstTrailingBit(firstTrailingBit(u_input.a.wxz)) % vec3<u32>(32u));
    var var_4 = func_4(_wgslsmith_dot_vec3_i32(var_0.zyw, countOneBits(vec3<i32>(u_input.d.x, 49965i, 10648i) | vec3<i32>(var_1.d.b.c, var_1.c, 13932i))), Struct_2(func_2(func_4(abs(u_input.d.x), Struct_2(var_1.d.b.a, var_1.a, var_1.d.b.a, var_0.x, vec2<bool>(var_1.b.x, false)), vec3<i32>(u_input.d.x, -1i, 2147483647i), u_input.b ^ u_input.b)).a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_4(4869i, var_1.d.b)).b + _wgslsmith_f_op_f32(f32(-1f) * -1750f)))), Struct_1(false), -2147483647i, vec2<bool>(!func_2(var_1.d).a.a, true)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_1.d.b.c, var_0.x, u_input.d.x), ~(-37485i)) >> (_wgslsmith_mod_u32(0u, var_3.x) % 32u), firstTrailingBit(-10792i), 1i | ~(~u_input.c)), _wgslsmith_clamp_u32(~(_wgslsmith_div_u32(var_3.x, 23347u) >> (var_3.x % 32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(21721u, 82634u), _wgslsmith_mult_vec2_u32(arg_0, vec2<u32>(1u, 6471u))), ~(~0u)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true & all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(395f, -2002f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(u_input.a.wy)))), any(func_2(Struct_4(u_input.d.x, Struct_3(Struct_1(false), -1915f, -1i, vec2<bool>(true, false)))).e))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-717f * -981f) + _wgslsmith_f_op_f32(round(1649f)))));
    global0 = array<Struct_5, 32>();
    let var_1 = -769f;
    global0 = array<Struct_5, 32>();
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1222f), _wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1910f, 749f, var_1, 997f) + vec4<f32>(var_1, var_1, -473f, var_1)), vec4<f32>(1298f, -939f, var_1, -691f), func_2(Struct_4(14134i, Struct_3(Struct_1(var_0.x), var_1, 2672i, var_0.zz))).e.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-490f, var_1, -426f, -924f)))))), vec4<f32>(_wgslsmith_div_f32(func_4(-u_input.c, func_2(Struct_4(u_input.c, Struct_3(Struct_1(var_0.x), 2413f, -31901i, var_0.xx))), firstTrailingBit(vec3<i32>(2147483647i, -41312i, 34658i)), min(75365u, 503u)).b.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1 - -1000f)))), _wgslsmith_f_op_f32(-var_1), -594f, _wgslsmith_f_op_f32(ceil(func_2(func_4(2147483647i, Struct_2(Struct_1(false), var_1, Struct_1(true), u_input.c, vec2<bool>(false, true)), vec3<i32>(u_input.c, 70871i, -1i), u_input.a.x)).b)))));
    let var_3 = var_0.zx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-382f, 1526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(414f + var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_2(Struct_4(u_input.c, Struct_3(Struct_1(false), var_2.x, u_input.d.x, vec2<bool>(var_0.x, false)))).b, _wgslsmith_f_op_f32(-325f + var_1))))), 35204u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-251f + var_1)) * var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1174f - var_2.x))), _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b, ~u_input.a.x)))), ~(~countOneBits(2147483647i)), _wgslsmith_div_vec4_f32(vec4<f32>(-1029f, var_2.x, 452f, var_1), vec4<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -108f), var_1, var_2.x)));
}

