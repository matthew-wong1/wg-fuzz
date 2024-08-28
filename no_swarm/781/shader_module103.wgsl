struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(1734f, 808f, -197f), 4294967295u, Struct_1(vec3<i32>(-41517i, 0i, -1i), -1i, vec4<bool>(true, true, false, true), false), false);

var<private> global1: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<f32>) -> vec2<u32> {
    let var_0 = 1u;
    global0 = Struct_3(arg_3.wwz, 1u, global0.c, global0.c.d);
    global0 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.x, -451f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + _wgslsmith_f_op_f32(-527f * arg_3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1602f, arg_1.b.x, -994f))))), _wgslsmith_mod_u32(1u, select(countOneBits(~u_input.a), 17571u, true)), Struct_1(-arg_0.a.a, 12697i, vec4<bool>(select(arg_2.x, true, all(vec2<bool>(true, arg_1.a.c.x))), any(vec3<bool>(arg_1.a.d, arg_0.a.c.x, true)), true, true), !all(arg_0.a.c.xyy) && arg_2.x), -arg_1.a.a.x != global0.c.b);
    var var_1 = Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1108f + 213f), -347f, _wgslsmith_f_op_f32(round(-390f)), _wgslsmith_f_op_f32(max(arg_3.x, arg_3.x))))));
    let var_2 = true;
    return vec2<u32>(4131u, u_input.a);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_2(global0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, global0.a.x, arg_1.b.x, -941f))))) + _wgslsmith_f_op_vec4_f32(arg_1.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(100f, arg_1.b.x, global0.a.x, arg_1.b.x) * arg_1.b)))));
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -746f), _wgslsmith_f_op_f32(arg_1.b.x + -751f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.x)) - _wgslsmith_f_op_f32(arg_2.x * -106f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(global0.a.x, var_0.b.x), _wgslsmith_f_op_f32(trunc(887f)), global0.a.x))))), global0.b, global0.c, u_input.a <= ~(~(~4294967295u)));
    let var_1 = func_3(arg_1, Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b)) + arg_2)), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - 175f) + _wgslsmith_f_op_f32(ceil(1727f))) < 1134f, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b)));
    let var_2 = arg_1.b.x;
    global0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-444f)) + global0.a.x))), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(round(-277f)), !arg_1.a.d)))), 18135u, Struct_1(vec3<i32>(abs(abs(global0.c.a.x)), -global0.c.b, _wgslsmith_add_i32(0i, ~39523i)), 1i, var_0.a.c, false), false);
    return global0.c.c.ywy;
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec2<f32> {
    global1 = global0.c.b;
    global0 = arg_1;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-776f, 242f)) + 720f)))), 948f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a.x)) - _wgslsmith_f_op_f32(-arg_1.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(-1000f * 411f))))));
    let var_1 = ~(~firstTrailingBit(vec4<u32>(~u_input.a, ~arg_0, _wgslsmith_mod_u32(arg_0, u_input.a), u_input.a)));
    let var_2 = vec3<bool>(true, !any(func_2(all(vec4<bool>(global0.d, false, true, arg_2.x)), Struct_2(Struct_1(vec3<i32>(-2147483647i, -21343i, arg_1.c.a.x), arg_1.c.a.x, vec4<bool>(true, true, arg_2.x, false), arg_2.x), vec4<f32>(arg_1.a.x, var_0.x, -591f, var_0.x)), vec4<f32>(var_0.x, 493f, arg_1.a.x, -183f))), !(var_0.x != var_0.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -574f)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(381f - global0.a.x)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(global0.c, arg_1.b);
    global1 = 62325i;
    var var_1 = arg_2.x;
    var var_2 = 45574u;
    var_2 = ~(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), 15378u ^ u_input.a) & firstTrailingBit(1u)) & reverseBits(firstTrailingBit(~arg_3));
    return Struct_1(vec3<i32>(global0.c.a.x, 0i, -29279i), (-global0.c.b ^ ~(-2147483647i)) | _wgslsmith_clamp_i32(max(arg_2.x, -2147483647i) | arg_1.a.b, var_0.a.a.x, 36002i), select(!(!vec4<bool>(global0.c.d, true, global0.c.d, true)), !(!global0.c.c), vec4<bool>(true, arg_1.a.c.x, true, !(!arg_1.a.c.x))), any(select(!global0.c.c, !vec4<bool>(global0.d, true, global0.c.d, true), select(arg_1.a.c, !var_0.a.c, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d;
    var var_1 = Struct_3(global0.a, firstLeadingBit(~u_input.a), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(0u, Struct_3(vec3<f32>(global0.a.x, global0.a.x, -1257f), u_input.a, global0.c, global0.d), vec2<bool>(global0.d, global0.d), vec2<bool>(true, global0.d))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(global0.a.zy))))), Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(global0.c.a, vec3<i32>(75097i, -25341i, global0.c.a.x)), -u_input.b.x, global0.c.c, global0.a.x <= global0.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, 408f, 876f, -583f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-485f, global0.a.x, global0.a.x, -149f)))), vec4<i32>(-43387i, countOneBits(u_input.b.x), -1i, _wgslsmith_mod_i32(1i, -730i)), u_input.a), global0.d);
    var var_2 = _wgslsmith_mult_vec4_i32(~min(-vec4<i32>(48831i, 60847i, -2147483647i, var_1.c.b) | _wgslsmith_add_vec4_i32(vec4<i32>(var_1.c.a.x, global0.c.b, u_input.b.x, global0.c.b), vec4<i32>(-1i, global0.c.b, var_1.c.b, 0i)), -vec4<i32>(var_1.c.a.x, var_1.c.b, -7123i, var_1.c.a.x)), -select(~(vec4<i32>(u_input.b.x, 46694i, -12222i, -1i) | vec4<i32>(u_input.b.x, var_1.c.a.x, var_1.c.a.x, global0.c.b)), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-5508i, global0.c.a.x, global0.c.b, u_input.b.x), vec4<i32>(0i, 41972i, global0.c.b, var_1.c.b))), func_4(global0.a.xz, Struct_2(Struct_1(vec3<i32>(-775i, global0.c.b, global0.c.b), var_1.c.a.x, vec4<bool>(false, true, true, false), true), vec4<f32>(-313f, -2511f, 647f, global0.a.x)), select(vec4<i32>(global0.c.a.x, global0.c.a.x, global0.c.a.x, global0.c.b), vec4<i32>(u_input.b.x, var_1.c.a.x, u_input.b.x, u_input.b.x), vec4<bool>(false, false, true, var_1.d)), _wgslsmith_sub_u32(global0.b, 12160u)).c));
    var var_3 = vec2<i32>(-select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.b, u_input.b.x), var_1.c.a.yy), _wgslsmith_add_i32(1i, firstTrailingBit(-8946i)), (36596u >> (1u % 32u)) <= ~var_1.b), u_input.b.x);
    let var_4 = countOneBits(vec2<i32>(0i, 0i));
    var_2 = vec4<i32>(var_3.x ^ _wgslsmith_div_i32(_wgslsmith_div_i32(1i, global0.c.b), (global0.c.a.x << (global0.b % 32u)) << (1u % 32u)), _wgslsmith_dot_vec3_i32(global0.c.a, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.xx)), Struct_2(Struct_1(vec3<i32>(var_1.c.b, 1i, var_1.c.a.x), 32579i, vec4<bool>(var_1.d, true, global0.d, global0.d), var_1.c.d), vec4<f32>(-119f, var_1.a.x, 131f, var_1.a.x)), -(~vec4<i32>(var_4.x, 1i, -26747i, -1i)), var_1.b).a), ~(-1i), 0i);
    let var_5 = !var_1.c.d;
    let var_6 = var_1.c.d;
    let var_7 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(floor(587f)), -1334f, _wgslsmith_f_op_f32(round(global0.a.x))), var_1.b, Struct_1(vec3<i32>((-2147483647i | var_1.c.a.x) | _wgslsmith_add_i32(global0.c.a.x, -37419i), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1373f, var_1.a.x) - vec2<f32>(-771f, 233f)), Struct_2(global0.c, vec4<f32>(1000f, global0.a.x, var_1.a.x, var_1.a.x)), vec4<i32>(35838i, 13613i, 0i, var_3.x), ~0u).a.x, 37032i), _wgslsmith_add_i32(-2147483647i, min(_wgslsmith_mod_i32(-2147483647i, u_input.b.x), 0i << (u_input.a % 32u))), vec4<bool>(all(select(var_1.c.c.yx, var_1.c.c.zz, false)), all(var_1.c.c.yzx), global0.d, abs(u_input.b.x) >= 5145i), any(global0.c.c)), select(true, true, !any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(select(0i, var_7.c.b, var_1.c.d));
}

