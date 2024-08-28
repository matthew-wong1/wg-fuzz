struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
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

var<private> global0: f32;

var<private> global1: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global2: array<vec2<bool>, 27>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: f32) -> i32 {
    var var_0 = Struct_5(_wgslsmith_mult_u32(u_input.b.x, u_input.c.x), Struct_2(-586f, true, Struct_1(_wgslsmith_sub_u32(u_input.b.x, ~4294967295u), _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.c.x, u_input.c.x, u_input.b.x)), ~abs(20622u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -692f), arg_2, arg_2) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1624f, arg_2, arg_2))))), vec3<f32>(_wgslsmith_f_op_f32(floor(-190f)), arg_2, arg_2), -1000f, arg_2);
    let var_1 = Struct_3(-abs(_wgslsmith_mod_vec2_i32(-u_input.d, arg_0)), var_0.b.c.b, var_0.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(var_0.c)), var_0.b.d)), global1[_wgslsmith_index_u32(abs(~(~0u)) << (_wgslsmith_clamp_u32(0u, max(_wgslsmith_clamp_u32(var_0.b.c.a, 1u, var_0.b.c.c), var_0.b.c.c), ~(~u_input.c.x)) % 32u), 12u)]);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_2)))))), _wgslsmith_f_op_f32(arg_2 - -1425f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-722f + 994f) - _wgslsmith_f_op_f32(182f + _wgslsmith_f_op_f32(-arg_2))));
    var_0 = Struct_5(1u, var_1.c, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-297f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-620f, 1092f) + var_1.c.d.x), _wgslsmith_f_op_f32(494f - _wgslsmith_f_op_f32(round(-473f)))))), -384f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(271f, arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1360f * arg_2)))), -637f)));
    let var_3 = _wgslsmith_add_u32(var_0.b.c.c, 2241u) << (min(1u, ~1u) % 32u);
    return _wgslsmith_div_i32(~var_1.a.x, reverseBits(var_1.a.x));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_3(~reverseBits(-u_input.d | u_input.d), u_input.b, Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-662f, 543f), _wgslsmith_f_op_f32(sign(-387f)))), _wgslsmith_mod_i32(-u_input.a, func_3(u_input.d, -2147483647i, -498f)) > min(u_input.a & u_input.a, -1i), Struct_1(4294967295u, u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, 53438u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.b.x) & vec4<u32>(u_input.b.x, 1u, 0u, 27004u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1197f, -1188f, -392f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(359f, 1132f, 728f) + vec3<f32>(-756f, 554f, -620f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(539f)), -1197f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-960f)), _wgslsmith_f_op_f32(sign(274f)))))), vec3<bool>(func_3(abs(u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, arg_0, 0i, arg_0), vec4<i32>(u_input.a, u_input.a, 0i, u_input.d.x)), -1000f) == _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0, arg_0, u_input.d.x), vec3<i32>(u_input.a, -2147483647i, arg_0)), arg_0 < (_wgslsmith_sub_i32(43533i, arg_0) | (u_input.d.x ^ u_input.d.x)), all(global2[_wgslsmith_index_u32(u_input.b.x, 27u)])));
    let var_1 = Struct_5(0u | u_input.c.x, var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d))) * var_0.c.d), var_0.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(354f, _wgslsmith_div_f32(var_0.d.x, var_0.c.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-131f))))));
    var var_2 = var_0.e.x;
    var var_3 = ~countOneBits(var_0.b.x);
    var_0 = Struct_3(vec2<i32>(-32695i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.a.x, arg_0, u_input.d.x, -42758i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_0, -6214i, 27686i), vec4<i32>(0i, u_input.d.x, arg_0, var_0.a.x)), countOneBits(vec4<i32>(arg_0, -1174i, 0i, 72261i))), abs(-vec4<i32>(arg_0, -39705i, 1i, 0i)))), ~(~(~(~vec3<u32>(var_1.a, u_input.c.x, u_input.b.x)))), Struct_2(var_0.c.a, min(u_input.a, _wgslsmith_mod_i32(arg_0, var_0.a.x)) < u_input.a, var_0.c.c, var_1.c), vec3<f32>(-660f, var_0.c.a, _wgslsmith_f_op_f32(select(var_0.d.x, _wgslsmith_f_op_f32(var_1.c.x - var_1.c.x), all(vec2<bool>(var_1.b.b, var_1.b.b))))), select(var_0.e, var_0.e, var_0.e.x));
    return 1u;
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-430f, -1000f)))) * -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f)) - _wgslsmith_f_op_f32(f32(-1f) * -1260f)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2345f)), arg_0.x, Struct_1(max(~44904u, ~u_input.b.x) | abs(u_input.c.x >> (37175u % 32u)), u_input.c, _wgslsmith_sub_u32(~16550u, ~(~u_input.c.x))), vec3<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(max(-504f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2125f + -390f))))), _wgslsmith_f_op_f32(select(-233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-619f, 2462f)) - _wgslsmith_f_op_f32(min(1069f, -565f))), !arg_0.x))));
}

fn func_1() -> vec2<i32> {
    var var_0 = false;
    var var_1 = 2962i;
    var var_2 = func_4(select(global1[_wgslsmith_index_u32(26507u << ((func_2(1i) ^ u_input.b.x) % 32u), 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)]));
    var var_3 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.b), var_2.c.c), ~var_2.c.a), vec3<u32>(0u, 0u, ~(~countOneBits(59818u))), _wgslsmith_clamp_u32(14324u, countOneBits(_wgslsmith_clamp_u32(u_input.b.x, 13432u, 6156u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.a, 60488u), var_2.c.b.yz) % 32u)), var_2.c.c));
    let var_4 = Struct_4(Struct_1(5328u, firstTrailingBit(~var_2.c.b >> (~var_2.c.b % vec3<u32>(32u))), ~var_2.c.b.x), var_2.b & var_2.b, Struct_3(u_input.d, min(u_input.c & var_2.c.b, vec3<u32>(0u, var_3.b.x, var_3.b.x)) >> (_wgslsmith_mod_vec3_u32(var_3.b, var_3.b) % vec3<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f) + _wgslsmith_f_op_f32(f32(-1f) * -1504f)), var_2.b, var_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.d))), var_2.d, !global1[_wgslsmith_index_u32(select(var_3.c, u_input.b.x, true) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 12285u, 47976u), vec3<u32>(u_input.b.x, 10126u, u_input.c.x)), 12u)]), all(select(select(vec2<bool>(true, true), global2[_wgslsmith_index_u32(abs(var_2.c.b.x), 27u)], global2[_wgslsmith_index_u32(~u_input.c.x, 27u)]), select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(false, var_2.b), false), !(!vec2<bool>(true, var_2.b)))));
    return abs(select(u_input.d | ((u_input.d | vec2<i32>(-12051i, var_4.c.a.x)) >> (~vec2<u32>(0u, 0u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(u_input.d, -vec2<i32>(var_4.c.a.x, 5151i)), select(var_2.c.c <= 4294967295u, false, true) & (55300u >= firstLeadingBit(var_2.c.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(-select(-func_1(), _wgslsmith_div_vec2_i32(abs(u_input.d), vec2<i32>(-1i, u_input.a)), vec2<bool>(any(global2[_wgslsmith_index_u32(0u, 27u)]), true)), ~firstLeadingBit(u_input.c), func_4(vec3<bool>(any(vec2<bool>(false, true)), false | all(vec4<bool>(true, false, true, false)), ~24447u != min(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f)), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f)))), global1[_wgslsmith_index_u32(u_input.b.x, 12u)]);
    global0 = _wgslsmith_f_op_f32(min(var_0.d.x, -253f));
    global2 = array<vec2<bool>, 27>();
    var_0 = Struct_3(firstLeadingBit(vec2<i32>(~abs(var_0.a.x), ~(-u_input.a))), var_0.c.c.b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.d.x * var_0.c.a)), ~0u > (u_input.c.x | _wgslsmith_add_u32(var_0.b.x, 7811u)), Struct_1(u_input.b.x, var_0.b, min(38792u, _wgslsmith_mult_u32(var_0.b.x, 42454u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(650f, -155f, var_0.c.d.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(597f, var_0.c.a, var_0.c.a)) - vec3<f32>(var_0.d.x, -156f, 204f)))), var_0.c.d, select(global1[_wgslsmith_index_u32(select(var_0.c.c.a, u_input.b.x, var_0.c.b), 12u)], var_0.e, var_0.e.x));
    let var_1 = func_4(select(vec3<bool>(true & (var_0.c.d.x <= var_0.d.x), true, !var_0.e.x), global1[_wgslsmith_index_u32(24037u, 12u)], true)).c;
    var var_2 = Struct_4(func_4(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, 1u), 1u) & ~0u, 12u)]).c, all(var_0.e), Struct_3(_wgslsmith_mod_vec2_i32(-u_input.d, var_0.a ^ var_0.a) | ~vec2<i32>(var_0.a.x, 0i), _wgslsmith_sub_vec3_u32(var_1.b, vec3<u32>(~u_input.c.x, firstLeadingBit(u_input.c.x), ~var_1.a)), func_4(!global1[_wgslsmith_index_u32(abs(1u), 12u)]), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.d.x * var_0.c.d.x), _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x), -466f))), !vec3<bool>(true, var_0.e.x, any(vec4<bool>(false, true, true, var_0.c.b)))), all(!vec4<bool>(var_0.c.c.b.x <= var_1.a, true, !var_0.e.x, all(vec2<bool>(var_0.e.x, var_0.c.b)))));
    var var_3 = Struct_4(func_4(select(!select(vec3<bool>(var_0.c.b, var_0.c.b, true), vec3<bool>(var_2.c.c.b, var_2.c.c.b, var_0.c.b), true), vec3<bool>(var_0.e.x, var_2.c.d.x == var_0.d.x, func_4(vec3<bool>(false, var_0.c.b, var_0.c.b)).b), vec3<bool>(false, select(var_2.c.c.b, true, var_0.e.x), var_2.d))).c, var_0.c.b, Struct_3(_wgslsmith_clamp_vec2_i32(-(var_0.a & var_2.c.a), vec2<i32>(var_0.a.x, -var_0.a.x), vec2<i32>(var_2.c.a.x, var_2.c.a.x)), u_input.c, var_2.c.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.d))), select(!vec3<bool>(var_0.c.b, false, var_0.e.x), vec3<bool>(var_2.c.c.b & var_2.d, var_0.c.b, true), true)), var_0.e.x);
    let var_4 = 955f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(u_input.a, var_0.a.x) & 1i));
}

