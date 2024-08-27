struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec2<u32> {
    global0 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-804f + _wgslsmith_div_f32(arg_0, 911f)) + arg_0)));
    let var_0 = global1.d;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * global1.d.c.x)) - global1.c.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1340f, 614f) + _wgslsmith_f_op_f32(var_0.b.x * -804f))), _wgslsmith_f_op_f32(global1.d.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(483f - 574f) - 193f)))));
    global0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(1145f, _wgslsmith_f_op_f32(f32(-1f) * -1811f), global1.b)));
    return _wgslsmith_mod_vec2_u32(select(min(max(vec2<u32>(u_input.e, 4294967295u) ^ vec2<u32>(u_input.e, u_input.d), abs(vec2<u32>(1u, u_input.d))), vec2<u32>(u_input.d | u_input.d, ~4294967295u)), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(60331u, 4294967295u), vec2<u32>(u_input.e, 66058u) << (vec2<u32>(u_input.d, 71698u) % vec2<u32>(32u)))), !(!global1.d.d.xx)), _wgslsmith_mod_vec2_u32(select(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.d, 0u)), vec2<u32>(abs(0u), u_input.d), select(var_0.d.zy, select(vec2<bool>(true, global1.d.d.x), vec2<bool>(var_0.d.x, true), false), any(var_0.d))), abs(firstTrailingBit(vec2<u32>(76553u, 1u) & vec2<u32>(u_input.d, 0u)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    var var_0 = ~func_3(_wgslsmith_f_op_f32(f32(-1f) * -239f));
    let var_1 = false;
    let var_2 = !vec4<bool>(true, true, false, (func_3(-195f).x | 39670u) == select(abs(u_input.d), abs(1u), true));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - -993f));
    global1 = arg_2;
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: vec3<f32>) -> vec3<i32> {
    global0 = 1000f;
    var var_0 = arg_0.d;
    var_0 = Struct_1(_wgslsmith_div_vec2_i32(-(~(~arg_0.a)), abs(abs(vec2<i32>(1i, var_0.a.x)))), vec2<f32>(global1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c.x + global1.c.x), _wgslsmith_f_op_f32(-var_0.b.x), true)), _wgslsmith_f_op_f32(select(arg_0.c.x, -170f, false)))), _wgslsmith_f_op_vec3_f32(arg_1.c * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.c, arg_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_3))))), vec3<bool>(func_2(vec4<u32>(firstLeadingBit(u_input.d), ~u_input.d, 1u, u_input.e | u_input.d), var_0.d.zx, arg_0, Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(65862i, u_input.c.x, u_input.b), vec3<i32>(13279i, -13616i, 1i)), 1u, _wgslsmith_f_op_f32(round(global1.d.b.x)))).d.d.x, arg_2, true));
    var var_1 = arg_1.d;
    var var_2 = arg_1;
    return u_input.a;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(abs(u_input.d) << ((arg_1.b & u_input.e) % 32u), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, arg_1.b, 4294967295u), vec4<u32>(1u, 5211u, 44735u, arg_1.b)))), 1u, 1u);
    let var_1 = abs(~func_3(_wgslsmith_f_op_f32(f32(-1f) * -435f)).x);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(717f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1127f, 949f)), (38252u >> (u_input.e % 32u)) <= ~18154u)) + arg_0) - _wgslsmith_f_op_f32(453f + global1.d.b.x));
    let var_2 = arg_1.a.xz;
    global0 = global1.c.x;
    return func_2(min(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 53717u, var_0, u_input.d), max(vec4<u32>(4294967295u, u_input.e, 14831u, 12990u), vec4<u32>(var_1, u_input.e, 4294967295u, arg_1.b))), ~select(countOneBits(vec4<u32>(u_input.d, 8773u, 1u, 70412u)), _wgslsmith_sub_vec4_u32(vec4<u32>(7229u, arg_1.b, 2401u, var_0), vec4<u32>(0u, var_0, 4294967295u, var_1)), global1.d.d.x)), vec2<bool>(all(select(global1.d.d, vec3<bool>(global1.b, global1.d.d.x, true), any(vec4<bool>(false, true, false, global1.d.d.x)))), false), func_2(vec4<u32>(var_1, ~func_3(arg_0).x, arg_1.b, 32223u), !(!select(global1.d.d.yy, global1.d.d.zy, global1.d.d.zx)), func_2(~(~vec4<u32>(7683u, 73681u, u_input.d, 1u)), select(select(global1.d.d.yy, vec2<bool>(global1.d.d.x, global1.b), false), !global1.d.d.xz, vec2<bool>(global1.d.d.x, true)), Struct_3(global1.d.a, !global1.d.d.x, _wgslsmith_f_op_vec3_f32(global1.c * vec3<f32>(-841f, 189f, -700f)), global1.d), Struct_2(vec3<i32>(2147483647i, 53573i, u_input.c.x), 1u, _wgslsmith_f_op_f32(ceil(313f)))), Struct_2(abs(vec3<i32>(u_input.a.x, 17877i, 2147483647i)), arg_1.b >> (u_input.e % 32u), func_2(vec4<u32>(1u, 8967u, 0u, var_1), global1.d.d.zy, Struct_3(arg_1.a.xx, false, global1.c, global1.d), arg_1).c.x)), arg_1);
}

fn func_1() -> StorageBuffer {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -245f);
    global1 = func_5(global1.d.b.x, Struct_2(_wgslsmith_mult_vec3_i32(func_4(func_2(vec4<u32>(u_input.d, 4294967295u, 3182u, 16676u), vec2<bool>(global1.d.d.x, global1.b), Struct_3(vec2<i32>(u_input.c.x, -64022i), true, vec3<f32>(global1.d.c.x, 553f, global1.d.b.x), Struct_1(u_input.a.xy, global1.c.zz, vec3<f32>(global1.c.x, global1.c.x, global1.c.x), vec3<bool>(false, global1.b, global1.b))), Struct_2(vec3<i32>(global1.d.a.x, -2147483647i, 56726i), 0u, -1410f)), func_2(vec4<u32>(u_input.d, 0u, u_input.e, u_input.d), vec2<bool>(false, false), Struct_3(vec2<i32>(global1.a.x, u_input.b), false, global1.d.c, global1.d), Struct_2(u_input.a, 1u, 910f)), true, _wgslsmith_div_vec3_f32(global1.d.c, global1.c)), u_input.a), ~4294967295u, _wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(450f)), global1.d.c.x, true)))));
    global1 = Struct_3(global1.d.a, !(!(!global1.b)), func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-222f))))), Struct_2(select(vec3<i32>(-61227i, u_input.c.x, 0i), vec3<i32>(2147483647i, u_input.c.x, 31559i) | u_input.a, vec3<bool>(true, global1.d.d.x, true)), u_input.e, global1.d.c.x)).c, Struct_1(reverseBits(global1.d.a), global1.d.c.zy, func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.d.c.x))), Struct_2(u_input.a, 14467u, global1.c.x)).c, global1.d.d));
    let var_0 = vec4<bool>(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(127f * -766f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1165f + global1.d.b.x))), select(any(global1.d.d) || global1.d.d.x, false, true), global1.b);
    var var_1 = false;
    return StorageBuffer(-func_4(func_2(countOneBits(vec4<u32>(u_input.e, u_input.e, u_input.e, 1u)), !global1.d.d.yy, func_5(global1.c.x, Struct_2(u_input.a, u_input.d, 413f)), Struct_2(u_input.a, 28348u, global1.c.x)), func_2(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, u_input.d), vec4<u32>(u_input.d, 1u, 0u, u_input.e)), vec2<bool>(global1.d.d.x, var_0.x), Struct_3(vec2<i32>(u_input.c.x, -12682i), false, global1.c, Struct_1(u_input.a.xx, vec2<f32>(-1000f, global1.c.x), vec3<f32>(-1375f, 234f, -170f), var_0.yyx)), Struct_2(u_input.a, 4294967295u, -911f)), true, vec3<f32>(global1.c.x, global1.d.c.x, -898f)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d, select(1u, u_input.d, global1.d.d.x)), firstLeadingBit(select(_wgslsmith_div_u32(9970u, u_input.e), u_input.d, false || global1.b))), max(select(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.c.x, 8271i, u_input.b), abs(vec4<i32>(u_input.a.x, u_input.b, u_input.b, 0i))), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-56946i, 20429i, 1i, 36431i)), reverseBits(vec4<i32>(-2147483647i, -1i, -7677i, 2147483647i))), select(select(vec4<bool>(var_0.x, var_0.x, true, global1.b), vec4<bool>(false, global1.d.d.x, false, global1.b), vec4<bool>(false, false, true, true)), !var_0, any(global1.d.d.xy))), vec4<i32>(~_wgslsmith_clamp_i32(global1.a.x, u_input.b, global1.a.x), global1.a.x & u_input.c.x, ~u_input.b, abs(global1.d.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a | u_input.a, u_input.e, -450f);
    var var_1 = -703f;
    let x = u_input.a;
    s_output = func_1();
}

