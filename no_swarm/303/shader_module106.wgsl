struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: u32, arg_3: vec3<bool>) -> bool {
    var var_0 = Struct_4(arg_1.e.a, u_input.b, -_wgslsmith_mod_vec4_i32(arg_1.c, ~(vec4<i32>(-8799i, arg_1.c.x, arg_1.c.x, u_input.b) & vec4<i32>(0i, 1i, arg_1.b, 0i))), arg_1.d, Struct_2(Struct_1(2361f)));
    var_0 = Struct_4(arg_1.a, -2147483647i, ~min(arg_1.c, _wgslsmith_mult_vec4_i32(arg_1.c, _wgslsmith_clamp_vec4_i32(var_0.c, var_0.c, arg_1.c))), arg_1.d, var_0.e);
    var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.e.a.a, arg_1.e.a.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(658f)) + _wgslsmith_f_op_f32(floor(arg_1.d.x)))));
    let var_2 = _wgslsmith_clamp_vec4_u32(~(~(~(u_input.c >> (u_input.c % vec4<u32>(32u))))), ~(~(vec4<u32>(arg_2, u_input.a.x, u_input.a.x, 2595u) >> (_wgslsmith_mult_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u)))), ~(~vec4<u32>(~u_input.c.x, arg_2 << (13871u % 32u), 17745u, ~arg_0.x)));
    return !arg_3.x;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = !(!vec2<bool>(!any(vec3<bool>(true, false, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    var_0 = select(select(vec2<bool>(true, true & func_3(vec3<u32>(u_input.a.x, arg_0, 45886u), Struct_4(Struct_1(2260f), u_input.b, vec4<i32>(31945i, 46993i, -23259i, 2147483647i), vec3<f32>(-139f, -456f, -1229f), Struct_2(Struct_1(-274f))), 1u, vec3<bool>(var_0.x, true, true))), select(!(!vec2<bool>(false, var_0.x)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), true), vec2<bool>(true, true)), vec2<bool>(true, var_0.x)), select(!select(!vec2<bool>(var_0.x, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), var_0.x), vec2<bool>(true, (true && var_0.x) && false), all(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, true))))), true);
    var var_1 = select(select(vec2<bool>(false, false), vec2<bool>(!var_0.x && !var_0.x, any(vec4<bool>(true, false, false, false))), false), !(!select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x), !var_0.x)), false);
    var_1 = select(select(vec2<bool>(var_0.x != var_0.x, false), vec2<bool>(all(!vec2<bool>(var_0.x, var_0.x)), select(var_0.x, var_1.x, true && var_0.x)), var_0.x | (false || var_0.x)), !select(select(select(vec2<bool>(true, var_1.x), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, var_1.x), vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x)), !var_0.x), select(!vec2<bool>(true, var_1.x), !vec2<bool>(var_0.x, false), select(vec2<bool>(true, true), vec2<bool>(false, var_1.x), vec2<bool>(var_0.x, true))), true), vec2<bool>(true, !(!any(vec4<bool>(false, var_1.x, false, true)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(-326f)));
    return select(~(u_input.c.x ^ _wgslsmith_add_u32(~4294967295u, 111589u)), _wgslsmith_mod_u32(u_input.a.x, 35350u), var_1.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> Struct_4 {
    let var_0 = vec2<bool>(all(!(!vec4<bool>(arg_2, false, false, arg_2))), false);
    var var_1 = min(_wgslsmith_div_i32(-281i, 14922i) ^ (-2147483647i << (func_2(arg_1.a) % 32u)), -_wgslsmith_mult_i32(select(0i, 16193i, false) >> (0u % 32u), u_input.b));
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(~(vec2<i32>(-42721i, 2147483647i) << (u_input.a % vec2<u32>(32u))), vec2<i32>(max(9936i, 44639i), -10456i | u_input.b)), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(arg_1.a, u_input.c.x, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(2147483647i, -3958i, u_input.b) >> (vec3<u32>(u_input.c.x, arg_1.a, arg_1.a) % vec3<u32>(32u)))), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(~(~u_input.b), -2147483647i)));
    var_1 = -u_input.b;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c.a.a)) * -1157f);
    return Struct_4(arg_1.c.a, u_input.b & _wgslsmith_mod_i32(var_2.x, i32(-1i) * -15934i), abs(~(-vec4<i32>(var_2.x, -14056i, u_input.b, u_input.b)) << (_wgslsmith_add_vec4_u32(abs(u_input.c), vec4<u32>(arg_1.a, 61418u, 1u, arg_1.a)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1529f, arg_0.a.a, var_3))))), Struct_2(arg_1.c.a));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = arg_0.e;
    let var_1 = func_1(arg_0.e, Struct_3(~1u, Struct_1(253f), func_1(Struct_2(func_1(arg_0.e, Struct_3(51506u, Struct_1(-421f), Struct_2(arg_0.e.a)), true).e.a), Struct_3(_wgslsmith_mult_u32(arg_1.x, 27808u), Struct_1(var_0.a.a), arg_0.e), (arg_1.x << (arg_1.x % 32u)) == firstTrailingBit(1u)).e), false).e;
    var_0 = Struct_2(func_1(func_1(var_1, Struct_3(_wgslsmith_mult_u32(14150u, 57339u), Struct_1(arg_0.d.x), func_1(arg_0.e, Struct_3(1u, Struct_1(var_1.a.a), arg_0.e), false).e), false).e, Struct_3(1u, func_1(Struct_2(Struct_1(var_0.a.a)), Struct_3(0u, arg_0.a, arg_0.e), true).e.a, arg_0.e), any(vec3<bool>(true, false, false)) && (~u_input.b <= (arg_0.c.x << (4050u % 32u)))).e.a);
    var var_2 = ~_wgslsmith_add_u32(func_2(1u), 5637u ^ firstTrailingBit(~68488u));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-325f, _wgslsmith_f_op_f32(select(arg_0.e.a.a, arg_0.e.a.a, !all(vec3<bool>(false, true, true))))) * _wgslsmith_f_op_vec2_f32(select(arg_0.d.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1194f, _wgslsmith_f_op_f32(select(var_0.a.a, 2168f, true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.xz + vec2<f32>(var_0.a.a, var_0.a.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1231f, -271f)))), false)));
    return func_1(arg_0.e, Struct_3(u_input.c.x, arg_0.a, func_1(func_1(var_1, Struct_3(77502u, Struct_1(157f), Struct_2(var_1.a)), select(false, true, false)).e, Struct_3(_wgslsmith_add_u32(arg_1.x, 51354u), Struct_1(var_0.a.a), func_1(Struct_2(var_1.a), Struct_3(arg_1.x, var_0.a, Struct_2(arg_0.a)), true).e), all(vec2<bool>(false, false)) || true).e), true).a;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_4, arg_3: i32) -> Struct_1 {
    var var_0 = ~countOneBits(_wgslsmith_div_vec3_u32(~(vec3<u32>(39777u, u_input.a.x, arg_0) & u_input.c.xzz), vec3<u32>(35876u, arg_0 & 94256u, min(arg_0, arg_0))));
    var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.xxz, ~_wgslsmith_mod_vec3_u32(u_input.c.yzy, vec3<u32>(u_input.a.x, 97492u, var_0.x))) | ~u_input.c.wzx, countOneBits(u_input.c.wzw));
    var_0 = ~u_input.c.xzz;
    let var_1 = (vec3<u32>(~(~4294967295u), ~(~arg_0), _wgslsmith_mult_u32(22632u, 1u)) >> (u_input.c.zyx % vec3<u32>(32u))) >> (~(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a.x, 24967u), vec3<u32>(57380u, var_0.x, 0u)) & u_input.c.wxy) % vec3<u32>(32u));
    return arg_2.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, !(!all(vec4<bool>(true, true, true, false)) == true));
    let var_1 = -926f;
    var var_2 = 652f;
    var var_3 = Struct_4(func_5(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, firstLeadingBit(u_input.c.x)), 4294967295u), u_input.b, Struct_4(func_4(func_1(Struct_2(Struct_1(var_1)), Struct_3(19821u, Struct_1(var_1), Struct_2(Struct_1(var_1))), var_0.x), u_input.c.zww), -_wgslsmith_dot_vec4_i32(vec4<i32>(47899i, 0i, -2147483647i, u_input.b), vec4<i32>(2147483647i, u_input.b, 2147483647i, 0i)), vec4<i32>(1i, u_input.b, -u_input.b, _wgslsmith_sub_i32(u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1159f, var_1, -515f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(645f, -1000f, var_1), vec3<f32>(var_1, var_1, 567f))))), Struct_2(Struct_1(-644f))), ~(~reverseBits(0i))), 9977i, vec4<i32>(u_input.b, 36781i, _wgslsmith_add_i32(0i, -28163i), ~_wgslsmith_clamp_i32(-u_input.b, 16045i, max(u_input.b, u_input.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, 1101f, -1245f), vec3<f32>(var_1, var_1, 235f), all(vec4<bool>(var_0.x, var_0.x, false, false)))))), func_1(Struct_2(func_5(_wgslsmith_sub_u32(u_input.a.x, u_input.c.x), _wgslsmith_sub_i32(u_input.b, -32932i), Struct_4(Struct_1(var_1), u_input.b, vec4<i32>(u_input.b, -32855i, -2147483647i, u_input.b), vec3<f32>(var_1, 254f, -150f), Struct_2(Struct_1(var_1))), ~u_input.b)), Struct_3(u_input.a.x, Struct_1(_wgslsmith_f_op_f32(-var_1)), Struct_2(func_4(Struct_4(Struct_1(212f), u_input.b, vec4<i32>(u_input.b, -9532i, -15817i, u_input.b), vec3<f32>(-1000f, var_1, -737f), Struct_2(Struct_1(888f))), vec3<u32>(44320u, u_input.c.x, 1u)))), var_0.x).e);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) + var_3.d.x));
    var var_5 = vec3<bool>(var_0.x, var_0.x, select(39517i, u_input.b, var_0.x) != ~1i);
    let var_6 = vec2<bool>(!(!any(select(vec4<bool>(var_5.x, var_5.x, false, var_0.x), vec4<bool>(false, false, var_5.x, true), vec4<bool>(true, var_5.x, false, var_5.x)))), var_0.x);
    var var_7 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(u_input.c.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, -506f, var_1, var_4.a)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, var_3.d.x, -614f, var_4.a)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, 441f, -1000f, -932f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-180f, var_1, var_4.a, 1000f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1214f, 255f, var_1, var_1) * vec4<f32>(580f, -501f, var_1, 1842f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.x, var_1, var_3.e.a.a, var_4.a) + vec4<f32>(var_3.e.a.a, var_3.d.x, 1000f, -365f))))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.a, -115f, -263f, -1954f)))))), _wgslsmith_div_vec2_f32(var_3.d.yz, var_3.d.xx));
}

