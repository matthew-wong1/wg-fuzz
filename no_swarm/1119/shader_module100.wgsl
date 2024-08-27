struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    var var_0 = -46397i;
    global0 = u_input.d.xzx;
    var_0 = u_input.a.x;
    let var_1 = Struct_1(true, -1539f);
    global0 = reverseBits(~max(vec3<i32>(global0.x, global0.x, firstTrailingBit(u_input.c.x)), u_input.a));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1435f + var_1.b), var_1.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(546f, var_1.b) * vec2<f32>(969f, var_1.b)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.b, 373f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, -803f) - vec2<f32>(-227f, var_1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -832f)))), true)), vec2<f32>(var_1.b, _wgslsmith_f_op_f32(trunc(186f))), all(select(select(select(vec4<bool>(var_1.a, true, var_1.a, var_1.a), vec4<bool>(false, true, true, var_1.a), vec4<bool>(false, var_1.a, var_1.a, var_1.a)), vec4<bool>(var_1.a, false, var_1.a, false), var_1.a), !vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(false, select(false, false, var_1.a), true, !var_1.a)))));
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(~42263u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-955f, 505f)), (false == arg_0.c.a) && any(vec3<bool>(false, false, false)))) + _wgslsmith_div_vec2_f32(arg_0.e.wx, vec2<f32>(_wgslsmith_f_op_f32(sign(-142f)), arg_0.c.b))));
    global0 = min(-(u_input.e.ywx | u_input.e.xzy), countOneBits(u_input.a) >> (vec3<u32>(_wgslsmith_mod_u32(~72541u, _wgslsmith_clamp_u32(arg_0.d.x, arg_0.d.x, arg_0.d.x)), ~arg_0.a.x, _wgslsmith_mod_u32(1u, ~arg_0.d.x)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_clamp_u32(~abs(~_wgslsmith_mult_u32(4294967295u, arg_0.d.x)), arg_0.a.x, 4294967295u);
    return -(i32(-1i) * -1i);
}

fn func_4(arg_0: i32, arg_1: u32) -> Struct_3 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = !var_0.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-596f * -385f), 1f))), -413f)));
    var var_3 = ~(~(~firstTrailingBit(vec3<u32>(0u, arg_1, 0u))) << (select(~(~vec3<u32>(arg_1, arg_1, arg_1)), ~(~vec3<u32>(20836u, arg_1, 1u)), true) % vec3<u32>(32u)));
    var_3 = countOneBits(~select(firstTrailingBit(vec3<u32>(21583u, var_3.x, 24163u) << (vec3<u32>(5641u, var_3.x, 21419u) % vec3<u32>(32u))), vec3<u32>(~0u, firstLeadingBit(0u), _wgslsmith_sub_u32(201u, 1u)), var_1));
    return Struct_3(~(~firstTrailingBit(firstLeadingBit(vec3<u32>(arg_1, arg_1, 0u)))), !(!select(!vec4<bool>(var_1, true, var_1, var_1), select(vec4<bool>(false, var_1, var_0.x, var_0.x), vec4<bool>(true, true, var_1, var_0.x), vec4<bool>(var_0.x, var_1, false, true)), false)), Struct_1(true, -789f), vec4<u32>(var_3.x, countOneBits(~(~0u)), 18081u, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1232f, -1000f, 977f, var_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, 154f, var_2, -3066f) - vec4<f32>(1388f, var_2, -2408f, var_2))) + _wgslsmith_div_vec4_f32(vec4<f32>(412f, var_2, var_2, -360f), _wgslsmith_div_vec4_f32(vec4<f32>(1310f, 1845f, -386f, var_2), vec4<f32>(var_2, -112f, var_2, 334f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(297f, 242f, var_2, var_2), vec4<f32>(var_2, 1000f, var_2, 1000f))) + vec4<f32>(var_2, 720f, var_2, var_2)) - vec4<f32>(_wgslsmith_div_f32(var_2, var_2), _wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(var_2 + var_2), var_2))));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = func_4(max(_wgslsmith_dot_vec3_i32(u_input.d.xyw, vec3<i32>(18964i, -30226i, u_input.b)) | arg_0.b.x, func_2(Struct_3(vec3<u32>(63655u, 1u, 0u), select(vec4<bool>(true, false, arg_0.c.a, false), vec4<bool>(arg_0.c.a, true, arg_0.c.a, true), arg_0.c.a), arg_0.d, vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.d.b, arg_0.d.b, arg_0.a, 1000f), vec4<f32>(arg_0.d.b, -185f, arg_0.a, 1000f)))))), ~0u);
    var_0 = func_4(_wgslsmith_mod_i32(arg_1, 1i), ~(~1u));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.a);
    let var_2 = 31820u;
    var_0 = Struct_3(~vec3<u32>(_wgslsmith_clamp_u32(abs(0u), _wgslsmith_mod_u32(4294967295u, 21387u), _wgslsmith_clamp_u32(4294967295u, var_0.a.x, var_2)), var_2, _wgslsmith_mod_u32(var_0.a.x, 29716u)), vec4<bool>(0u != _wgslsmith_sub_u32(4294967295u, ~var_2), 0u != ~(~var_0.a.x), false, all(select(!var_0.b, var_0.b, vec4<bool>(var_0.b.x, var_0.c.a, false, false)))), arg_0.c, ~_wgslsmith_add_vec4_u32(vec4<u32>(49010u, ~var_0.d.x, ~var_2, 38503u), select(vec4<u32>(var_0.a.x, 0u, var_2, 85142u), var_0.d, true) >> (var_0.d % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(max(func_4(-6445i, ~countOneBits(6806u)).e, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1358f, _wgslsmith_f_op_f32(ceil(-261f)), -1589f, func_4(-1i, var_2).c.b), func_4(i32(-1i) * -20737i, ~var_0.d.x).e)))));
    return func_4(global0.x, ~(~abs(~var_0.a.x))).c;
}

fn func_5(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = !func_4(abs(abs(1i)), 4294967295u).b;
    global0 = select(-_wgslsmith_mult_vec3_i32(u_input.a << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), reverseBits(-vec3<i32>(arg_0.b.x, -44801i, -2147483647i))), ~vec3<i32>(-40066i, arg_0.b.x, -(~global0.x)), vec3<bool>(true, var_0.x, arg_0.c.a));
    global0 = _wgslsmith_clamp_vec3_i32(u_input.c.zxx, ~u_input.d.wyw, max(_wgslsmith_div_vec3_i32(~vec3<i32>(arg_0.b.x, global0.x, global0.x) ^ u_input.c.xyy, abs(vec3<i32>(-46735i, 1i, arg_0.b.x) ^ vec3<i32>(-1i, global0.x, 1i))), _wgslsmith_clamp_vec3_i32(~u_input.a, (vec3<i32>(-1i, u_input.a.x, global0.x) ^ u_input.c.yzx) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), u_input.e.zzx)));
    global0 = vec3<i32>(global0.x, -_wgslsmith_clamp_i32(30802i, _wgslsmith_dot_vec4_i32(~u_input.e, u_input.c | u_input.e), 1i), arg_0.b.x);
    global0 = ~u_input.d.xyw;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1640f, arg_0.a, 140f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.c.b, _wgslsmith_f_op_f32(-arg_0.a), arg_0.d.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(221f * 1086f), _wgslsmith_f_op_f32(f32(-1f) * -323f), _wgslsmith_div_f32(1166f, 1000f)))) - vec3<f32>(1081f, _wgslsmith_f_op_f32(abs(-357f)), _wgslsmith_f_op_f32(f32(-1f) * -1358f))) + _wgslsmith_f_op_vec3_f32(func_5(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(937f + 103f)), _wgslsmith_div_vec2_i32(u_input.e.zz, countOneBits(vec2<i32>(global0.x, 27520i))), func_1(Struct_2(130f, u_input.c.zx, Struct_1(false, 957f), Struct_1(false, 245f)), -u_input.d.x), Struct_1(true, _wgslsmith_f_op_f32(1388f + 1632f))))));
    var var_1 = true;
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_5(Struct_2(589f, vec2<i32>(906i, u_input.d.x), Struct_1(true, 601f), Struct_1(true, var_0.x))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1000f, 348f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1681f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(227f, -2598f, 651f))))));
    let var_2 = (-35090i & -global0.x) >> (50394u % 32u);
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-244f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-695f)), _wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-710f - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f * var_0.x))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), 269f, 121f));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(select(reverseBits(vec3<u32>(14176u, 88438u, 0u)), select(vec3<u32>(4294967295u, 28144u, 4294967295u), vec3<u32>(35599u, 74524u, 0u), vec3<bool>(true, false, false)), vec3<bool>(false, false, false))), 708f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x));
}

