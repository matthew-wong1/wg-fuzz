struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2322f, vec4<u32>(48468u, 61699u, 44540u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<f32>) -> i32 {
    return select(max(_wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(-29960i, -2147483647i, u_input.a)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, 23224i), vec3<i32>(u_input.a, u_input.a, -2147483647i)))), u_input.a), -firstLeadingBit(_wgslsmith_add_i32(u_input.a | -2105i, -2147483647i << (global0.b.x % 32u))), true || (~22065u != ~_wgslsmith_div_u32(4294967295u, global0.b.x)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = 0u;
    var var_1 = Struct_3(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.c.x, u_input.b.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(39739u, 56790u, 0u), vec3<u32>(u_input.b.x, u_input.c.x, global0.b.x)) % 32u), ~max(arg_1.c.x, 18395u)));
    var_0 = countOneBits(firstLeadingBit(~(~(~15316u))));
    let var_2 = Struct_1(!(true || !all(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.a, arg_1.b.x))), vec3<bool>(select(false, arg_1.a, !arg_1.b.x), true, true), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.c.x, _wgslsmith_dot_vec2_u32(arg_1.c, vec2<u32>(u_input.b.x, 0u))), vec3<u32>(u_input.b.x & 27777u, 58252u, 83766u)), 0u), vec2<i32>(abs(func_3(Struct_2(global0.a, u_input.b), vec2<bool>(false, arg_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 373f, -816f, -2414f) * vec4<f32>(-130f, -552f, 1662f, 1000f)))), -56553i));
    var_0 = var_2.c.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -237f);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f)), -303f), global0.b);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.x * -1000f) < _wgslsmith_f_op_f32(global0.a + arg_0.x), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), max(vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~global0.b, _wgslsmith_div_vec4_u32(vec4<u32>(global0.b.x, arg_1.x, global0.b.x, u_input.c.x), vec4<u32>(8201u, 1u, 4294967295u, 1u)))), global0.b.xw), vec2<i32>(-1i) * -(vec2<i32>(2147483647i, u_input.a) & ~vec2<i32>(u_input.a, u_input.a)));
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(global0.a)), global0.b);
    let var_1 = var_0;
    global0 = Struct_2(_wgslsmith_f_op_f32(max(-684f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1119f * global0.a) * _wgslsmith_f_op_f32(ceil(global0.a))))))), firstTrailingBit(vec4<u32>(~var_0.c.x, 1u >> (max(global0.b.x, 44760u) % 32u), global0.b.x, _wgslsmith_mod_u32(global0.b.x, global0.b.x))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(arg_0.x + 1876f))) - -460f), vec4<u32>(~(~1u), var_0.c.x, 1u, firstLeadingBit(var_0.c.x)));
}

fn func_1() -> Struct_1 {
    global0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - global0.a), _wgslsmith_f_op_f32(f32(-1f) * -1424f)), _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(func_2(u_input.a, Struct_1(true, vec3<bool>(false, false, true), vec2<u32>(global0.b.x, 8797u), vec2<i32>(u_input.a, 0i))))), _wgslsmith_f_op_f32(func_2(-1i, Struct_1(true, vec3<bool>(true, true, false), u_input.c, vec2<i32>(u_input.a, u_input.a)))))), vec2<u32>(~global0.b.x, global0.b.x));
    let var_0 = 1i;
    global0 = Struct_2(322f, u_input.b);
    let var_1 = Struct_3(global0.b.x);
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(211f, global0.a, global0.a, global0.a)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1024f, global0.a, -161f, -1356f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-705f, -1053f, global0.a, 950f), vec4<f32>(global0.a, 128f, -618f, global0.a))))), abs(global0.b.yy));
    return Struct_1(!(var_2.a < 684f) && all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(true, true, false))), vec3<bool>(true & (global0.a == _wgslsmith_f_op_f32(-global0.a)), global0.b.x == abs(~var_2.b.x), var_1.a >= global0.b.x), _wgslsmith_add_vec2_u32(~select(global0.b.zz, func_4(vec4<f32>(global0.a, 214f, global0.a, global0.a), vec2<u32>(var_2.b.x, u_input.b.x)).b.yw, vec2<bool>(true, true)), ~vec2<u32>(0u, firstTrailingBit(global0.b.x))), select(vec2<i32>(0i, -_wgslsmith_mult_i32(u_input.a, -23946i)), vec2<i32>(u_input.a, -1i), vec2<bool>(true, all(vec2<bool>(true, true)))));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(f32(-1f) * -263f)))));
    let var_1 = func_1();
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.a, 1553f), -1026f, func_4(vec4<f32>(global0.a, global0.a, global0.a, -294f), select(u_input.c, vec2<u32>(u_input.c.x, 0u), vec2<bool>(true, var_1.b.x))).a, _wgslsmith_f_op_f32(f32(-1f) * -1322f))), firstTrailingBit(u_input.c)).a;
    global0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-global0.a), global0.a, -535f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-2125f)), _wgslsmith_f_op_f32(-312f - _wgslsmith_f_op_f32(global0.a + global0.a))))), u_input.b.zy);
    let var_2 = arg_0;
    return Struct_2(_wgslsmith_f_op_f32(-684f + global0.a), vec4<u32>(global0.b.x, _wgslsmith_div_u32(_wgslsmith_add_u32(firstLeadingBit(arg_0.c.x), 1u), 4294967295u), 4294967295u, ~(~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1());
    var var_0 = global0.a;
    global0 = Struct_2(164f, vec4<u32>(10352u, 1u, global0.b.x, countOneBits(0u)));
    global0 = func_5(func_1());
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a)) + func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, -392f, 761f))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.c), _wgslsmith_mult_u32(u_input.b.x, 72458u))).a)));
    global0 = func_5(Struct_1(select(any(vec2<bool>(false, true)) & (var_1 > 1194f), func_1().b.x, all(vec3<bool>(true, true, true))), vec3<bool>(any(vec4<bool>(false, false, false, false)), func_1().a, var_1 == _wgslsmith_f_op_f32(func_2(u_input.a, Struct_1(false, vec3<bool>(false, false, false), u_input.c, vec2<i32>(3668i, -2147483647i))))), vec2<u32>(u_input.c.x, u_input.c.x) | global0.b.zy, max(vec2<i32>(u_input.a, u_input.a), firstLeadingBit(vec2<i32>(-2147483647i, 41770i))) & firstLeadingBit(~vec2<i32>(u_input.a, 2147483647i))));
    let var_2 = max(vec2<i32>(47558i, u_input.a) ^ min(~vec2<i32>(32876i, 71269i), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, -18463i), ~vec2<i32>(u_input.a, u_input.a))), -(min(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(45653i, u_input.a)), max(vec2<i32>(-39511i, u_input.a), vec2<i32>(u_input.a, u_input.a))) >> (u_input.b.xx % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -16528i, firstLeadingBit(-1i), _wgslsmith_mod_i32((var_2.x | 0i) << (~global0.b.x % 32u), -u_input.a));
}

