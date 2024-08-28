struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(-1i, -6498i), vec3<u32>(27624u, 1u, 83714u));

var<private> global1: array<bool, 16>;

var<private> global2: Struct_2 = Struct_2(vec2<i32>(-2849i, -38213i), vec3<u32>(0u, 1u, 19134u));

var<private> global3: array<bool, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(global2.a.x >> (1u % 32u), arg_2.c.a.x), -global0.a);
    var var_1 = arg_0.xy;
    global2 = Struct_2(~select(global2.a >> (vec2<u32>(1u, arg_2.a.b.x) % vec2<u32>(32u)), -(~global0.a), vec2<bool>(all(arg_1), arg_1.x)), firstLeadingBit(~(~arg_2.a.b)));
    global2 = arg_2.c;
    global0 = arg_2.c;
    return abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a << (15658u % 32u), 42800i, _wgslsmith_div_i32(var_0.x, 25667i)) & -min(vec3<i32>(arg_2.b, var_0.x, -1i), vec3<i32>(arg_2.b, u_input.a, 1i)), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(-17535i, 0i, arg_2.a.a.x), vec3<i32>(global0.a.x, global0.a.x, -1i))), select(countOneBits(vec3<i32>(u_input.a, global2.a.x, arg_2.b)), -vec3<i32>(u_input.a, var_0.x, 0i), true) & vec3<i32>(arg_2.c.a.x, 0i, -2147483647i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32) -> vec2<f32> {
    global2 = Struct_2(abs(vec2<i32>(37876i, _wgslsmith_div_i32(global0.a.x, 1i))), min(global2.b, global0.b));
    var var_0 = arg_0;
    let var_1 = min(max(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global2.b.x, 0u, global2.b.x), ~vec4<u32>(1u, 28042u, global0.b.x, 16288u)), ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global2.b.x, global2.b.x, global2.b.x, 0u)), vec4<u32>(2293u, global2.b.x, global0.b.x, global0.b.x) >> (vec4<u32>(global2.b.x, 4294967295u, global0.b.x, 1u) % vec4<u32>(32u)))), 55781u);
    global3 = array<bool, 25>();
    global1 = array<bool, 16>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(200f, 1000f))))) * vec2<f32>(-1868f, _wgslsmith_f_op_f32(f32(-1f) * -451f))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> f32 {
    var var_0 = 417f;
    let var_1 = Struct_1(-766f, _wgslsmith_f_op_vec2_f32(func_4(func_3(vec3<f32>(-531f, -583f, -1012f), select(select(vec3<bool>(global1[_wgslsmith_index_u32(16079u, 16u)], false, global1[_wgslsmith_index_u32(32666u, 16u)]), vec3<bool>(false, arg_1, false), true), !vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0.b.x, 25u)], false), false | arg_2), Struct_3(arg_0, 1i, Struct_2(vec2<i32>(u_input.a, 1i), arg_0.b)), global0.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-827f)), 218f, true)), -229f)))), 808f, _wgslsmith_div_vec3_u32(global2.b, ~(~(~vec3<u32>(52036u, 1u, 11832u)))), 19029i);
    global2 = arg_0;
    var_0 = _wgslsmith_f_op_f32(step(var_1.c, var_1.b.x));
    global2 = Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(arg_0.a.x, -3756i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, global2.a.x), vec2<i32>(794i, global2.a.x))), vec2<i32>(41176i, 1i)), vec3<u32>(min(~26240u, ~global0.b.x), abs(4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_1.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d.x, global2.b.x, global0.b.x, 15234u), vec4<u32>(1u, var_1.d.x, 81459u, var_1.d.x)))) & _wgslsmith_add_vec3_u32(vec3<u32>(global0.b.x, 0u, ~var_1.d.x), global0.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(101f, _wgslsmith_f_op_f32(-192f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-535f * -1504f), _wgslsmith_f_op_f32(var_1.c + var_1.a)))), arg_2)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = 2192u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-655f, 109f, -677f, 621f), vec4<f32>(-475f, -110f, 742f, 1755f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(353f, 2253f, -1995f, -727f), vec4<f32>(1190f, -128f, -444f, -630f)) - vec4<f32>(-174f, -1000f, -1937f, -2710f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, _wgslsmith_f_op_f32(func_2(arg_0.c, global1[_wgslsmith_index_u32(22709u, 16u)], global1[_wgslsmith_index_u32(33822u, 16u)])), 666f, -1619f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1638f)) - 618f), -847f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_1.x)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(-534f)))))), -1066f, vec3<u32>(43622u & _wgslsmith_dot_vec4_u32(vec4<u32>(23534u, 1245u, 25009u, 0u), vec4<u32>(1u, global2.b.x, global2.b.x, global0.b.x)), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global2.b.yz)) >> (vec3<u32>(global2.b.x, 1u, countOneBits(~4294967295u)) % vec3<u32>(32u)), select(_wgslsmith_mult_i32(-(~global2.a.x), -countOneBits(global0.a.x)), ~(_wgslsmith_clamp_i32(1i, global0.a.x, 62550i) & min(global0.a.x, 2147483647i)), !(!any(vec3<bool>(true, global3[_wgslsmith_index_u32(35360u, 25u)], true)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c - 767f)))), vec2<f32>(-809f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(-979f + _wgslsmith_f_op_f32(var_1.x * var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.c, global3[_wgslsmith_index_u32(4294967295u, 25u)], false))) - 1432f) + -1588f), vec3<u32>(global2.b.x, ~_wgslsmith_mod_u32(arg_0.c.b.x, global0.b.x), ~global0.b.x) >> (select(~vec3<u32>(var_2.d.x, 14696u, arg_0.a.b.x), ~global2.b << (~var_2.d % vec3<u32>(32u)), !select(vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(var_0, 16u)], global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(arg_0.c.b.x, 16u)]), vec3<bool>(true, false, false))) % vec3<u32>(32u)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, arg_0.a.a.x, global0.a.x >> (0u % 32u)), vec4<i32>(_wgslsmith_mod_i32(22425i, global2.a.x), 2147483647i, var_2.e, -2147483647i)), -15847i, global1[_wgslsmith_index_u32(var_2.d.x, 16u)]));
    var_3 = Struct_1(_wgslsmith_f_op_f32(min(var_2.a, -589f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1531f) + vec2<f32>(-1495f, var_1.x)) * vec2<f32>(_wgslsmith_f_op_f32(round(var_3.a)), -1909f)), -1094f, arg_0.c.b, func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.c + var_3.c)))), !select(vec3<bool>(true, true, false), !vec3<bool>(true, true, global3[_wgslsmith_index_u32(var_3.d.x, 25u)]), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(arg_0.a.b.x, 25u)])), arg_0, ~_wgslsmith_dot_vec3_u32(global0.b, var_2.d) >> (var_0 % 32u)).x);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 25>();
    global0 = Struct_2(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(60595i, u_input.a) ^ vec2<i32>(global0.a.x, global2.a.x), vec2<i32>(0i, 1i))) | global0.a, (global2.b ^ (~global0.b & (global0.b >> (vec3<u32>(10520u, global0.b.x, global2.b.x) % vec3<u32>(32u))))) & (global0.b | select(min(global2.b, global0.b), select(global0.b, vec3<u32>(global2.b.x, 8302u, global0.b.x), vec3<bool>(true, global3[_wgslsmith_index_u32(global2.b.x, 25u)], global1[_wgslsmith_index_u32(12427u, 16u)])), !global3[_wgslsmith_index_u32(0u, 25u)])));
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(vec2<i32>(-1i, 27100i), global0.b), u_input.a, Struct_2(vec2<i32>(u_input.a, global0.a.x), global2.b)))), 1f), 1133f, 1f, -1776f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(539f, 440f, -481f, -1229f) - vec4<f32>(167f, -1723f, -1487f, 517f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-628f + 1628f)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -2147483647i), vec3<i32>(1i, -9591i, u_input.a)), _wgslsmith_f_op_f32(162f - -507f))).x, _wgslsmith_f_op_f32(trunc(-533f)), _wgslsmith_f_op_f32(step(1f, 159f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.yyx))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global0.b, select(~global0.b, global0.b, vec3<bool>(true, true, global1[_wgslsmith_index_u32(global2.b.x, 16u)]))), min(firstTrailingBit(global2.b.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(global2.b.x, global0.b.x, global2.b.x), _wgslsmith_add_vec3_u32(global0.b, global0.b)))));
}

