struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: i32 = -1i;

var<private> global2: vec2<i32> = vec2<i32>(-1i, 0i);

var<private> global3: vec4<f32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -872f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global3.xw)) - _wgslsmith_f_op_vec2_f32(min(global3.zw, vec2<f32>(-2446f, arg_1)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global3.ww), global3.zx)))))));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x)))))), _wgslsmith_f_op_f32(sign(global3.x)), 1328f, _wgslsmith_f_op_f32(global3.x - var_0.x));
    var var_1 = firstTrailingBit(u_input.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.wy + _wgslsmith_f_op_vec2_f32(-global3.ww)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-global3.x))))));
    var_1 = vec4<i32>(~(-u_input.e.x), ~abs(0i), -22317i, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, -1i, var_1.x, -2147483647i)), u_input.c));
    return -162f;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> vec2<bool> {
    var var_0 = Struct_4(~global2.x);
    let var_1 = Struct_1(vec4<u32>(0u, abs(~_wgslsmith_add_u32(0u, arg_1)), ~((u_input.b ^ 11039u) >> (arg_1 % 32u)), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(func_3(any(vec3<bool>(true, false, true)), -233f, Struct_4(global2.x), ~u_input.e))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(select(global3.x, -659f, false)))) - _wgslsmith_f_op_f32(-arg_0.x))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(82926u, 12895u), vec2<u32>(0u, arg_1)), vec2<bool>(true, true)) & (~vec2<u32>(3209u, u_input.b) | (vec2<u32>(u_input.b, u_input.b) & vec2<u32>(13125u, arg_1))), vec2<u32>(_wgslsmith_div_u32(arg_1, 0u) | ~u_input.b, 1u)), 2u)]);
    let var_2 = abs(_wgslsmith_dot_vec4_u32(var_1.a, ~var_1.a));
    global0 = array<bool, 2>();
    let var_3 = select(u_input.b, 26374u, (_wgslsmith_f_op_f32(-arg_0.x) == _wgslsmith_f_op_f32(global3.x - global3.x)) || select(all(vec2<bool>(true, global0[_wgslsmith_index_u32(19504u, 2u)])), false, !global0[_wgslsmith_index_u32(0u, 2u)])) | 31453u;
    return !(!select(!(!vec2<bool>(var_1.c, var_1.c)), select(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(var_1.a.x, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 2u)], global0[_wgslsmith_index_u32(57375u, 2u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(75500u, 2u)])), vec2<bool>(var_1.c, false), select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)]), vec2<bool>(var_1.c, global0[_wgslsmith_index_u32(16259u, 2u)]), true)), select(any(vec2<bool>(var_1.c, false)), false, !global0[_wgslsmith_index_u32(var_3, 2u)])));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<i32>) -> vec2<i32> {
    var var_0 = select(global0[_wgslsmith_index_u32(12719u, 2u)], false, func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-388f, global3.x, global3.x, 993f))), vec4<f32>(-1664f, global3.x, 970f, global3.x), !vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 2u)], global0[_wgslsmith_index_u32(35865u, 2u)], global0[_wgslsmith_index_u32(arg_1, 2u)], arg_0.x))), _wgslsmith_mult_u32(u_input.b & 1u, u_input.b)).x) || false;
    var var_1 = Struct_1(firstLeadingBit(min(vec4<u32>(4294967295u, _wgslsmith_add_u32(arg_1, 4294967295u), ~26226u, ~11138u), vec4<u32>(_wgslsmith_mod_u32(24223u, 57487u), firstTrailingBit(0u), firstTrailingBit(u_input.b), firstLeadingBit(u_input.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(127f)), 1999f, func_2(vec4<f32>(_wgslsmith_div_f32(global3.x, 669f), _wgslsmith_div_f32(1675f, 1000f), _wgslsmith_f_op_f32(-218f - global3.x), global3.x), u_input.b).x)), select(_wgslsmith_mult_u32(arg_1 & 48043u, ~4294967295u) != _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 20564u), max(vec2<u32>(59438u, 73571u), vec2<u32>(arg_1, arg_1))), any(vec4<bool>(true, false, false, arg_0.x)) | (!global0[_wgslsmith_index_u32(arg_1, 2u)] || !global0[_wgslsmith_index_u32(u_input.b, 2u)]), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), abs(vec2<u32>(1u, 4294967295u))), 2u)]));
    global2 = -vec2<i32>(_wgslsmith_mult_i32(arg_2.x, i32(-1i) * -u_input.c.x), arg_2.x | global2.x);
    var var_2 = var_1.b;
    var var_3 = all(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-206f - global3.x)) == var_1.b, (var_1.a.x << (~4294967295u % 32u)) != (countOneBits(arg_1) << (var_1.a.x % 32u))));
    return vec2<i32>(0i, ~(-_wgslsmith_add_i32(arg_2.x, min(u_input.a, global2.x))));
}

fn func_1() -> f32 {
    global2 = func_4(!func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global3.x, -1202f, global3.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(761f, 1833f, 614f, 242f) - vec4<f32>(global3.x, global3.x, 2612f, global3.x))), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b, 1u, 1u, 71014u)), vec4<u32>(40983u, u_input.b, u_input.b, 1334u))), 4294967295u, vec2<i32>(u_input.e.x, ~u_input.a));
    global2 = ~vec2<i32>(_wgslsmith_dot_vec4_i32(~(-u_input.c), ~u_input.c), max(_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(-56017i, -11853i)) | ~19988i, ~u_input.e.x));
    let var_0 = global3.zx;
    let var_1 = reverseBits(select(~select(u_input.b >> (11868u % 32u), u_input.b ^ 6544u, true), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 51327u, 0u), vec3<u32>(u_input.b, 31230u, u_input.b)) | vec3<u32>(1u, u_input.b, 0u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 25194u), vec3<u32>(23060u, u_input.b, 6672u))), any(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], false, false, true))));
    let var_2 = _wgslsmith_sub_i32(~_wgslsmith_div_i32(-2147483647i >> ((20301u ^ u_input.b) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(21424i, 1i, 2147483647i), u_input.c.ywy >> (vec3<u32>(1u, 4294967295u, 1u) % vec3<u32>(32u)))), 0i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1082f, _wgslsmith_f_op_f32(func_3(!global0[_wgslsmith_index_u32(19102u, 2u)], _wgslsmith_f_op_f32(169f + global3.x), Struct_4(u_input.d.x), vec2<i32>(global2.x, u_input.a))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(global3.x + 2246f), !global0[_wgslsmith_index_u32(0u, 2u)])) * 697f)), global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + global3.x);
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(min(~(~u_input.b), u_input.b), _wgslsmith_mod_u32(firstLeadingBit(u_input.b), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(14314u, 4294967295u)))), ~(_wgslsmith_mult_u32(u_input.b, u_input.b) >> (~11072u % 32u))), _wgslsmith_clamp_u32(~(~u_input.b), ~4294967295u, max(firstTrailingBit(u_input.b) | 45971u, _wgslsmith_mod_u32(0u, u_input.b))));
    global1 = 1i;
    let var_2 = Struct_4(_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.e.x, 41829i), u_input.c.yx)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_mod_u32(62881u, 24914u), ~(~u_input.b), true) & _wgslsmith_dot_vec2_u32(vec2<u32>(~49972u, select(u_input.b, 46469u, true)), vec2<u32>(1u, u_input.b) | ~vec2<u32>(u_input.b, 5488u)), _wgslsmith_div_f32(446f, -1152f), vec4<i32>(global2.x, _wgslsmith_div_i32(~(~(-1i)), 1i), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, -19509i, u_input.d.x, -2147483647i)), 1i), _wgslsmith_f_op_vec3_f32(global3.wwy + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.yyx)), global3.xyw)));
}

