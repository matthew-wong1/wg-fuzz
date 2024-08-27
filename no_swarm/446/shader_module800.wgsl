struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e, -316f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1.a.zx)))), arg_1.a.zz));
    let var_0 = abs(~vec4<u32>(~18357u, 1u, 1u, u_input.b));
    global0 = arg_1.a.zz;
    global0 = _wgslsmith_f_op_vec2_f32(-arg_1.a.zx);
    global0 = arg_1.a.xy;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a.yy * arg_1.a.yx), vec2<f32>(-1715f, arg_1.a.x)), vec2<f32>(-418f, 160f)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>) -> f32 {
    global0 = vec2<f32>(global0.x, -374f);
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 1167f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec4<bool>(false, arg_0.x, arg_0.x, false), global0.x, u_input.b, arg_1, 1529f), Struct_1(vec3<f32>(global0.x, global0.x, global0.x), vec4<i32>(6476i, arg_1.x, u_input.c.x, 0i), arg_0.x, false, 1i)))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1218f), _wgslsmith_f_op_f32(f32(-1f) * -739f)), global0.x, countOneBits(u_input.a.x) == firstTrailingBit(u_input.a.x)))));
    global0 = vec2<f32>(2028f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1106f, global0.x), vec2<f32>(global0.x, 1000f))))) - vec2<f32>(-299f, -1117f)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(max(arg_2.a.yx, arg_2.a.xz));
    global0 = _wgslsmith_f_op_vec2_f32(floor(arg_2.a.zy));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1518f * global0.x))))));
    global0 = arg_2.a.zx;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(710f * arg_1) + 1f) * _wgslsmith_f_op_f32(trunc(arg_2.a.x))), global0.x);
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -309f);
    var var_1 = vec2<u32>(u_input.b, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a.x, u_input.b, 33769u, 17389u)), vec4<u32>(~27006u, ~0u, 1u, _wgslsmith_div_u32(u_input.b, u_input.b)))) & min(u_input.a.zy, vec2<u32>(u_input.a.x << (u_input.b % 32u), ~4294967295u) >> (_wgslsmith_mult_vec2_u32(~u_input.a.xx, select(u_input.a.xx, vec2<u32>(0u, u_input.a.x), vec2<bool>(true, arg_0.d))) % vec2<u32>(32u)));
    var var_2 = arg_0.d;
    var var_3 = _wgslsmith_f_op_f32(global0.x * func_4(func_4(!arg_0.c, 1319f, func_4(true, _wgslsmith_f_op_f32(func_2(vec2<bool>(true, arg_0.c), u_input.c)), arg_0)).c, 264f, Struct_1(vec3<f32>(-230f, global0.x, 623f), countOneBits(arg_1), false, true, 67540i)).a.x);
    var_1 = vec2<u32>(firstLeadingBit(min(_wgslsmith_add_u32(45064u, _wgslsmith_clamp_u32(24521u, 0u, 1u)), var_1.x)), var_1.x);
    return func_4(false | (true && arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - func_4(arg_0.d, _wgslsmith_f_op_f32(-1861f + global0.x), Struct_1(vec3<f32>(278f, 2272f, -2644f), vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, -282i), false, arg_0.c, arg_0.e)).a.x)), arg_0);
}

fn func_1() -> Struct_1 {
    global0 = vec2<f32>(-163f, 1397f);
    let var_0 = u_input.a.yx;
    let var_1 = func_5(func_4(!all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), u_input.c))), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-164f, global0.x, 573f), vec3<f32>(global0.x, -508f, global0.x))), ~(-vec4<i32>(u_input.c.x, 13430i, u_input.c.x, 0i)), false, any(vec3<bool>(true, true, true)), -_wgslsmith_div_i32(u_input.c.x, -44459i))), vec4<i32>(max(u_input.c.x, countOneBits(-u_input.c.x)), u_input.c.x, -(~u_input.c.x), -(~_wgslsmith_add_i32(u_input.c.x, u_input.c.x))));
    var var_2 = func_5(var_1, var_1.b);
    let var_3 = vec3<u32>(~(~1u), 20185u, _wgslsmith_div_u32(46756u >> (1u % 32u), min(abs(~4294967295u), ~u_input.a.x)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a + vec3<f32>(_wgslsmith_div_f32(1498f, global0.x), var_2.a.x, var_2.a.x))), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-3476i, -38128i, -6480i, 1i), _wgslsmith_add_vec4_i32(var_1.b, vec4<i32>(var_2.e, u_input.c.x, var_1.e, var_2.b.x)), var_1.b), var_1.b | _wgslsmith_div_vec4_i32(vec4<i32>(1i, var_2.e, 2147483647i, var_1.e), var_1.b)) & vec4<i32>(var_1.e, 16809i << (var_0.x % 32u), _wgslsmith_mult_i32(~u_input.c.x, -2147483647i), -2147483647i), true, false, _wgslsmith_mod_i32(var_1.b.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-1i, var_1.e)), i32(-1i) * -12987i), 0i)));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e), 968f, arg_0.e, 748f);
    let var_1 = arg_0.a.x;
    return 1904f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-641f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(Struct_2(vec4<bool>(false, false, true, true), global0.x, 1u, vec4<i32>(26889i, u_input.c.x, u_input.c.x, 0i), -1180f), ~(~u_input.a.x), func_1())), -899f));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-796f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec4<bool>(var_1.c, var_1.c, true, var_1.d), global0.x, 0u, u_input.c, var_1.a.x), Struct_1(vec3<f32>(var_1.a.x, -175f, global0.x), u_input.c, true, var_1.c, u_input.c.x))).x * var_1.a.x)))));
    var var_3 = 2147483647i;
    let var_4 = true;
    let var_5 = select(select(!vec3<bool>(false, any(vec4<bool>(var_4, true, false, false)), !var_4), select(vec3<bool>(var_1.c || var_1.c, true, true), !select(vec3<bool>(var_4, true, var_4), vec3<bool>(var_1.c, var_4, true), var_1.c), vec3<bool>(true, true, true)), !func_4(global0.x < global0.x, _wgslsmith_f_op_f32(191f + -1929f), func_4(var_1.c, global0.x, Struct_1(vec3<f32>(380f, var_1.a.x, 1673f), u_input.c, var_1.d, var_4, -22983i))).d), vec3<bool>(var_1.c, all(select(!vec4<bool>(var_4, true, var_4, var_4), select(vec4<bool>(var_4, false, false, var_4), vec4<bool>(var_4, true, var_1.c, false), false), vec4<bool>(true, var_4, var_4, false))), true), select(!(!(true || var_1.d)), true, (_wgslsmith_add_u32(4294967295u, u_input.a.x) >> (10770u % 32u)) > 1u));
    var_2 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(var_5.x, _wgslsmith_f_op_f32(max(global0.x, global0.x)), Struct_1(var_1.a, vec4<i32>(0i, var_1.b.x, 31156i, var_1.b.x), var_1.d, var_4, 30454i)).a.x)), ~(u_input.c.xxw ^ _wgslsmith_add_vec3_i32(var_1.b.xzx, -vec3<i32>(-1i, var_1.e, -2147483647i))));
}

