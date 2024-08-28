struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1398f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -438f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-130f * -139f), -1983f)) - _wgslsmith_f_op_f32(f32(-1f) * -507f))));
    let var_1 = !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(u_input.a.x < -1i, true), vec2<bool>(true, true)));
    let var_2 = false;
    var var_3 = Struct_2(Struct_1(vec2<u32>(arg_0.x, ~arg_0.x), true, ~min(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 2147483647i), firstTrailingBit(vec4<i32>(-62562i, 0i, 1756i, -34847i)))), var_1, Struct_1(arg_0.zy, all(select(vec3<bool>(false, var_2, var_1.x), !vec3<bool>(var_2, var_2, false), true)), max(~(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x) >> (u_input.c % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(46276i, -2147483647i, -2147483647i, 0i), vec4<i32>(17496i, 0i, u_input.a.x, -5087i))))));
    var var_4 = Struct_5(Struct_4(var_3.a.c.x, _wgslsmith_f_op_f32(ceil(var_0)), Struct_2(Struct_1(~var_3.a.a, var_2, _wgslsmith_clamp_vec4_i32(var_3.a.c, var_3.c.c, var_3.c.c)), !var_1, var_3.a), _wgslsmith_mult_vec2_i32(-u_input.a, ~_wgslsmith_div_vec2_i32(var_3.a.c.xw, vec2<i32>(var_3.c.c.x, 19949i))), vec2<u32>(0u, firstLeadingBit(u_input.b))), ~u_input.c.x, Struct_2(var_3.c, vec2<bool>(!var_2 | true, var_3.b.x), var_3.a));
    return arg_0.wyz;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = Struct_3(arg_2.a);
    let var_1 = _wgslsmith_dot_vec3_u32(func_3(u_input.c), u_input.c.xzy);
    let var_2 = Struct_4(var_0.a.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))))), arg_2.a, var_0.a.a.c.zy, ~arg_2.a.a.a);
    var var_3 = select(select(vec3<bool>(true, all(!vec3<bool>(false, var_2.c.b.x, false)), false), select(select(!vec3<bool>(true, false, arg_1), vec3<bool>(true, true, true), true), vec3<bool>(4294967295u == arg_2.a.c.a.x, arg_0.x >= arg_0.x, any(vec2<bool>(true, true))), true | (arg_1 | arg_1)), all(vec3<bool>(arg_1, true, all(vec3<bool>(false, false, var_0.a.b.x))))), !vec3<bool>(!var_0.a.a.b, true, false), !select(select(select(vec3<bool>(var_0.a.c.b, arg_2.a.a.b, arg_2.a.a.b), vec3<bool>(true, true, true), vec3<bool>(var_2.c.a.b, var_0.a.b.x, true)), !vec3<bool>(var_0.a.b.x, false, false), var_2.c.b.x && true), vec3<bool>(var_2.c.c.b, any(vec2<bool>(arg_2.a.c.b, true)), true), vec3<bool>(all(vec4<bool>(false, var_2.c.a.b, false, arg_1)), true, any(vec2<bool>(false, arg_2.a.a.b)))));
    let var_4 = vec2<f32>(_wgslsmith_div_f32(-1137f, _wgslsmith_f_op_f32(1578f - 731f)), -1004f);
    return ~_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.c.x, var_0.a.a.a.x) << (~vec2<u32>(var_1, 1u) % vec2<u32>(32u))), ~var_2.c.c.a | _wgslsmith_mult_vec2_u32(~u_input.c.zy, arg_2.a.a.a), vec2<u32>(_wgslsmith_div_u32(arg_2.a.a.a.x, firstTrailingBit(var_0.a.a.a.x)), 24396u));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = false || arg_0.x;
    var var_1 = Struct_2(arg_1.a, arg_1.b, Struct_1(arg_1.c.a, true, vec4<i32>(_wgslsmith_div_i32(arg_1.a.c.x, u_input.a.x) << (u_input.b % 32u), min(arg_1.a.c.x, -arg_1.c.c.x), 1i | arg_1.a.c.x, ~(-arg_1.a.c.x))));
    var_1 = arg_1;
    var var_2 = _wgslsmith_add_vec3_i32(var_1.c.c.www, _wgslsmith_add_vec3_i32(var_1.c.c.xxy, arg_1.c.c.xxy));
    let var_3 = !(countOneBits(_wgslsmith_sub_i32(var_1.a.c.x, -28043i)) <= u_input.a.x);
    return _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u ^ arg_1.c.a.x, 1u), vec2<u32>((var_1.c.a.x | var_1.a.a.x) | (var_1.a.a.x ^ u_input.c.x), 4294967295u), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1157f, -368f), vec2<f32>(-788f, -305f))), !arg_1.a.b, Struct_3(Struct_2(var_1.a, arg_0, var_1.c)))), arg_1.a.a << ((vec2<u32>(func_2(vec2<f32>(1263f, 192f), false, Struct_3(arg_1)).x, firstLeadingBit(var_1.a.a.x)) ^ ~_wgslsmith_mod_vec2_u32(var_1.c.a, u_input.c.zx)) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> u32 {
    var var_0 = ~(~select(~u_input.a, u_input.a, true));
    let var_1 = Struct_5(Struct_4(-var_0.x, 952f, Struct_2(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(7262u, 1u), vec2<u32>(arg_0.x, arg_0.x)), true || arg_1, ~vec4<i32>(19190i, var_0.x, u_input.a.x, 0i)), select(arg_2.zw, vec2<bool>(true, true), true), Struct_1(vec2<u32>(arg_0.x, u_input.b), arg_1 == arg_2.x, firstLeadingBit(vec4<i32>(-17452i, 10078i, u_input.a.x, 15350i)))), u_input.a, min(select(vec2<u32>(arg_0.x, 1u), arg_0.zx, true), _wgslsmith_div_vec2_u32(abs(vec2<u32>(77549u, 4294967295u)), ~vec2<u32>(arg_0.x, 0u)))), _wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(firstLeadingBit(arg_0.x) >> (~u_input.b % 32u), u_input.b)), Struct_2(Struct_1(~vec2<u32>(arg_0.x, 90709u), all(arg_2.wzw), vec4<i32>(var_0.x, var_0.x, u_input.a.x, 0i) & (vec4<i32>(-42179i, 0i, 65966i, -2147483647i) | vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))), !select(arg_2.xx, !arg_2.yw, arg_0.x > 5712u), Struct_1(vec2<u32>(51193u, 4294967295u), arg_2.x, vec4<i32>(u_input.a.x << (arg_0.x % 32u), 25387i, ~var_0.x, ~2147483647i))));
    var var_2 = _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -16455i), var_1.c.c.c.zx), ~29087i, i32(-1i) * -231i)), ~(~vec4<i32>(-var_1.a.d.x, _wgslsmith_clamp_i32(2147483647i, 3861i, var_0.x), u_input.a.x, var_1.c.a.c.x ^ 1i)));
    let var_3 = Struct_3(Struct_2(var_1.a.c.a, select(!arg_2.yx, !var_1.a.c.b, any(!vec2<bool>(arg_2.x, false))), var_1.c.c));
    var var_4 = !select(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !(-9905i > var_1.a.c.a.c.x)), select(arg_2.yz, !select(var_3.a.b, var_1.a.c.b, arg_2.x), !vec2<bool>(var_1.a.c.c.b, false)), all(select(select(arg_2.wyy, vec3<bool>(arg_2.x, var_3.a.a.b, var_1.c.a.b), vec3<bool>(var_1.c.a.b, arg_1, true)), vec3<bool>(false, arg_2.x, var_1.a.c.c.b), select(arg_2.xwx, vec3<bool>(true, true, arg_2.x), arg_2.wxw))));
    return var_1.c.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<u32>(10465u, ~reverseBits(u_input.c.x << (u_input.c.x % 32u)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c.x, 4294967295u)), func_1(vec2<bool>(true, false), Struct_2(Struct_1(vec2<u32>(1u, u_input.c.x), true, vec4<i32>(u_input.a.x, u_input.a.x, 1i, 1568i)), vec2<bool>(false, true), Struct_1(u_input.c.wx, true, vec4<i32>(u_input.a.x, -2147483647i, 34945i, u_input.a.x))))) << (0u % 32u)), u_input.b > 7754u, !(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-458f, -127f)) + _wgslsmith_f_op_f32(abs(1093f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1775f) - 439f)))));
    let var_1 = true;
    let var_2 = _wgslsmith_dot_vec3_u32(~(max(~u_input.c.yzx, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 31974u, 8991u), u_input.c.xxw, vec3<u32>(u_input.b, 70548u, u_input.c.x))) | abs(u_input.c.xwy)), vec3<u32>(_wgslsmith_mod_u32(1u, 1u), 0u, _wgslsmith_dot_vec4_u32(firstTrailingBit(firstLeadingBit(u_input.c)), ~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 35327u))));
    let var_3 = Struct_4(_wgslsmith_mult_i32(u_input.a.x | _wgslsmith_add_i32(_wgslsmith_mod_i32(35763i, u_input.a.x), u_input.a.x), u_input.a.x), 1229f, Struct_2(Struct_1(~(u_input.c.yz >> (u_input.c.ww % vec2<u32>(32u))), !(u_input.c.x >= u_input.c.x), vec4<i32>(~(-2147483647i), ~1i, 1i, i32(-1i) * -2837i)), select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), true), vec2<bool>(!var_1, var_2 == var_2), var_1), Struct_1(~_wgslsmith_mod_vec2_u32(u_input.c.xz, vec2<u32>(78398u, u_input.b)), any(!vec3<bool>(false, var_1, false)), (vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 44139i) | vec4<i32>(41024i, -10730i, 29442i, -2147483647i)) ^ (vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 0i) | vec4<i32>(u_input.a.x, 13240i, u_input.a.x, u_input.a.x)))), -max(vec2<i32>(-3898i, countOneBits(u_input.a.x)), u_input.a), vec2<u32>(0u, _wgslsmith_sub_u32(max(_wgslsmith_clamp_u32(0u, 1u, 4294967295u), ~1u), ~(~6286u))));
    var var_4 = Struct_1(_wgslsmith_mult_vec2_u32(u_input.c.xw, u_input.c.yx), true, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_3.c.c.c.x, u_input.a.x), -33837i), -2147483647i, ~max(u_input.a.x, var_3.c.c.c.x), _wgslsmith_dot_vec4_i32(var_3.c.a.c << (~vec4<u32>(24900u, 7674u, u_input.c.x, 43981u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(var_3.c.a.c | vec4<i32>(var_3.a, -1i, 2147483647i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, var_3.c.c.c.x, 2147483647i, 0i), var_3.c.a.c), var_3.c.c.c))));
    var_4 = var_3.c.a;
    var_4 = Struct_1(firstTrailingBit(~(vec2<u32>(u_input.c.x, 54588u) | (var_4.a | var_3.e))), var_4.b, -(abs(vec4<i32>(39663i, 0i, 1i, u_input.a.x)) | ~vec4<i32>(13777i, var_4.c.x, u_input.a.x, u_input.a.x)));
    let var_5 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, var_2, ~u_input.c.x) ^ (~u_input.c & (vec4<u32>(55072u, var_4.a.x, 0u, 28647u) ^ u_input.c)), u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2, var_2, 4305u), u_input.c.xzw), vec3<u32>(var_4.a.x, var_3.e.x, 6526u) & vec3<u32>(var_2, u_input.c.x, var_3.e.x)), ~var_2, var_4.a.x), abs(firstLeadingBit(vec4<u32>(var_3.e.x, 93255u, 41127u, 0u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_2, 4294967295u, 0u), vec4<u32>(1u, u_input.b, 1u, 14184u)))));
    let var_6 = !(!(!vec4<bool>(var_3.c.b.x, true, 33314u > var_5.x, !var_4.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1030f, 1084f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_3.b), vec2<f32>(var_3.b, 2069f), var_4.b)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(190f, var_3.b), vec2<f32>(var_3.b, var_3.b), false)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1091f, var_3.b) - vec2<f32>(var_3.b, var_3.b))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1225f, -1129f, var_3.b, var_3.b) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.b, var_3.b, -274f, 1000f)))), vec4<f32>(449f, var_3.b, var_3.b, var_3.b)))), u_input.a.x, -2147483647i);
}

