struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> i32 {
    var var_0 = 1i;
    let var_1 = Struct_1(reverseBits(u_input.b.x), any(select(select(select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(false, arg_0.x, true, false), vec4<bool>(true, true, true, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), !select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, true, true, arg_0.x), true), select(select(vec4<bool>(false, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), false), vec4<bool>(true, true, true, true), arg_0.x))));
    global0 = arg_0.x;
    var_0 = select(2147483647i, i32(-1i) * -1i, false);
    global0 = true;
    return abs(32045i);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(Struct_1(~abs(arg_3.a.a), all(!arg_3.d)), arg_3.c, -vec2<i32>(-arg_3.b.x, func_3(vec3<bool>(arg_3.a.b, false, arg_1), arg_3.a.a)), arg_2.xz), arg_3);
    global0 = true;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1002f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1084f))))))));
    var_0 = Struct_3(Struct_2(var_0.a.a, reverseBits(-reverseBits(arg_3.c)), -max(var_0.b.b, vec2<i32>(-1i, var_0.a.c.x)), vec2<bool>(true, arg_2.x)), arg_3);
    var var_2 = select(~vec3<i32>(abs(~arg_0), u_input.c, arg_0), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, min(14804i, arg_3.c.x), _wgslsmith_dot_vec2_i32(max(vec2<i32>(-1i, -2147483647i), vec2<i32>(arg_3.b.x, 1828i)), countOneBits(vec2<i32>(arg_3.b.x, -2147483647i)))), _wgslsmith_clamp_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, arg_0, -13956i), vec3<i32>(var_0.b.c.x, u_input.c, u_input.a)), select(vec3<i32>(-22656i, 18345i, -10511i), vec3<i32>(2147483647i, -20520i, arg_3.b.x), arg_2.wwx), select(vec3<bool>(arg_3.d.x, arg_3.a.b, false), arg_2.xzz, vec3<bool>(arg_2.x, true, arg_3.d.x))), min(vec3<i32>(-69139i, u_input.c, -2147483647i) << (vec3<u32>(1u, 0u, arg_3.a.a) % vec3<u32>(32u)), vec3<i32>(arg_3.b.x, u_input.a, -2147483647i)), ~(~vec3<i32>(var_0.b.c.x, 1i, 0i)))), !select(select(any(arg_3.d), true, 1u == u_input.b.x), true, arg_3.d.x));
    return arg_3;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    global0 = !arg_2.d.x;
    var var_0 = arg_2;
    let var_1 = Struct_3(arg_2, arg_2);
    let var_2 = arg_1;
    var var_3 = 11097i;
    return arg_2.a;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(604f, 925f, _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -294f))))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), -171f, arg_0, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -615f))))));
    return arg_2.a;
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.c;
    var var_1 = countOneBits(~u_input.b.wzy);
    var var_2 = vec2<i32>(var_0, _wgslsmith_div_i32(~(-_wgslsmith_mod_i32(1i, -9124i)), reverseBits(-(~var_0))));
    return Struct_2(func_5(_wgslsmith_f_op_f32(sign(-3301f)), !any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), Struct_2(func_4(~u_input.b.yzy, Struct_1(u_input.b.x, false), func_2(var_0, true, vec4<bool>(false, true, false, false), Struct_2(Struct_1(var_1.x, false), vec2<i32>(var_2.x, var_2.x), vec2<i32>(2147483647i, var_0), vec2<bool>(true, false))), var_2.x), ~(-vec2<i32>(0i, var_2.x)), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(34824i, var_0), vec2<i32>(var_2.x, var_2.x), vec2<i32>(var_2.x, -2147483647i))), vec2<bool>(true, true))), -vec2<i32>(func_2(var_0 & u_input.a, func_5(238f, false, Struct_2(Struct_1(1u, true), vec2<i32>(0i, var_0), vec2<i32>(2147483647i, u_input.a), vec2<bool>(false, true))).b, vec4<bool>(true, true, true, true), func_2(u_input.a, false, vec4<bool>(true, false, true, true), Struct_2(Struct_1(u_input.b.x, true), vec2<i32>(u_input.c, var_0), vec2<i32>(1i, 4114i), vec2<bool>(true, false)))).c.x, -41145i << (_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) % 32u)), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-39892i, ~var_2.x), u_input.c), firstTrailingBit(~vec2<i32>(var_2.x, -1i)) ^ _wgslsmith_mod_vec2_i32(-vec2<i32>(-13984i, 1i), vec2<i32>(-1i, u_input.a) >> (vec2<u32>(var_1.x, u_input.b.x) % vec2<u32>(32u)))), select(vec2<bool>(true, func_5(_wgslsmith_f_op_f32(floor(199f)), true, func_2(var_2.x, false, vec4<bool>(false, false, false, false), Struct_2(Struct_1(4294967295u, false), vec2<i32>(var_0, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true)))).b), select(func_2(-var_2.x, true, vec4<bool>(true, true, true, true), func_2(u_input.c, false, vec4<bool>(false, false, true, false), Struct_2(Struct_1(var_1.x, false), vec2<i32>(var_0, u_input.c), vec2<i32>(var_0, 36050i), vec2<bool>(true, true)))).d, !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), func_2(~var_0, !(u_input.a > -33683i), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true)), func_2(-1i, true, select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), Struct_2(Struct_1(1u, false), vec2<i32>(2147483647i, var_2.x), vec2<i32>(-1i, u_input.c), vec2<bool>(true, true)))).d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = var_0.a.b;
    let var_1 = func_2(24913i, true, select(select(vec4<bool>(var_0.a.b, !var_0.a.b, any(vec4<bool>(true, var_0.a.b, false, var_0.d.x)), true), vec4<bool>(!var_0.a.b, all(vec3<bool>(var_0.a.b, var_0.a.b, var_0.d.x)), true, all(var_0.d)), vec4<bool>(func_1().a.b, true, !var_0.d.x, !var_0.a.b)), vec4<bool>(true, true, any(var_0.d), _wgslsmith_clamp_i32(var_0.c.x, -1i, -23572i) > -u_input.c), select(vec4<bool>(true, true, var_0.a.b, var_0.a.b), vec4<bool>(var_0.d.x, false, false, false), vec4<bool>(true, true, var_0.a.b, true))), Struct_2(Struct_1(~var_0.a.a, var_0.d.x | true), vec2<i32>(-2147483647i, 1i), countOneBits(firstLeadingBit(var_0.b << (vec2<u32>(var_0.a.a, 4294967295u) % vec2<u32>(32u)))), vec2<bool>(true, any(vec2<bool>(true, true)) & !var_0.d.x)));
    var var_2 = Struct_4(select(select(select(!vec3<bool>(false, true, var_1.d.x), vec3<bool>(var_0.a.b, var_1.d.x, var_1.d.x), vec3<bool>(true, false, false)), select(select(vec3<bool>(var_1.d.x, false, false), vec3<bool>(var_0.a.b, var_1.d.x, var_0.d.x), vec3<bool>(var_0.a.b, var_1.d.x, var_0.d.x)), select(vec3<bool>(var_1.a.b, var_0.a.b, false), vec3<bool>(var_0.d.x, var_0.a.b, true), var_1.a.b), !var_1.d.x), !(!vec3<bool>(var_0.d.x, var_0.d.x, var_0.a.b))), !(!select(vec3<bool>(true, var_0.a.b, true), vec3<bool>(var_1.d.x, true, var_0.d.x), true)), !(!vec3<bool>(true, var_0.a.b, true))), func_4(u_input.b.yxw, Struct_1(1u, false), var_1, _wgslsmith_sub_i32(-u_input.c, var_0.b.x)), Struct_2(Struct_1(~(~4294967295u), var_1.a.b), firstLeadingBit(var_1.c ^ select(vec2<i32>(2147483647i, var_1.b.x), var_0.b, var_0.d.x)), vec2<i32>(-_wgslsmith_mult_i32(var_0.c.x, var_0.b.x), var_1.c.x), vec2<bool>(false, true)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-35360i, var_0.c.x, 1i, var_1.b.x) ^ vec4<i32>(u_input.a, var_1.c.x, var_0.c.x, u_input.a)), firstTrailingBit(vec4<i32>(var_0.c.x, -13849i, 2147483647i, var_1.b.x) ^ vec4<i32>(18579i, 24882i, 0i, 4780i))) ^ (_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.c, u_input.c), vec4<i32>(-41029i, u_input.c, -1i, -2147483647i) & vec4<i32>(35633i, var_0.c.x, var_0.b.x, var_0.c.x)) >> (vec4<u32>(min(4294967295u, u_input.b.x), abs(var_0.a.a), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 7058u), vec2<u32>(1u, 4294967295u)), u_input.b.x) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-649f + -1452f), _wgslsmith_div_vec2_u32(~vec2<u32>(~u_input.b.x, 4294967295u), vec2<u32>(~(var_2.b.a ^ var_1.a.a), 29082u)), func_1().a.a, 0u);
}

