struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: i32) -> vec2<u32> {
    var var_0 = Struct_3(~(~vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(arg_2.a, vec3<u32>(1u, 1u, 36866u)), abs(76562u))), arg_2.d.a, arg_2.c, arg_2.d);
    var var_1 = 357f;
    global0 = var_0.d;
    global0 = Struct_2(Struct_1((56776i << (arg_2.d.a.c % 32u)) | _wgslsmith_sub_i32(countOneBits(6602i), global0.a.a), -1330f, var_0.d.a.c, _wgslsmith_f_op_vec4_f32(-arg_2.d.a.d), vec2<u32>(~select(global0.a.e.x, 0u, arg_2.c.x), 0u)));
    var var_2 = select(var_0.c, !vec3<bool>(true, all(select(var_0.c.zx, arg_2.c.yx, vec2<bool>(var_0.c.x, true))), true), !var_0.c);
    return vec2<u32>(15521u, _wgslsmith_div_u32(~5330u ^ max(global0.a.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(1u, var_0.d.a.e.x, 1u))), arg_2.b.c));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_5(2147483647i);
    var var_1 = Struct_2(Struct_1(-var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -883f), global0.a.e.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.d.x, 144f, global0.a.b, -395f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2305f, 161f, global0.a.b, global0.a.b)))), global0.a.d, vec4<bool>(var_0.a <= 1i, true, true, true))), func_3(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(227f, global0.a.d.x)), Struct_3(_wgslsmith_div_vec3_u32(vec3<u32>(global0.a.c, 1u, 4294967295u), vec3<u32>(5554u, 1u, u_input.b)), global0.a, select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), Struct_2(Struct_1(var_0.a, -895f, u_input.b, vec4<f32>(1775f, 978f, 221f, global0.a.b), vec2<u32>(global0.a.c, 17577u)))), firstLeadingBit(var_0.a | -52001i))));
    let var_2 = !(!(!vec3<bool>(-1557f > global0.a.d.x, true, any(vec2<bool>(true, false)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b))));
    let var_4 = Struct_2(var_1.a);
    return var_4;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    global0 = Struct_2(Struct_1(_wgslsmith_add_i32(~(-35313i), global0.a.a), -1000f, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.b, 0u), vec4<u32>(arg_0.a.e.x, 7905u, 7813u, 4294967295u)) >> (~arg_0.a.c % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.d - _wgslsmith_div_vec4_f32(global0.a.d, global0.a.d))), ~firstLeadingBit(vec2<u32>(global0.a.e.x, global0.a.e.x))));
    global0 = arg_0;
    global0 = arg_0;
    global0 = arg_0;
    var var_0 = arg_0.a.e.x;
    return Struct_2(Struct_1(_wgslsmith_add_i32(firstTrailingBit(49192i) | arg_0.a.a, -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(max(-280f, -374f))), _wgslsmith_mod_u32(func_3(!arg_1.x, _wgslsmith_f_op_f32(step(193f, global0.a.d.x)), Struct_3(vec3<u32>(18860u, arg_0.a.e.x, arg_0.a.e.x), arg_0.a, vec3<bool>(false, arg_1.x, arg_1.x), Struct_2(global0.a)), 1i).x, global0.a.e.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2979f)), _wgslsmith_f_op_f32(abs(816f)), -203f, _wgslsmith_f_op_f32(-767f * global0.a.d.x)), abs(func_3(global0.a.a <= 22387i, 363f, Struct_3(vec3<u32>(0u, arg_0.a.c, arg_0.a.c), global0.a, vec3<bool>(true, arg_1.x, true), arg_0), 67786i))));
}

fn func_1() -> vec2<i32> {
    let var_0 = func_4(func_2(), vec4<bool>(!(global0.a.c >= 4294967295u), !select(-14557i >= global0.a.a, true, any(vec2<bool>(true, true))), false, 50385u < firstTrailingBit(u_input.b)));
    var var_1 = Struct_5(-abs(abs(global0.a.a) | global0.a.a));
    var var_2 = Struct_2(var_0.a);
    var_2 = func_4(func_4(var_0, select(vec4<bool>(var_2.a.a > var_0.a.a, true, false, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true))), !select(vec4<bool>(global0.a.d.x < var_0.a.b, false, false, false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))));
    global0 = func_4(var_0, !(!vec4<bool>(false, any(vec4<bool>(true, false, true, true)), var_2.a.c <= var_2.a.e.x, true)));
    return reverseBits(_wgslsmith_add_vec2_i32(~min(vec2<i32>(var_0.a.a, global0.a.a), vec2<i32>(0i, 0i)), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-1i, 9670i)), _wgslsmith_add_vec2_i32(vec2<i32>(-554i, var_2.a.a), vec2<i32>(-2147483647i, -1i))))) >> (vec2<u32>(reverseBits(~(~var_0.a.c)), 38243u) % vec2<u32>(32u));
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: i32) -> Struct_4 {
    global0 = func_2();
    let var_0 = global0.a;
    global0 = func_2();
    let var_1 = select(vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), (_wgslsmith_mult_u32(var_0.c, 1u) != u_input.a) | (_wgslsmith_f_op_f32(sign(global0.a.b)) < 336f)), !vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), false), vec2<bool>(true, true));
    let var_2 = max(~u_input.a, ~(~_wgslsmith_sub_u32(1u, firstTrailingBit(u_input.a))));
    return Struct_4(select(select(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, var_1.x), var_1.x), vec4<bool>(any(var_1), true, var_1.x | true, false), true && var_1.x), !(!select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false))), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>((-27674i >> (u_input.b % 32u)) | 6911i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.a, global0.a.a, -1i), vec3<i32>(0i, 0i, -2147483647i)), firstLeadingBit(global0.a.a << (u_input.b % 32u))), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(18533i, global0.a.a, global0.a.a), vec3<i32>(25515i, 58587i, -1i)), global0.a.a, i32(-1i) * -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(abs(global0.a.a), -20903i), firstTrailingBit(-19840i)), vec2<i32>(1i, _wgslsmith_mod_i32(-2147483647i, global0.a.a) | global0.a.a)));
    let var_1 = func_5(var_0.x, select(abs(~min(var_0.zx, vec2<i32>(-2147483647i, -7150i))), -var_0.zx, true), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(49001i, 0i), var_0.xx)), vec2<i32>(~9292i, min(1i, -53486i))), ~firstTrailingBit(func_1())));
    let var_2 = Struct_1(36965i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_2().a.b))), 1u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.d.x))) - _wgslsmith_f_op_f32(round(-469f))), _wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_f32(f32(-1f) * -767f), -597f), ~((abs(vec2<u32>(global0.a.e.x, 1u)) & vec2<u32>(u_input.b, global0.a.e.x)) & vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.c, global0.a.e.x, 69710u, 1u), vec4<u32>(0u, u_input.b, 9786u, 2822u)))));
    global0 = Struct_2(func_2().a);
    var var_3 = max(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(var_0.x, var_2.a, var_2.a, 2147483647i)), -vec4<i32>(0i, -2147483647i, 2147483647i, var_0.x)), vec4<i32>(var_0.x, ~(-var_2.a), _wgslsmith_mod_i32(var_2.a, -abs(17299i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(select(vec4<i32>(var_2.a, global0.a.a, var_0.x, -2147483647i), vec4<i32>(58002i, 2147483647i, 32095i, -73611i), false)), ~vec4<i32>(var_0.x, var_0.x, global0.a.a, 1i) << (~vec4<u32>(10497u, u_input.b, u_input.b, 72074u) % vec4<u32>(32u)))));
    var_3 = reverseBits(select(select(vec4<i32>(2147483647i, global0.a.a, ~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.a, -19636i), var_3.xw)), select(vec4<i32>(global0.a.a, global0.a.a, global0.a.a, -2147483647i) & vec4<i32>(-2147483647i, -17873i, var_0.x, 1i), ~vec4<i32>(var_2.a, -1i, 0i, global0.a.a), var_1.a.x), any(func_5(-64509i, var_3.zw, -25094i).a)), ~abs(vec4<i32>(-7149i, -24041i, var_3.x, var_0.x) ^ vec4<i32>(var_0.x, 1i, var_3.x, var_2.a)), true));
    var var_4 = Struct_1(_wgslsmith_dot_vec2_i32(var_3.zw, var_3.xw), _wgslsmith_f_op_f32(trunc(-136f)), ~73369u, global0.a.d, _wgslsmith_mult_vec2_u32(vec2<u32>(31553u, ~u_input.b), vec2<u32>(0u, global0.a.c)) | max(global0.a.e & _wgslsmith_div_vec2_u32(var_2.e, vec2<u32>(0u, 0u)), vec2<u32>(4294967295u, global0.a.e.x)));
    var var_5 = !select(true, var_1.a.x, any(!var_1.a.wyz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.d.x))), _wgslsmith_div_f32(var_2.b, var_2.b), _wgslsmith_f_op_f32(step(1948f, -1000f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_2.d)))), ~func_4(func_4(Struct_2(global0.a), !var_1.a), vec4<bool>(var_1.a.x, false, false, true)).a.a, var_4.d.x, _wgslsmith_mult_vec2_u32(~vec2<u32>(global0.a.c, _wgslsmith_div_u32(var_2.e.x, u_input.b)), global0.a.e));
}

