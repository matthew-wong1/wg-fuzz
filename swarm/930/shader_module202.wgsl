struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 28> = array<u32, 28>(1u, 1u, 20275u, 33632u, 13315u, 93724u, 1u, 1u, 4294967295u, 4294967295u, 0u, 60103u, 1u, 1u, 1u, 4294967295u, 5315u, 1u, 1u, 34315u, 0u, 59617u, 98100u, 0u, 4294967295u, 29115u, 52229u, 70796u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = Struct_5(u_input.a, firstLeadingBit(min(arg_2.a.x & 43769i, arg_1.b.a.x & arg_1.b.a.x)) > _wgslsmith_mod_i32(1i, u_input.b >> (global1[_wgslsmith_index_u32(1u, 28u)] % 32u)), arg_1, ((_wgslsmith_div_i32(arg_1.c.a.x, 28256i) & arg_1.b.a.x) | arg_2.a.x) >> (~0u % 32u), vec2<u32>(~firstTrailingBit(~0u), arg_0.x | 58328u));
    var_0 = Struct_5(abs(arg_0.xw & ~vec2<u32>(48875u, arg_0.x)) >> (~u_input.a % vec2<u32>(32u)), -926f > _wgslsmith_f_op_f32(131f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-522f, 457f, true)))), var_0.c, -2147483647i, u_input.a);
    var var_1 = 1i;
    var var_2 = var_0.c.c.a.x;
    var_2 = -arg_1.b.a.x;
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1573f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1629f)))), 1f)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_3(!vec4<bool>(!arg_0.b.b, select(false, true, !arg_0.c.b), arg_0.b.b, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_1, 946f), -1000f, -761f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) + vec3<f32>(124f, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -631f, arg_1) + vec3<f32>(arg_1, arg_1, arg_1)), select(vec3<bool>(false, arg_0.b.b, false), vec3<bool>(arg_0.b.b, arg_0.c.b, arg_0.b.b), vec3<bool>(arg_0.c.b, arg_0.b.b, true))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 181f, -1720f) - vec3<f32>(267f, -182f, 1417f)), _wgslsmith_f_op_vec3_f32(func_3(arg_0.a, arg_0, Struct_1(vec4<i32>(u_input.b, 14979i, arg_0.b.a.x, 25599i), arg_0.c.b))))) * vec3<f32>(arg_1, _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(max(arg_1, arg_1))))), arg_0);
    let var_1 = Struct_4(Struct_2(vec4<u32>(4294967295u, ~(~1u), select(arg_2.x, ~1u, var_0.a.x), reverseBits(var_0.c.a.x)), Struct_1(vec4<i32>(i32(-1i) * -17910i, -1i, var_0.c.b.a.x | arg_0.c.a.x, max(-17900i, 0i)), !arg_0.c.b), arg_0.b), var_0);
    var var_2 = var_0.c.c;
    global0 = var_0.b.x;
    var var_3 = var_0.a.zx;
    return Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(arg_2.x, global1[_wgslsmith_index_u32(arg_2.x, 28u)]), vec2<u32>(arg_2.x, var_1.a.a.x)), arg_2), ~(1u ^ _wgslsmith_dot_vec4_u32(arg_0.a, var_1.b.c.a)), 1u, ~(~abs(var_1.b.c.a.x))), Struct_1(var_2.a, var_3.x), var_1.b.c.c);
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = -1835f;
    let var_1 = Struct_5(u_input.a, arg_0.b.b, func_2(func_2(arg_0, _wgslsmith_div_f32(2510f, -2437f), firstTrailingBit(~vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(arg_0.a.x, 28u)]))), -761f, _wgslsmith_add_vec2_u32(arg_0.a.zw | vec2<u32>(29637u, 30543u), vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 34303u), u_input.a.x))), ~13708i, ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, 16430u), u_input.a, select(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a.x, 28u)], 28u)], 18361u), abs(vec2<u32>(26879u, 1u)), true)));
    let var_2 = vec3<bool>(func_2(arg_0, 2407f, ~vec2<u32>(_wgslsmith_dot_vec3_u32(var_1.c.a.wzx, var_1.c.a.zww), ~var_1.c.a.x)).b.b, any(!(!select(vec2<bool>(false, false), vec2<bool>(var_1.b, var_1.b), vec2<bool>(arg_0.b.b, arg_0.b.b)))), 0u > var_1.e.x);
    let var_3 = select(select(select(select(!vec4<bool>(arg_0.b.b, arg_0.c.b, var_2.x, arg_0.c.b), vec4<bool>(true, var_2.x, true, var_2.x), true), select(select(vec4<bool>(false, false, var_2.x, false), vec4<bool>(var_1.c.b.b, false, true, true), vec4<bool>(arg_0.c.b, false, var_2.x, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, arg_0.b.b), vec4<bool>(true, true, false, arg_0.c.b)), false), !select(vec4<bool>(var_1.c.b.b, arg_0.b.b, var_1.c.b.b, var_2.x), vec4<bool>(true, true, var_1.c.b.b, true), true)), select(select(!vec4<bool>(true, var_1.b, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, arg_0.b.b), vec4<bool>(arg_0.b.b, var_1.b, false, var_2.x), vec4<bool>(arg_0.b.b, arg_0.c.b, false, false))), !(!vec4<bool>(var_2.x, var_1.c.c.b, false, false)), vec4<bool>(var_2.x, true, var_2.x | var_2.x, any(vec3<bool>(true, var_2.x, true)))), select(select(!vec4<bool>(var_1.b, false, false, var_2.x), select(vec4<bool>(true, var_2.x, var_1.b, true), vec4<bool>(true, false, false, var_2.x), vec4<bool>(true, false, false, true)), vec4<bool>(var_2.x, var_2.x, false, false)), !select(vec4<bool>(true, false, var_2.x, arg_0.c.b), vec4<bool>(var_1.c.b.b, var_2.x, true, true), arg_0.b.b), true)), vec4<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2400f * 546f), _wgslsmith_f_op_f32(-1047f - -376f))) <= _wgslsmith_f_op_f32(ceil(-386f)), ~(~4294967295u) < _wgslsmith_add_u32(1u, abs(global1[_wgslsmith_index_u32(1u, 28u)])), select(all(select(var_2, vec3<bool>(var_1.b, true, var_1.b), var_2.x)), 322f < _wgslsmith_f_op_f32(floor(643f)), !(true & var_2.x))), vec4<bool>(var_2.x, false, all(!(!vec3<bool>(arg_0.c.b, arg_0.c.b, false))), !arg_0.c.b));
    var var_4 = Struct_1(func_2(Struct_2(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.a, arg_0.a, vec4<u32>(arg_0.a.x, arg_0.a.x, 0u, 1u)), _wgslsmith_mod_vec4_u32(var_1.c.a, vec4<u32>(u_input.a.x, 25871u, global1[_wgslsmith_index_u32(arg_0.a.x, 28u)], var_1.a.x))), arg_0.b, func_2(Struct_2(vec4<u32>(var_1.a.x, u_input.a.x, arg_0.a.x, 0u), Struct_1(arg_0.c.a, false), Struct_1(var_1.c.c.a, var_2.x)), -963f, min(u_input.a, u_input.a)).b), -600f, _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.a.x, u_input.a.x), u_input.a)).b.a, all(var_3));
    return var_1.c.c.a.yxx;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool, arg_3: bool) -> vec4<u32> {
    let var_0 = abs(func_4(func_2(Struct_2(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.a.x, 28u)], 1u, u_input.a.x, 0u), arg_0.b, arg_0.c), 853f, reverseBits(vec2<u32>(arg_0.a.x, u_input.a.x)))) | vec3<i32>(1i, _wgslsmith_dot_vec2_i32(-arg_0.c.a.xw, firstLeadingBit(vec2<i32>(13590i, 0i))), ~(-10408i)));
    let var_1 = _wgslsmith_add_i32(u_input.b & _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.b.a.wz, -vec2<i32>(20717i, 1i)), arg_0.b.a.xz), firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_0.zx << (arg_0.a.wy % vec2<u32>(32u)), arg_0.c.a.wz), 0i)));
    global0 = -232f;
    let var_2 = Struct_3(select(vec4<bool>(arg_1.x, false, false, _wgslsmith_mult_u32(15411u, arg_0.a.x) != ~37252u), select(!vec4<bool>(true, true, arg_1.x, true), select(select(vec4<bool>(true, arg_3, arg_2, true), vec4<bool>(true, arg_2, arg_3, arg_2), true), select(vec4<bool>(arg_0.c.b, arg_0.b.b, arg_3, false), vec4<bool>(arg_2, arg_3, true, arg_2), arg_3), vec4<bool>(false, true, true, arg_2)), select(select(vec4<bool>(true, true, arg_0.b.b, arg_3), vec4<bool>(false, true, false, arg_3), true), !vec4<bool>(arg_0.c.b, arg_3, arg_0.b.b, arg_1.x), arg_0.c.b)), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f) - _wgslsmith_f_op_f32(1000f - 838f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-584f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(371f)) - _wgslsmith_f_op_f32(f32(-1f) * -947f)))), Struct_2(func_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(727f))), firstTrailingBit(reverseBits(vec2<u32>(0u, 4294967295u)))).a, func_2(func_2(arg_0, _wgslsmith_f_op_f32(step(395f, 1000f)), arg_0.a.wz), 2122f, ~vec2<u32>(arg_0.a.x, 0u) | arg_0.a.zx).b, Struct_1(firstTrailingBit(vec4<i32>(var_1, u_input.b, 2147483647i, -2147483647i)), select(true, !arg_3, true))));
    var var_3 = func_2(Struct_2(firstLeadingBit(~abs(vec4<u32>(22800u, arg_0.a.x, var_2.c.a.x, 0u))), var_2.c.c, func_2(func_2(func_2(Struct_2(var_2.c.a, Struct_1(arg_0.b.a, false), Struct_1(var_2.c.b.a, arg_3)), var_2.b.x, vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 28u)])), 1f, _wgslsmith_sub_vec2_u32(arg_0.a.yx, var_2.c.a.yx)), var_2.b.x, arg_0.a.wx).b), _wgslsmith_f_op_f32(max(553f, _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(~92204u, min(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 28u)], 28u)], 28u)], 28u)]), arg_0.a.x, 16663u), Struct_2(arg_0.a, var_2.c.b, Struct_1(vec4<i32>(-23767i, 62374i, 0i, arg_0.b.a.x), arg_2)), arg_0.c)).x)), u_input.a).b;
    return ~_wgslsmith_clamp_vec4_u32(~select(var_2.c.a, var_2.c.a, vec4<bool>(false, arg_3, false, true)), arg_0.a, arg_0.a) ^ arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = Struct_5(~(~u_input.a), false, Struct_2(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(47833u, 0u, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0, 8043u, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], u_input.a.x), func_1(Struct_2(vec4<u32>(71624u, 5019u, 4294967295u, 57793u), Struct_1(vec4<i32>(u_input.b, -12048i, u_input.b, u_input.b), false), Struct_1(vec4<i32>(u_input.b, 2147483647i, -54163i, u_input.b), true)), vec3<bool>(false, true, false), false, false)), vec4<u32>(min(var_0, var_0), min(4294967295u, 4294967295u), 46987u, u_input.a.x)), func_2(func_2(Struct_2(vec4<u32>(global1[_wgslsmith_index_u32(22590u, 28u)], u_input.a.x, var_0, global1[_wgslsmith_index_u32(1501u, 28u)]), Struct_1(vec4<i32>(-24982i, 15556i, -1i, -32928i), false), Struct_1(vec4<i32>(-1698i, -36565i, 0i, -2147483647i), true)), _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(var_0, global1[_wgslsmith_index_u32(var_0, 28u)], u_input.a.x, 4294967295u), Struct_2(vec4<u32>(var_0, var_0, 1u, global1[_wgslsmith_index_u32(30698u, 28u)]), Struct_1(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), true), Struct_1(vec4<i32>(-2147483647i, u_input.b, -2147483647i, 24137i), false)), Struct_1(vec4<i32>(-17164i, u_input.b, 1i, -1i), true))).x, _wgslsmith_add_vec2_u32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(951f)) + _wgslsmith_f_op_f32(f32(-1f) * -1307f)), reverseBits(~vec2<u32>(29536u, 26136u))).c, func_2(Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(9109u, u_input.a.x, var_0, global1[_wgslsmith_index_u32(var_0, 28u)]), vec4<u32>(7470u, global1[_wgslsmith_index_u32(var_0, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], u_input.a.x)), func_2(Struct_2(vec4<u32>(0u, 10678u, u_input.a.x, u_input.a.x), Struct_1(vec4<i32>(u_input.b, 0i, 25159i, 38344i), true), Struct_1(vec4<i32>(u_input.b, 23283i, u_input.b, u_input.b), false)), -1286f, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35154u, 28u)], 28u)], 28u)], 1u)).c, Struct_1(vec4<i32>(32362i, 0i, u_input.b, 6000i), false)), _wgslsmith_f_op_f32(f32(-1f) * -630f), u_input.a).c), _wgslsmith_dot_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.b, 26315i, u_input.b, u_input.b))), ~vec4<i32>(9448i, 1i, 33566i, -1i) ^ vec4<i32>(44848i, 40133i, 40146i, u_input.b)) & 2147483647i, vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(~u_input.a, u_input.a)), global1[_wgslsmith_index_u32(u_input.a.x & ~_wgslsmith_clamp_u32(25555u, u_input.a.x, var_0), 28u)]));
    let var_2 = Struct_5(vec2<u32>(global1[_wgslsmith_index_u32(~var_1.a.x ^ var_0, 28u)], ~(var_0 >> (var_0 % 32u))) << (u_input.a % vec2<u32>(32u)), var_1.c.c.b, Struct_2(func_2(var_1.c, -149f, vec2<u32>(19527u, max(global1[_wgslsmith_index_u32(15054u, 28u)], 0u))).a, func_2(func_2(func_2(Struct_2(vec4<u32>(11280u, 42470u, 917u, 25735u), Struct_1(var_1.c.b.a, var_1.c.b.b), var_1.c.b), 789f, var_1.c.a.yz), 1088f, _wgslsmith_mult_vec2_u32(vec2<u32>(81193u, 92790u), var_1.a)), 1000f, vec2<u32>(u_input.a.x, 17063u) >> ((vec2<u32>(1343u, u_input.a.x) >> (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u))).c, func_2(Struct_2(vec4<u32>(31932u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69113u, 28u)], 28u)], var_1.c.a.x), var_1.c.b, Struct_1(var_1.c.c.a, var_1.c.c.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1815f - -1000f))), abs(u_input.a)).c), u_input.b, var_1.c.a.wx);
    let var_3 = Struct_2(~vec4<u32>(_wgslsmith_div_u32(50102u, var_2.c.a.x), var_1.a.x, 1u, abs(59021u)), func_2(func_2(var_2.c, 659f, _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(14680u, global1[_wgslsmith_index_u32(1u, 28u)]), vec2<u32>(1u, global1[_wgslsmith_index_u32(var_1.c.a.x, 28u)]), vec2<u32>(8595u, var_0)), vec2<u32>(var_2.c.a.x, u_input.a.x))), -1530f, vec2<u32>(47783u, _wgslsmith_clamp_u32(u_input.a.x, 94167u, abs(global1[_wgslsmith_index_u32(1u, 28u)])))).b, var_1.c.c);
    var var_4 = select(~firstTrailingBit(select(max(vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 50449u, 0u), var_3.a), _wgslsmith_mod_vec4_u32(var_1.c.a, var_3.a), !var_3.b.b)), vec4<u32>(func_2(func_2(var_1.c, -1516f, firstTrailingBit(vec2<u32>(u_input.a.x, 76024u))), _wgslsmith_div_f32(-752f, -1446f), var_2.e ^ ~vec2<u32>(146u, 29944u)).a.x, var_0, 32120u, ~reverseBits(0u) & _wgslsmith_sub_u32(~1u, _wgslsmith_mult_u32(var_2.a.x, global1[_wgslsmith_index_u32(var_0, 28u)]))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(firstLeadingBit(~var_2.c.c.a.xz) << (var_4.wz % vec2<u32>(32u))), _wgslsmith_clamp_u32(min(_wgslsmith_div_u32(4294967295u, abs(u_input.a.x)), reverseBits(40946u)), func_2(var_2.c, -594f, u_input.a).a.x ^ 0u, _wgslsmith_mult_u32(60462u, _wgslsmith_add_u32(var_1.a.x, 29492u))), ~1u);
}

