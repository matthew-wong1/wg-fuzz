struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4386u;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(872f, 240f, -1000f, 1704f), Struct_1(vec3<u32>(0u, 28288u, 10499u), vec4<u32>(1u, 0u, 0u, 31198u), -208f, 376f, vec2<u32>(1u, 0u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> vec4<f32> {
    global0 = ~21664u;
    global1 = arg_0;
    let var_0 = 59868u;
    let var_1 = ~global1.b.e.x;
    global1 = arg_0;
    return global1.a;
}

fn func_2() -> Struct_1 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec4<f32>(global1.a.x, global1.b.c, global1.a.x, global1.a.x), Struct_1(global1.b.a, vec4<u32>(global1.b.a.x, 51197u, u_input.a.x, 34887u), -978f, global1.b.c, global1.b.b.ww)), _wgslsmith_div_i32(-950i, -29465i), global1.b.d)))), Struct_1(_wgslsmith_add_vec3_u32(abs(vec3<u32>(global1.b.b.x, 1u, global1.b.a.x)), ~reverseBits(vec3<u32>(global1.b.a.x, 4294967295u, u_input.a.x))), global1.b.b, 463f, _wgslsmith_f_op_f32(f32(-1f) * -1215f), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(global1.b.a.x, 49423u)), ~global1.b.b.xz), _wgslsmith_mod_vec2_u32(~global1.b.e, ~u_input.a.yz))));
    global1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b.d))), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(global1.a, Struct_1(vec3<u32>(0u, 0u, 0u), global1.b.b, global1.a.x, global1.b.d, u_input.a.yy)), abs(1i), global1.a.x)).x, global1.a.x, 109f), global1.b);
    let var_0 = u_input.a.x;
    global0 = 53227u;
    var var_1 = global1.a.xw;
    return Struct_1(max(reverseBits(select(global1.b.a, u_input.a, true) << (_wgslsmith_sub_vec3_u32(global1.b.a, global1.b.a) % vec3<u32>(32u))), ~select(vec3<u32>(75560u, var_0, 4294967295u) >> (u_input.a % vec3<u32>(32u)), global1.b.a, true)), vec4<u32>(global1.b.b.x, abs(countOneBits(u_input.a.x)), _wgslsmith_add_u32(1u, 14487u), _wgslsmith_add_u32(_wgslsmith_div_u32(0u, 1u), _wgslsmith_mult_u32(firstTrailingBit(0u), 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(991f)) - _wgslsmith_f_op_f32(global1.a.x * var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-818f, _wgslsmith_f_op_f32(-1000f - 971f), (10730u << (global1.b.b.x % 32u)) > 56651u))), ~global1.b.e);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1524f, arg_1.x, -1251f) + vec4<f32>(695f, -607f, arg_2.a.d, 1598f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, arg_1.x, 1658f, -682f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(768f, global1.b.d, global1.a.x, arg_1.x) - vec4<f32>(global1.b.d, -1000f, 1000f, -1000f)))) - _wgslsmith_f_op_vec4_f32(trunc(global1.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1298f, -1000f, _wgslsmith_f_op_f32(arg_2.a.d - global1.a.x), 100f)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-333f, arg_1.x, global1.a.x, 375f)))))), Struct_1(vec3<u32>(min(arg_2.a.b.x, ~global1.b.e.x), arg_2.a.a.x, 13738u), global1.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - -1337f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -495f)))), u_input.a.zy));
    let var_2 = arg_2;
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(min(var_1.a, vec4<f32>(-251f, 1333f, var_2.a.c, var_1.a.x)))))), Struct_1(global1.b.a << (var_1.b.b.xyz % vec3<u32>(32u)), vec4<u32>(abs(firstLeadingBit(4294967295u)), 0u, 39664u, ~_wgslsmith_add_u32(var_2.a.e.x, 31156u)), arg_1.x, arg_1.x, vec2<u32>(~(~arg_2.a.a.x), 76976u)));
    let var_3 = Struct_3(Struct_1(arg_2.a.b.wzy, var_1.b.b, _wgslsmith_f_op_f32(ceil(-736f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1301f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-arg_1.x)), true)), vec2<u32>(~var_1.b.e.x, var_1.b.a.x)));
    return all(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), vec3<bool>(select(true, true, true), true, any(vec3<bool>(true, false, false))), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))));
}

fn func_1() -> Struct_3 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b.d))) <= global1.a.x, !func_4(_wgslsmith_f_op_f32(-global1.b.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(-600f, -180f) + _wgslsmith_f_op_vec2_f32(global1.a.wz - global1.a.xy)), Struct_3(func_2()), abs(min(u_input.a.x, global1.b.b.x))));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1000f) + _wgslsmith_f_op_f32(-global1.b.d)), 1466f, func_2().c) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -868f, global1.a.x, -122f) - vec4<f32>(166f, -963f, global1.b.d, -189f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(global1.a, global1.b), 1i, 1228f)) * global1.a))), Struct_1(~abs(firstTrailingBit(u_input.a)), abs(~(~vec4<u32>(global1.b.b.x, 0u, 72327u, global1.b.a.x))), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(867f))), global1.b.e));
    var_0 = vec2<bool>(true, var_0.x);
    global0 = 4294967295u;
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, global1.a.x, global1.b.c, global1.b.d) - global1.a) * vec4<f32>(global1.a.x, 1208f, global1.a.x, -1380f)), global1.a, true)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2164f, 1259f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.d + 1906f), 570f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(638f - 1630f), _wgslsmith_f_op_f32(f32(-1f) * -1125f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.x, 1000f))))), func_2());
    return Struct_3(global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, global1.b.d <= 918f)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1560f, -595f)) * _wgslsmith_f_op_f32(floor(866f))) - 1287f) - global1.a.x) + _wgslsmith_f_op_f32(global1.a.x + 664f));
    let var_2 = _wgslsmith_mult_vec4_u32(global1.b.b, global1.b.b);
    global0 = u_input.a.x;
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, global1.b.a, func_1().a.d, vec3<u32>(25849u & func_1().a.a.x, 0u, global1.b.a.x));
}

