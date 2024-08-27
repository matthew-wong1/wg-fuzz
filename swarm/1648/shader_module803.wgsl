struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1097f;

var<private> global1: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> bool {
    global1 = Struct_2(select(abs(firstLeadingBit(~vec2<u32>(arg_1.a.x, 39808u))), abs(firstLeadingBit(arg_1.a.zz)) & arg_1.a.zx, vec2<bool>(true, true)), true, ~(~_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.b, -4640i), vec3<i32>(global1.c.x, 0i, u_input.a.x))) & _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, global1.c.x, global1.c.x), vec3<i32>(14530i, u_input.b, 0i)), ~global1.c), global1.d);
    let var_0 = arg_1;
    let var_1 = vec3<bool>(true, global1.b, true);
    var var_2 = _wgslsmith_mod_i32(u_input.a.x >> (1u % 32u), _wgslsmith_sub_i32(56706i, _wgslsmith_mod_i32(select(u_input.b, firstLeadingBit(10890i), var_1.x), global1.c.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-135f - 812f), _wgslsmith_f_op_f32(abs(-594f)))), -635f, _wgslsmith_f_op_f32(-669f - 1243f), -1309f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1056f), _wgslsmith_f_op_f32(floor(-1277f)), _wgslsmith_f_op_f32(-352f - 605f), -562f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -781f), -133f, _wgslsmith_f_op_f32(-383f - 1809f), _wgslsmith_f_op_f32(f32(-1f) * -442f))))));
    return all(!var_1.xy);
}

fn func_2() -> Struct_1 {
    let var_0 = select(vec3<bool>(true & func_3(global1.d.a.x, Struct_1(global1.d.a), ~global1.a.x), any(select(vec3<bool>(global1.b, global1.b, global1.b), select(vec3<bool>(global1.b, true, true), vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(true, global1.b, true)), vec3<bool>(global1.b, global1.b, true))), global1.b), vec3<bool>(false, any(!vec4<bool>(false, true, global1.b, global1.b)), true), true);
    global1 = Struct_2(~_wgslsmith_sub_vec2_u32(global1.d.a.yx, max(vec2<u32>(global1.d.a.x, 4294967295u), vec2<u32>(45721u, 0u))), any(vec4<bool>(global1.b || global1.b, false, any(vec2<bool>(global1.b, var_0.x)), any(vec4<bool>(false, false, true, true)))) & (true & (global1.d.a.x >= ~global1.d.a.x)), -_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-13941i, -1i, -17648i), firstTrailingBit(vec3<i32>(-1i, u_input.b, global1.c.x))), (vec3<i32>(u_input.b, 52884i, u_input.a.x) ^ vec3<i32>(35390i, 294i, -1i)) ^ global1.c), Struct_1(countOneBits(firstLeadingBit(global1.d.a)) & ~(global1.d.a & global1.d.a)));
    let var_1 = reverseBits(4294967295u);
    var var_2 = firstTrailingBit(vec4<i32>(i32(-1i) * -5094i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.b), vec4<i32>(-1i, global1.c.x, 2147483647i, global1.c.x)) ^ reverseBits(u_input.b), u_input.a.x ^ 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 38573i, 0i, u_input.b) ^ vec4<i32>(2147483647i, 2147483647i, global1.c.x, u_input.b), max(vec4<i32>(-1i, 0i, 0i, u_input.a.x), vec4<i32>(global1.c.x, global1.c.x, 0i, global1.c.x)))) & vec4<i32>(2147483647i, global1.c.x, global1.c.x, -select(global1.c.x, global1.c.x, var_0.x)));
    var var_3 = select(~vec4<u32>(~4294967295u, global1.a.x, global1.d.a.x & reverseBits(var_1), 0u), vec4<u32>(min(_wgslsmith_clamp_u32(max(global1.d.a.x, global1.d.a.x), ~32585u, ~5187u), var_1), _wgslsmith_div_u32(1u, var_1), global1.d.a.x, ~0u), !select(vec4<bool>(func_3(global1.d.a.x, Struct_1(global1.d.a), var_1), true, true, global1.b), select(select(vec4<bool>(var_0.x, global1.b, global1.b, false), vec4<bool>(global1.b, true, var_0.x, var_0.x), global1.b), select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(false, var_0.x, false, global1.b), var_0.x), select(vec4<bool>(var_0.x, global1.b, global1.b, false), vec4<bool>(true, global1.b, true, global1.b), vec4<bool>(true, global1.b, true, false))), (1i & global1.c.x) > 37005i));
    return Struct_1(~var_3.wyw);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(step(arg_0, arg_0));
    global1 = Struct_2(max(~(select(vec2<u32>(38322u, arg_1), global1.d.a.xy, vec2<bool>(arg_3.b, arg_3.b)) >> (_wgslsmith_mod_vec2_u32(arg_3.a, global1.d.a.yx) % vec2<u32>(32u))), global1.a), true, vec3<i32>(2147483647i, -_wgslsmith_dot_vec2_i32(u_input.a & vec2<i32>(u_input.a.x, global1.c.x), abs(vec2<i32>(global1.c.x, 2147483647i))), global1.c.x), func_2());
    let var_0 = -1934f;
    global0 = 662f;
    let var_1 = select(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, global1.b), arg_3.b), vec3<bool>(arg_2, false, false), false)), vec3<bool>(arg_3.c.x <= ~_wgslsmith_dot_vec2_i32(vec2<i32>(32546i, -10797i), global1.c.xx), arg_2, all(select(!vec4<bool>(arg_2, global1.b, arg_3.b, arg_2), !vec4<bool>(arg_2, true, global1.b, global1.b), select(vec4<bool>(global1.b, false, arg_2, true), vec4<bool>(arg_2, false, global1.b, true), global1.b)))), !vec3<bool>(select(true, arg_2 || global1.b, arg_1 <= arg_3.d.a.x), false, arg_2));
    return select(~_wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 18716u, arg_1), vec3<u32>(arg_1, arg_3.d.a.x, 26783u), global1.d.a), ~vec3<u32>(global1.d.a.x, global1.a.x, arg_1)), ~(~global1.d.a), vec3<bool>(!(!arg_2), _wgslsmith_f_op_f32(var_0 * 314f) < var_0, global1.b));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_2 {
    var var_0 = global1.d;
    return Struct_2(abs(_wgslsmith_clamp_vec2_u32(var_0.a.zx, ~firstTrailingBit(var_0.a.zx), vec2<u32>(_wgslsmith_add_u32(var_0.a.x, 39271u), 0u))), false, -global1.c, Struct_1(func_4(arg_0.x, global1.a.x, select(true, true, global1.b || global1.b), Struct_2(~var_0.a.yx, global1.b, ~vec3<i32>(arg_1, -12256i, arg_1), func_2()))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-370f)), -233f, 1393f)))), u_input.b);
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1347f)), _wgslsmith_f_op_f32(-1f), true & global1.b))))));
    var var_0 = vec2<bool>(true, false);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2222f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1210f, 718f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(605f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1644f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1826f * -874f))), 1442f, 1251f));
    var var_2 = -51334i;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, -vec2<i32>(countOneBits(_wgslsmith_sub_i32(global1.c.x, -2147483647i)), u_input.b), _wgslsmith_sub_vec2_u32(global1.a, min(_wgslsmith_clamp_vec2_u32(max(global1.d.a.xx, global1.a), global1.a << (global1.a % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 85439u), global1.d.a.xy)), global1.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1305f, var_1.x, -725f, -3050f), vec4<f32>(553f, 1634f, var_1.x, -522f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -841f, -772f, var_1.x))))))), _wgslsmith_add_u32(0u, ~func_2().a.x));
}

