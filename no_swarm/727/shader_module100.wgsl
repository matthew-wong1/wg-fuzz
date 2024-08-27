struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(false, global0.yyy, _wgslsmith_sub_vec3_i32(~vec3<i32>(-u_input.a, u_input.a, -u_input.a), reverseBits(~vec3<i32>(u_input.a, u_input.a, u_input.a) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 45474u), vec3<u32>(u_input.b, u_input.b, 4294967295u)) % vec3<u32>(32u)))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(~22160i, u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-11126i, -25894i), vec2<i32>(u_input.a, -1i)), -vec2<i32>(-2147483647i, u_input.a))), ~_wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, -65592i), vec2<i32>(u_input.a, -33522i))));
    global0 = vec4<bool>(all(global0.zy) == global0.x, all(select(vec4<bool>(true, true, false, true), select(select(vec4<bool>(true, global0.x, global0.x, var_0.a), vec4<bool>(true, false, global0.x, global0.x), var_0.a), vec4<bool>(var_0.a, var_0.a, true, global0.x), all(vec3<bool>(global0.x, var_0.a, true))), select(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, global0.x)), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, true, true, global0.x)), true))), global0.x, true);
    var var_1 = Struct_3(Struct_1(true, vec3<bool>(true & all(vec2<bool>(false, false)), var_0.b.x, var_0.a), vec3<i32>(1i, _wgslsmith_mod_i32(0i, ~u_input.a), min(-var_0.d.x, _wgslsmith_sub_i32(u_input.a, 0i))), _wgslsmith_add_vec2_i32(~vec2<i32>(0i, -54245i), max(vec2<i32>(-1i, -28058i) >> (vec2<u32>(46419u, u_input.c.x) % vec2<u32>(32u)), -var_0.c.yz))), Struct_2(Struct_1(true, vec3<bool>(any(vec2<bool>(false, var_0.a)), false, global0.x == true), ~vec3<i32>(-2537i, var_0.d.x, u_input.a), var_0.c.yy), !any(select(vec4<bool>(var_0.a, global0.x, false, false), vec4<bool>(var_0.a, false, true, false), vec4<bool>(false, true, true, global0.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(561f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f) * _wgslsmith_f_op_f32(-822f - -327f)), -2213f, _wgslsmith_f_op_f32(-282f + _wgslsmith_f_op_f32(100f * 1203f)))));
    let var_3 = abs(~reverseBits(vec3<u32>(u_input.c.x, u_input.b, u_input.b)) | _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, 1u, u_input.b), vec3<u32>(1u, 4294967295u, 0u), vec3<bool>(var_1.b.a.a, var_0.b.x, var_0.a)), vec3<u32>(24527u, u_input.c.x, 20177u)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, 1u, u_input.c.x), countOneBits(vec3<u32>(u_input.b, 1u, 11030u)))));
    return vec4<i32>(-1i, 2147483647i, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(~(-1i) & u_input.a, _wgslsmith_sub_i32(~(-2147483647i), 0i)), ~vec2<i32>(-var_1.b.a.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-27055i, u_input.a, var_1.a.d.x), var_1.b.a.c))));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = -31992i;
    var_0 = u_input.a;
    var var_1 = arg_1.a.b.zz;
    global0 = !(!(!vec4<bool>(true, any(vec2<bool>(arg_1.b, arg_1.b)), all(arg_1.a.b.zx), var_1.x)));
    let var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -32888i, 2147483647i, 16645i), vec4<i32>(arg_1.a.d.x, u_input.a, arg_1.a.d.x, 10734i), vec4<i32>(u_input.a, -2147483647i, 57976i, -1i)), -vec4<i32>(arg_1.a.d.x, arg_1.a.c.x, -2147483647i, -5203i)), vec4<i32>(abs(6095i) << (u_input.c.x % 32u), 1i, -2147483647i, select(~(-2147483647i), countOneBits(16648i), global0.x)), -(~vec4<i32>(2147483647i, arg_1.a.c.x, -14186i, u_input.a))), func_3());
    return Struct_1(!global0.x, select(!vec3<bool>(arg_1.b, arg_1.a.b.x, var_1.x == arg_1.b), global0.wxz, vec3<bool>(global0.x, any(vec3<bool>(true, true, var_1.x)) & arg_1.b, !var_1.x & arg_1.a.a)), vec3<i32>(_wgslsmith_div_i32(var_2.x, -2147483647i), 1i, -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -49264i, -4563i, arg_1.a.d.x), vec4<i32>(22942i, 2147483647i, u_input.a, 1i)), 0i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(~(~vec2<i32>(var_2.x, 0i)), arg_1.a.c.xy, ~(-arg_1.a.c.xz)), var_2.yz, abs(vec2<i32>(var_2.x, u_input.a))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: bool) -> Struct_4 {
    var var_0 = Struct_2(func_2(17872u, Struct_2(func_2(reverseBits(1u), Struct_2(Struct_1(false, arg_1.b.a.b, arg_0.a.c, vec2<i32>(arg_1.a.c.x, arg_0.a.d.x)), arg_2.x)), true)), all(arg_1.a.b.yx));
    var var_1 = -(~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, ~arg_0.a.d.x, arg_0.a.c.x << (44072u % 32u), 2147483647i & u_input.a), vec4<i32>(29238i & arg_0.a.c.x, 1000i, firstLeadingBit(-2147483647i), ~arg_1.a.d.x)));
    let var_2 = reverseBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.c.x), vec3<u32>(19170u, 8160u, 0u)), ~u_input.b), vec2<u32>(~u_input.b, 4294967295u) & vec2<u32>(u_input.b, _wgslsmith_mult_u32(u_input.b, 53793u))));
    let var_3 = any(var_0.a.b);
    let var_4 = func_2(_wgslsmith_dot_vec2_u32(abs(countOneBits(vec2<u32>(u_input.c.x, 1u))), reverseBits(u_input.c)), arg_1.b);
    return Struct_4(arg_0.a.a, arg_0);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)));
    var_0 = 751f;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(239f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(222f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) * -293f))));
    var_0 = _wgslsmith_f_op_f32(abs(var_1.x));
    let var_2 = global0.xyw;
    return func_4(Struct_2(func_2(abs(arg_1), arg_2), var_1.x < var_1.x), Struct_3(func_2(12538u, Struct_2(Struct_1(var_2.x, arg_2.a.b, arg_2.a.c, vec2<i32>(1i, 0i)), true)), Struct_2(arg_2.a, false)), !vec3<bool>(var_2.x, true, !select(var_2.x, false, false)), any(global0.xy));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    return Struct_1(arg_0.b.a.a, vec3<bool>(global0.x || any(arg_0.b.a.b), global0.x, -2147483647i == arg_2), -func_1(~vec2<i32>(-2147483647i, arg_2), u_input.b, Struct_2(func_4(arg_0.b, Struct_3(Struct_1(global0.x, arg_0.b.a.b, vec3<i32>(-2147483647i, 343i, -6635i), arg_1.yw), Struct_2(Struct_1(global0.x, global0.wwx, arg_1.yww, arg_1.zy), true)), arg_0.b.a.b, false).b.a, false)).b.a.c, vec2<i32>(reverseBits(~1i), arg_2));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = !vec4<bool>(arg_3 || (u_input.b > abs(u_input.b)), !select(true, func_5(Struct_4(false, arg_1), vec4<i32>(-18166i, u_input.a, -29828i, -13830i), arg_1.a.c.x).a, false), true, arg_3 || select(!arg_0.b, false | arg_2.a, true));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(Struct_2(Struct_1(any(vec4<bool>(false, global0.x, true, global0.x)), select(global0.xxz, vec3<bool>(false, global0.x, true), global0.xwy), vec3<i32>(u_input.a, 14380i, 1i), vec2<i32>(54577i, u_input.a)), global0.x), Struct_2(func_5(func_1(vec2<i32>(u_input.a, -1i), 53570u, Struct_2(Struct_1(global0.x, vec3<bool>(global0.x, global0.x, global0.x), vec3<i32>(-35472i, u_input.a, 21725i), vec2<i32>(u_input.a, -2147483647i)), global0.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(37131i, 0i, 1i, -2147483647i), vec4<i32>(u_input.a, u_input.a, 2147483647i, 34308i), vec4<i32>(1i, 0i, 14932i, -1i)), u_input.a), true), func_5(Struct_4(true, func_1(vec2<i32>(u_input.a, u_input.a), 0u, Struct_2(Struct_1(global0.x, vec3<bool>(true, true, true), vec3<i32>(0i, 0i, u_input.a), vec2<i32>(-42894i, u_input.a)), true)).b), vec4<i32>(firstLeadingBit(u_input.a), 1i, -32043i, i32(-1i) * -2147483647i), u_input.a), global0.x), func_1(-_wgslsmith_div_vec2_i32(func_5(Struct_4(true, Struct_2(Struct_1(false, vec3<bool>(global0.x, global0.x, true), vec3<i32>(-20245i, -19782i, u_input.a), vec2<i32>(0i, -38224i)), true)), vec4<i32>(u_input.a, 13298i, u_input.a, u_input.a), 65522i).d, -vec2<i32>(-2147483647i, 0i)), 1u, Struct_2(func_2(select(1u, 4294967295u, true), Struct_2(Struct_1(global0.x, vec3<bool>(false, false, global0.x), vec3<i32>(u_input.a, 2147483647i, u_input.a), vec2<i32>(u_input.a, 1i)), global0.x)), global0.x)).b);
    global0 = !select(select(vec4<bool>(any(vec4<bool>(false, global0.x, global0.x, var_0.b.b)), true, any(vec2<bool>(global0.x, global0.x)), var_0.b.a.c.x == -7789i), select(select(vec4<bool>(var_0.b.b, var_0.b.b, true, global0.x), vec4<bool>(global0.x, true, true, false), vec4<bool>(true, var_0.b.b, false, global0.x)), !vec4<bool>(global0.x, var_0.a.a, global0.x, var_0.b.a.a), all(vec4<bool>(true, var_0.b.b, global0.x, global0.x))), select(!vec4<bool>(true, true, var_0.b.a.a, true), select(vec4<bool>(false, true, true, var_0.a.b.x), vec4<bool>(false, global0.x, var_0.b.a.a, true), vec4<bool>(global0.x, var_0.b.a.a, true, false)), vec4<bool>(true, global0.x, true, false))), vec4<bool>(!(23592u >= u_input.c.x), global0.x, global0.x, (2147483647i << (u_input.c.x % 32u)) > firstTrailingBit(46307i)), vec4<bool>(global0.x, false, global0.x, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1413f, -744f) + vec2<f32>(-601f, 699f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-402f, -218f) + vec2<f32>(980f, 582f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(511f, 649f) - vec2<f32>(1000f, -771f)), var_0.b.a.b.zx)), all(vec4<bool>(true, false, var_0.b.a.b.x, var_0.a.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1250f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(685f, -1109f))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1000f, -411f)), -137f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-689f, -975f))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f), var_1.x)), _wgslsmith_f_op_f32(-var_1.x)) + vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - _wgslsmith_f_op_f32(step(-617f, var_1.x))))));
    var var_2 = u_input.a;
    let var_3 = any(select(vec4<bool>((true | global0.x) || true, false, func_4(Struct_2(Struct_1(global0.x, global0.xxz, var_0.b.a.c, vec2<i32>(2147483647i, 62802i)), false), var_0, !vec3<bool>(false, var_0.b.a.b.x, global0.x), any(vec4<bool>(var_0.b.b, false, var_0.b.a.a, var_0.a.a))).b.b, var_0.b.b), select(!vec4<bool>(global0.x, true, false, var_0.a.a), select(!vec4<bool>(false, var_0.b.b, var_0.b.a.a, var_0.a.b.x), vec4<bool>(global0.x, global0.x, false, global0.x), !vec4<bool>(var_0.b.a.b.x, true, var_0.b.a.b.x, true)), global0.x), var_0.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.c.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1271f, -2134f, -561f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(317f, var_1.x, 858f), vec3<f32>(1657f, var_1.x, var_1.x), global0.wzx))) - vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-355f - -1086f), 1206f))));
}

