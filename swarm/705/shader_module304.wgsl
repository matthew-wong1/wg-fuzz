struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = !(!select(vec3<bool>(u_input.b < 5258i, true, arg_2.c.b), vec3<bool>(arg_3, all(arg_2.b), arg_1), select(vec3<bool>(arg_3, true, true), !vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, false, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1365f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1949f, -1071f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1317f, -1230f), arg_2.a.e.xx) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c.e.yy))), arg_1)));
    let var_2 = ~(vec4<u32>(arg_2.c.a, _wgslsmith_sub_u32(arg_2.c.a & 22909u, 1u), arg_2.a.a, 11117u) << (select(vec4<u32>(arg_2.a.a, 37717u, arg_2.c.a, ~3275u), vec4<u32>(~0u, abs(10169u), arg_2.c.a << (132689u % 32u), ~u_input.c), select(!vec4<bool>(true, true, var_0.x, arg_2.b.x), vec4<bool>(arg_3, false, arg_2.a.c, false), select(vec4<bool>(true, arg_2.b.x, true, false), vec4<bool>(arg_3, false, true, arg_1), false))) % vec4<u32>(32u)));
    var_0 = !vec3<bool>(arg_3, !(!(!arg_1)), all(select(vec3<bool>(false, var_0.x, arg_2.b.x), !vec3<bool>(false, arg_3, arg_3), !arg_2.b.x)));
    var var_3 = -1503i;
    return var_0.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec4<bool>) -> u32 {
    let var_0 = select(!any(vec2<bool>(func_3(arg_2, arg_3.x, Struct_2(Struct_1(4294967295u, arg_0.x, true, arg_2.x, vec4<f32>(200f, 350f, -419f, 638f)), vec2<bool>(arg_0.x, arg_0.x), Struct_1(44647u, true, arg_0.x, -31847i, vec4<f32>(1296f, 942f, 406f, -1262f))), arg_3.x), all(vec3<bool>(arg_0.x, arg_3.x, arg_0.x)))), arg_3.x, min(_wgslsmith_dot_vec4_u32(~arg_1, ~arg_1), _wgslsmith_mod_u32(~arg_1.x, 4294967295u ^ u_input.c)) <= countOneBits(39804u));
    var var_1 = _wgslsmith_clamp_vec2_i32(~_wgslsmith_div_vec2_i32(firstTrailingBit(arg_2.zx >> (arg_1.zz % vec2<u32>(32u))), max(arg_2.yz, vec2<i32>(-2147483647i, -1i) << (arg_1.xw % vec2<u32>(32u)))), ~arg_2.xx >> (reverseBits(firstTrailingBit(~arg_1.yw)) % vec2<u32>(32u)), vec2<i32>(abs(u_input.a), _wgslsmith_clamp_i32(-19994i, -20068i, -1i) << (u_input.c % 32u)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(53337u, arg_1.x), _wgslsmith_add_u32(u_input.c, 0u), firstTrailingBit(u_input.c), u_input.c), arg_1), false, false, arg_2.x, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -633f), -791f, true)), 1f, -217f, -1664f)), vec2<bool>(true, all(!select(vec3<bool>(arg_3.x, false, arg_0.x), vec3<bool>(arg_0.x, true, true), arg_3.xxx))), Struct_1(_wgslsmith_div_u32(~(~arg_1.x), ~u_input.c >> (firstLeadingBit(arg_1.x) % 32u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1197u, u_input.c, arg_1.x), vec3<u32>(0u, arg_1.x, arg_1.x)), 14642u) <= arg_1.x, !arg_3.x, _wgslsmith_add_i32(29241i, _wgslsmith_add_i32(~26968i, arg_2.x)), vec4<f32>(_wgslsmith_f_op_f32(-1146f - _wgslsmith_f_op_f32(trunc(-1194f))), 1f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2008f - -2668f)))));
    var_1 = vec2<i32>(-1i) * -abs(_wgslsmith_add_vec2_i32(select(arg_2.yy, vec2<i32>(var_1.x, var_2.a.d), var_0), ~arg_2.xz));
    var_2 = Struct_2(Struct_1(~3843u, -2147483647i == min(abs(-12077i), u_input.a ^ 0i), arg_3.x | arg_3.x, -abs(u_input.b), var_2.c.e), arg_0.yz, var_2.c);
    return _wgslsmith_dot_vec2_u32(~(~(~arg_1.yz)) & ~arg_1.xx, vec2<u32>(_wgslsmith_dot_vec3_u32(~arg_1.zyx, abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, arg_1.x, 6665u), arg_1.yxz))), 22835u << (~arg_1.x % 32u)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = !vec4<bool>(false, true, false, all(vec4<bool>(arg_0.x <= u_input.c, any(vec4<bool>(false, false, false, true)), true, 1u != u_input.c)));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1455f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1539f) - -341f)), -3041f))));
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u | arg_0.x, func_2(var_0.xxy, max(~vec4<u32>(u_input.c, u_input.c, 0u, arg_0.x), countOneBits(vec4<u32>(44958u, arg_0.x, 10994u, u_input.c))), vec3<i32>(u_input.a, -34167i, u_input.b) ^ vec3<i32>(u_input.b, u_input.b, 2147483647i), !(!vec4<bool>(true, true, var_0.x, var_0.x)))), 4294967295u, ~(max(70999u, ~0u) & _wgslsmith_mod_u32(_wgslsmith_sub_u32(31802u, u_input.c), _wgslsmith_add_u32(0u, arg_0.x))));
    let var_3 = _wgslsmith_f_op_f32(-var_1);
    var var_4 = vec2<i32>(1i, ~(-1265i));
    return Struct_3((1u ^ var_2) << ((1u >> (var_2 % 32u)) % 32u), -17904i, !select(select(var_0.ww, var_0.yy, true), select(!vec2<bool>(var_0.x, false), var_0.xw, true), var_0.x || true), Struct_1(func_2(select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), all(vec2<bool>(false, var_0.x))), ~(~vec4<u32>(var_2, 57309u, 56960u, 0u)), reverseBits(vec3<i32>(1i, 24825i, u_input.b)), var_0), any(var_0), !(var_0.x == var_0.x), -2147483647i, vec4<f32>(var_3, -486f, var_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1)))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    return func_1(_wgslsmith_mod_vec2_u32(abs(abs(vec2<u32>(arg_1.a, u_input.c))) >> (select(~vec2<u32>(u_input.c, 20933u), reverseBits(vec2<u32>(arg_1.a, arg_1.a)), vec2<bool>(true, arg_1.c)) % vec2<u32>(32u)), select(~vec2<u32>(16087u, 40745u), ~vec2<u32>(45515u, 26099u), arg_0.c.x) << (vec2<u32>(u_input.c >> (12402u % 32u), ~375u) % vec2<u32>(32u)))).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(func_1(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, 37852u), vec2<u32>(14327u, 31864u))), func_1(~vec2<u32>(4294967295u, u_input.c) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))).d), select(func_1(select(~vec2<u32>(28139u, 0u), vec2<u32>(39274u, 42069u), vec2<bool>(false, true))).c, vec2<bool>(!all(vec4<bool>(true, true, false, true)), func_1(vec2<u32>(1u, 1u)).c.x), vec2<bool>(true, true)), func_1(_wgslsmith_add_vec2_u32(select(~vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(75481u, 6660u) % vec2<u32>(32u)), func_1(vec2<u32>(u_input.c, u_input.c)).c), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(65839u, u_input.c)), vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(0u, u_input.c) % vec2<u32>(32u)), vec2<u32>(u_input.c, u_input.c)))).d);
    var var_1 = max(abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.a, 1u), ~(~vec2<u32>(u_input.c, 60412u)))), vec2<u32>(_wgslsmith_sub_u32(u_input.c, var_0.a.a << (4294967295u % 32u)), ~(~var_0.a.a)) & vec2<u32>(_wgslsmith_div_u32(4294967295u ^ u_input.c, ~22674u), 1133u));
    var_1 = select(abs(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_1.x, var_1.x)), abs(vec2<u32>(4294967295u, 0u)))), ~vec2<u32>(0u, var_1.x) >> (_wgslsmith_div_vec2_u32(select(vec2<u32>(84761u, u_input.c), vec2<u32>(4294967295u, u_input.c), var_0.a.c), vec2<u32>(0u, 39043u)) % vec2<u32>(32u)), select(vec2<bool>(!var_0.c.b, !var_0.c.b), select(!vec2<bool>(true, var_0.a.b), vec2<bool>(false, var_0.b.x), true), var_0.b)) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.x, u_input.c), vec2<u32>(4294967295u, 0u)) >> (vec2<u32>(0u, u_input.c) % vec2<u32>(32u)), ~(~vec2<u32>(4294967295u, 91814u) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(99109u, 24158u), vec2<u32>(u_input.c, u_input.c), vec2<u32>(var_1.x, 68339u)) % vec2<u32>(32u)))) % vec2<u32>(32u));
    var var_2 = true;
    var_2 = false;
    let var_3 = Struct_3(~4551u, -1i, select(vec2<bool>(all(select(vec4<bool>(true, false, true, var_0.b.x), vec4<bool>(true, false, true, true), var_0.c.c)), select(var_0.c.c, func_1(vec2<u32>(31883u, u_input.c)).d.c, func_3(vec3<i32>(var_0.a.d, 0i, u_input.b), var_0.a.b, Struct_2(var_0.c, var_0.b, Struct_1(var_0.a.a, false, var_0.c.c, -2147483647i, var_0.a.e)), true))), !(!(!var_0.b)), var_0.b), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.a, var_1.x, 4294967295u) << (vec3<u32>(var_1.x, 0u, 6970u) % vec3<u32>(32u)), max(vec3<u32>(0u, 0u, u_input.c), vec3<u32>(u_input.c, 0u, 60783u))) >> (var_0.c.a % 32u), true, var_0.b.x, _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, var_0.a.d, 1i, var_0.a.d), vec4<i32>(u_input.b, u_input.b, 1i, var_0.a.d) >> (vec4<u32>(var_1.x, var_1.x, 4294967295u, 0u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(var_0.a.e * _wgslsmith_f_op_vec4_f32(select(var_0.a.e, vec4<f32>(var_0.a.e.x, -1000f, var_0.c.e.x, 2075f), select(vec4<bool>(var_0.a.b, true, true, false), vec4<bool>(true, false, var_0.c.b, var_0.b.x), vec4<bool>(var_0.c.c, var_0.b.x, false, var_0.b.x)))))));
    var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(~var_0.c.a, abs(0u | var_3.d.a)), countOneBits(vec2<u32>(func_4(Struct_3(var_3.a, var_0.c.d, var_3.c, var_3.d), var_3.d).a, ~0u))) & ~max(vec2<u32>(abs(var_3.a), ~4294967295u), abs(vec2<u32>(var_3.d.a, 4294967295u)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(var_3.d.a, var_3.d.a)));
    var_2 = all(!vec3<bool>(false, func_3(vec3<i32>(-32663i, 2147483647i, 53511i), var_3.d.e.x > var_3.d.e.x, Struct_2(Struct_1(var_1.x, var_0.c.c, true, var_0.a.d, vec4<f32>(var_3.d.e.x, var_0.c.e.x, -130f, 1447f)), vec2<bool>(true, false), Struct_1(var_3.a, var_3.c.x, var_0.a.c, 0i, vec4<f32>(var_3.d.e.x, var_3.d.e.x, var_3.d.e.x, var_3.d.e.x))), func_3(vec3<i32>(var_3.d.d, var_3.d.d, var_0.c.d), var_0.b.x, Struct_2(var_3.d, vec2<bool>(var_0.b.x, false), Struct_1(var_0.c.a, var_3.d.c, var_0.a.b, -44678i, var_0.c.e)), var_0.c.b)), false));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(370f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(128f * _wgslsmith_f_op_f32(var_0.a.e.x - var_3.d.e.x)))), var_3.d.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(Struct_3(u_input.c, -1i >> (var_0.c.a % 32u), vec2<bool>(var_0.a.b, var_0.a.b), func_1(vec2<u32>(4294967295u, 22181u)).d), Struct_1(abs(17318u), !var_3.c.x, true, ~var_3.b, var_0.a.e)).e.x - var_3.d.e.x));
}

