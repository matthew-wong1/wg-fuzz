struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec2<i32> {
    var var_0 = u_input.a.x;
    let var_1 = Struct_2(_wgslsmith_dot_vec3_i32(-(~(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~(~(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i) | vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.b, ~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, 21243u, u_input.b.x)) | ~vec4<u32>(4294967295u, 79279u, u_input.b.x, u_input.b.x)), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), -11489i < u_input.a.x), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), vec3<bool>(any(vec4<bool>(true, true, true, true)), ~(-u_input.a.x) <= ~max(u_input.a.x, u_input.a.x), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(576f, 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -684f), -372f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-821f)))), _wgslsmith_f_op_f32(117f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1059f))), 1000f)));
    var var_4 = vec2<bool>((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1103f))) != var_3.x) || (all(vec2<bool>(var_1.e.x, true)) | any(select(var_2.d, vec4<bool>(var_1.d.x, var_2.d.x, var_2.d.x, var_1.e.x), true))), !(~(var_1.b.x << (var_2.c.x % 32u)) == _wgslsmith_mult_u32(var_2.c.x, select(32551u, 0u, var_1.d.x))));
    return vec2<i32>((select(_wgslsmith_mult_i32(1i, -2147483647i), var_1.a, var_4.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, var_2.a), reverseBits(vec3<i32>(-1i, u_input.a.x, var_1.a)))) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(2586u, var_1.b.x), vec2<u32>(_wgslsmith_mult_u32(var_2.c.x, var_1.c.x), var_2.b.x)) % 32u), abs(_wgslsmith_mult_i32(var_1.a, max(u_input.a.x << (14879u % 32u), _wgslsmith_mod_i32(u_input.a.x, -2147483647i)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<bool>, arg_3: f32) -> bool {
    let var_0 = select(arg_2, vec3<bool>(all(arg_2.zy), u_input.a.x <= -27669i, arg_2.x || arg_2.x), arg_2);
    var var_1 = arg_3;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(812f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3, 844f)))) - arg_3), _wgslsmith_f_op_f32(max(828f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_3)))), arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3, 1f)) - -220f), -194f), vec4<f32>(639f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) - arg_3), arg_3, arg_3)));
    var var_3 = false;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    let var_0 = u_input.b.x | _wgslsmith_div_u32(_wgslsmith_clamp_u32(86532u, ~arg_1.x, ~(4294967295u >> (1u % 32u))), u_input.b.x);
    var var_1 = !select(true, arg_0.d.x, arg_0.d.x || true) == !func_4(func_3() & u_input.a, -26629i << ((var_0 ^ 1u) % 32u), arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1379f, 1096f))));
    var_1 = (_wgslsmith_mult_u32(arg_0.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(3236u, var_0), max(u_input.b.yy, arg_0.c.zy))) | reverseBits(u_input.b.x)) < u_input.b.x;
    var_1 = false;
    var_1 = all(select(arg_0.e, !select(select(vec3<bool>(arg_0.d.x, arg_0.e.x, true), arg_0.d.xwz, vec3<bool>(false, arg_0.e.x, false)), select(arg_0.e, vec3<bool>(arg_0.e.x, true, true), vec3<bool>(true, true, arg_0.d.x)), select(vec3<bool>(false, arg_0.e.x, false), vec3<bool>(true, true, arg_0.d.x), arg_0.d.wzz)), !(!arg_0.d.zzy)));
    return u_input.b.x;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.b.x, 1u), u_input.b.zz, vec2<bool>(false, true)), reverseBits(vec2<u32>(u_input.b.x, u_input.b.x))), _wgslsmith_mult_u32(func_2(Struct_2(u_input.a.x, vec3<u32>(u_input.b.x, 0u, 1u), vec4<u32>(51037u, u_input.b.x, u_input.b.x, 9188u), vec4<bool>(true, false, true, true), vec3<bool>(true, true, false)), ~vec4<u32>(u_input.b.x, u_input.b.x, 10857u, u_input.b.x)), _wgslsmith_mod_u32(u_input.b.x, 45842u))));
    var var_2 = vec4<bool>(!select(!all(vec3<bool>(false, false, false)), true, !(4294967295u == u_input.b.x)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)) & true, false, true);
    var var_3 = abs(u_input.b.zz);
    let var_4 = 1620f;
    return Struct_1(-abs(_wgslsmith_div_vec3_i32(vec3<i32>(1500i, u_input.a.x, -10341i) ^ vec3<i32>(24103i, -4989i, u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(8106i, u_input.a.x, u_input.a.x), vec3<i32>(1i, 64423i, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~vec4<u32>(38880u, countOneBits(36856u), u_input.b.x, select(u_input.b.x, abs(18077u), false));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(578f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-388f, _wgslsmith_f_op_f32(-740f + -990f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(382f))))))));
    var var_3 = Struct_1(-max(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.a, vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), var_0.a | var_0.a), ~vec3<i32>(-66114i, 4120i, var_0.a.x)));
    let var_4 = vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(countOneBits(0i), var_3.a.x, max(var_3.a.x, var_3.a.x))), vec3<i32>(var_3.a.x, 0i, ~_wgslsmith_sub_i32(var_3.a.x, var_0.a.x))), 1i);
    var_1 = firstTrailingBit(~(~reverseBits(vec4<u32>(1u, 4294967295u, var_1.x, 15982u))) >> (vec4<u32>(0u, ~51642u, _wgslsmith_dot_vec3_u32(var_1.xww, vec3<u32>(0u, var_1.x, 0u)) & ~72669u, min(u_input.b.x >> (57760u % 32u), u_input.b.x)) % vec4<u32>(32u)));
    let var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2, var_2), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-683f, var_2)), _wgslsmith_div_vec2_f32(vec2<f32>(var_2, 825f), vec2<f32>(var_2, var_2))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2 + -1388f), _wgslsmith_f_op_f32(sign(1f)))));
    let var_6 = vec4<u32>(func_2(Struct_2(var_4.x, vec3<u32>(u_input.b.x, var_1.x ^ u_input.b.x, u_input.b.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, var_1.x, 46451u), vec4<u32>(u_input.b.x, 22114u, 0u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 72048u)), vec4<bool>(true, true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, false, false))), vec4<u32>(var_1.x, _wgslsmith_div_u32(u_input.b.x, ~17007u), 1u, ~var_1.x)), 24243u, firstTrailingBit(abs(u_input.b.x)), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, 56316u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 166f)))))), select(~_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1262i, var_4.x, 2147483647i), vec3<i32>(var_0.a.x, 1i, -1i)), vec3<i32>(u_input.a.x, 11543i, var_3.a.x)), ~(~var_3.a), false), vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, 1i | _wgslsmith_add_i32(var_4.x, -1i)), firstTrailingBit(-24432i), -50470i));
}

